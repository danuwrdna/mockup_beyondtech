import 'package:bpay_mobile/services/interfaces/transaction_service_interface.dart';
import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/transaction/detail_transaction/detail_transaction_response_model.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_checkout/ppob_checkout_response_model.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_transaction_detail/ppob_transaction_detail_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/src/balance_top_up/models/balance_top_up_response_model.dart';
import 'package:bpay_mobile/src/balance_top_up/models/transaction_checkout_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/error_handler.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class TransactionService implements TransactionServiceInterface {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "${dotenv.env[ENVConst.baseUrl]}/"
          "${dotenv.env[ENVConst.apiVersion]}/"
          "${dotenv.env[ENVConst.transactionUrl]}/",
    ),
  );

  TransactionService() {
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
  Future<ApiResponse<PaymentMethodListResponseModel>> getPaymentMethodList(
    String token,
    int nominal,
  ) async {
    Map<String, int> body = {"amount": nominal};
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/payment-channel",
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
      final model = PaymentMethodListResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<BalanceTopUpResponseModel>> getBalanceTopUp(
    String token,
    int nominal,
    String paymentMethodCode,
  ) async {
    Map<String, dynamic> body = {
      "nominal": nominal,
      "payment_method_code": paymentMethodCode,
    };

    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/balance",
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
      final model = BalanceTopUpResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<TransactionCheckoutResponseModel>> getTransactionCheckout(
    String token,
    String paymentChannelCode,
    TransactionType transactionType,
    int nominal,
  ) async {
    Map<String, dynamic> body = {
      "payment_channel_code": paymentChannelCode,
      "transaction_type": transactionType.value,
      "nominal": nominal,
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

      final model = TransactionCheckoutResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<PpobCheckoutResponseModel>> getPpobDetail(
    String token,
    String paymentChannelCode,
    TransactionType transactionType,
    int nominal,
  ) async {
    Map<String, dynamic> body = {
      "payment_channel_code": paymentChannelCode,
      "transaction_type": transactionType.value,
      "nominal": nominal,
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

      final model = PpobCheckoutResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<PpobTransactionDetailResponseModel>>
      getPpobTransactionDetail(
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

      final model = PpobTransactionDetailResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<DetailTransactionResponseModel>> getTransactionDetail(
    String token,
    String transactionId,
    String boundaryType,
    int createdAt
  ) async {
    Map<String, dynamic> params = {
      "boundary_type": boundaryType,
      "last_date": createdAt,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get("$transactionId/history-transaction",
          queryParameters: params,
          options: Options(headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          }));

      final model = DetailTransactionResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }
}
