import 'package:bpay_mobile/services/interfaces/transfer_single_service_interface.dart';
import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_status_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_detail_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/transfer_balance/detail/models/transfer_balance_models.dart';
import 'package:bpay_mobile/src/transfer_remittance/status/model/remittance_transaction_detail_response_model.dart';
import 'package:bpay_mobile/src/transfer_single/status/model/detail_history_transfer_single_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/error_handler.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class TransferSingleService implements TransferSingleServiceInterface {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "${dotenv.env[ENVConst.baseUrl]}/"
          "${dotenv.env[ENVConst.apiVersion]}/"
          "${dotenv.env[ENVConst.transactionUrl]}/",
    ),
  );

  TransferSingleService() {
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ));
    }
  }

  @override
  Future<ApiResponse<HistoryTransferSingleResponseModel>>
      getSingleTransferHistory(
    String token,
    HistoryBoundaryType boundaryType,
    TransactionStatus? transactionStatus,
    int fromDate,
  ) async {
    Map<String, String> params = {
      "boundary_type": boundaryType.value,
      if (transactionStatus != null)
        "status_transaction": transactionStatus.value,
      "last_date": fromDate.toString(),
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/history-transactions",
        queryParameters: params,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );

      final model = HistoryTransferSingleResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<DestinationBankListResponseModel>> getBankList(
    String token,
  ) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/disbursement/banks",
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = DestinationBankListResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<VerifyRecipientResponseModel>> verifyRecipient(
    String token,
    String bankCode,
    String accountNumber,
    TransactionType featureCode,
  ) async {
    Map<String, dynamic> body = {
      "bank_code": bankCode,
      "account_number": accountNumber,
      "feature_code": featureCode.value,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/recepient/verify",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = VerifyRecipientResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<TransferSingleDetailResponseModel>>
      getSingleTransferDetail(
    String token,
    String paymentCode,
    TransactionType transactionType,
    RecipientPayloadItemModel recipientPayload,
  ) async {
    Map<String, dynamic> body = {
      "payment_channel_code": paymentCode,
      "transaction_type": transactionType.value,
      "recepients": [
        {
          "nominal": recipientPayload.amount,
          "bank_code": recipientPayload.bankCode,
          "account_number": recipientPayload.accountNumber
        },
      ]
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/checkout",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = TransferSingleDetailResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<TransferSingleResponseModel>> transferSingleBankAccount(
    String token,
    String paymentCode,
    String? pin,
    RecipientPayloadItemModel destinationPayload,
    String isBiometricValid,
  ) async {
    Map<String, dynamic> body = {
      "payment_channel_code": paymentCode,
      if (paymentCode.toLowerCase() == "balance") "pin": pin,
      if (pin != null && pin.isNotEmpty) "pin": pin,
      "destinations": [
        {
          "bank_code": destinationPayload.bankCode,
          if (destinationPayload.note?.isNotEmpty ?? false)
            "note": destinationPayload.note,
          "amount": destinationPayload.amount,
          "account_number": destinationPayload.accountNumber,
        }
      ],
      "is_biometric_valid": isBiometricValid,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/bank",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = TransferSingleResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<TransferSingleDetailResponseModel>> getMultiTransferDetail(
    String token,
    String paymentCode,
    TransactionType transactionType,
    List<RecipientPayloadItemModel> recipients,
  ) async {
    Map<String, dynamic> body = {
      "payment_channel_code": paymentCode,
      "transaction_type": transactionType.value,
      "recepients": recipients
          .map((recipientPayload) => {
                "nominal": recipientPayload.amount,
                "bank_code": recipientPayload.bankCode,
                "account_number": recipientPayload.accountNumber
              })
          .toList(),
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/checkout",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = TransferSingleDetailResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<TransferSingleResponseModel>> transferMultiBankAccount(
    String token,
    String paymentCode,
    String? pin,
    List<RecipientPayloadItemModel> destinations,
    String isBiometricValid
  ) async {
    Map<String, dynamic> body = {
      "payment_channel_code": paymentCode,
      if (paymentCode.toLowerCase() == "balance") "pin": pin,
      "destinations": destinations
          .map((destinationPayload) => {
                "bank_code": destinationPayload.bankCode,
                if (destinationPayload.note?.isNotEmpty ?? false)
                  "note": destinationPayload.note,
                "amount": destinationPayload.amount,
                "account_number": destinationPayload.accountNumber,
              })
          .toList(),
      "is_biometric_valid": isBiometricValid,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/bank",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = TransferSingleResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<VerifyRecipientResponseModel>> verifySendBalanceRecipient(
    String token,
    String accountNumber,
    TransactionType featureCode,
  ) async {
    Map<String, dynamic> body = {
      "account_number": accountNumber,
      "feature_code": featureCode.value,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/recepient/verify",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = VerifyRecipientResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<TransferBalanceResponseModel>> transferBeyond(
    String token,
    int nominal,
    String? pin,
    String? notes,
    String recipientPhoneNumber,
    String isBiometricValid,
  ) async {
    Map<String, dynamic> body = {
      "nominal": nominal,
      if (pin != null && pin.isNotEmpty) "pin": pin,
      "recepient_phone_number": recipientPhoneNumber,
      "is_biometric_valid": isBiometricValid,
    };
    if (notes != null && notes.isNotEmpty) {
      body["notes"] = notes;
    }
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    Logger().d(body);
    Logger().d(mapToSlashedString(body));
   

    
    try {
      Response response = await dio.post("/beyond",
          data: body,
          options: Options(headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          }));
      final model = TransferBalanceResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      } else {
        return ApiResponse.error(e.toString());
      }
    }
  }

  @override
  Future<ApiResponse<HistoryTransferSingleResponseModel>>
      getBankTransferTransactionStatus(
    String token,
    String refId,
  ) async {
    Map<String, String> params = {"ref_id": refId};
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/history-transactions",
        queryParameters: params,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = HistoryTransferSingleResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<DetailHistoryTransferSingleResponse>>
      getBankTransferTransactionHistory(
    String token,
    String transactionId,
    int lastDate,
  ) async {
    DateTime time = DateTime.now().toLocal();

    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    Map<String, String> params = {
      "boundary_type": 'OUTBOND',
      "last_date": lastDate.toString(),
    };

    try {
      Response response = await dio.get(
        "$transactionId/history-transaction",
        queryParameters: params,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = DetailHistoryTransferSingleResponse.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<HistoryTransferSingleResponseModel>> getHistoryTransaction(
    String token,
    HistoryBoundaryType? boundaryType,
    int limit,
  ) async {
    Map<String, dynamic> params = {
      "boundary_type": boundaryType?.value,
      "limit": limit,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/history-transactions",
        queryParameters: params,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );

      final history =
          HistoryTransferSingleResponseModel.fromJson(response.data);
      return ApiResponse.success(history);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<RemittanceTransactionDetailResponseModel>>
      getRemittanceTransactionDetail(
    String token,
    String transactionId,
    HistoryBoundaryType boundaryType,
    int lastDate,
  ) async {
    Map<String, dynamic> params = {
      "boundary_type": boundaryType.value,
      "last_date": lastDate,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "$transactionId/history-transaction",
        queryParameters: params,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );

      final model =
          RemittanceTransactionDetailResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }
}
