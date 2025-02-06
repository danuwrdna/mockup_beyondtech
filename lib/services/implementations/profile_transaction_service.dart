import 'package:bpay_mobile/services/interfaces/profile_transaction_service_interface.dart';
import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/profile_transaction/get_recipient_list_response_model.dart';
import 'package:bpay_mobile/services/models/profile_transaction/save_recipient_response_model.dart';
import 'package:bpay_mobile/services/models/profile_transaction/update_recipient_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/error_handler.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ProfileTransactionService implements ProfileTransactionServiceInterface {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "${dotenv.env[ENVConst.baseUrl]}/"
          "${dotenv.env[ENVConst.apiVersion]}/"
          "${dotenv.env[ENVConst.profileUrl]}/"
          "${dotenv.env[ENVConst.profileTransactionUrl]}",
    ),
  );

  ProfileTransactionService() {
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
  Future<ApiResponse<GetRecipientListResponseModel>> getRecipientList(
    String token,
  ) async {
    Map<String, String> param = {"is_saved": "y"};
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      paramValues: "y",
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/recipient",
        queryParameters: param,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final user = GetRecipientListResponseModel.fromJson(response.data);
      return ApiResponse.success(user);
    } catch (e) {
      if (e is DioException) return ErrorHandler.handleException(e);
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<UpdateRecipientResponseModel>> updateRecipient(
    String token,
    String recipientId,
    String saveState,
  ) async {
    Map<String, String> body = {
      "recipient_id": recipientId,
      "is_saved": saveState,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.patch(
        "/recipient",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final user = UpdateRecipientResponseModel.fromJson(response.data);
      return ApiResponse.success(user);
    } catch (e) {
      if (e is DioException) return ErrorHandler.handleException(e);
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<SaveRecipientResponseModel>> saveRecipient(
    String token,
    String bankCode,
    TransactionType transferType,
    String accountNumber,
    String recipientName,
  ) async {
    Map<String, String> body = {
      "bank_code": bankCode,
      "transfer_type": transferType.value,
      "account_number": accountNumber,
      "recipient_name": recipientName,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/recipient",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final user = SaveRecipientResponseModel.fromJson(response.data);
      return ApiResponse.success(user);
    } catch (e) {
      if (e is DioException) return ErrorHandler.handleException(e);
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<SaveRecipientResponseModel>> saveBalanceRecipient(
    String token,
    TransactionType transferType,
    String accountNumber,
    String recipientName,
  ) async {
    Map<String, String> body = {
      "transfer_type": transferType.value,
      "account_number": accountNumber,
      "recipient_name": recipientName,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/recipient",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final user = SaveRecipientResponseModel.fromJson(response.data);
      return ApiResponse.success(user);
    } catch (e) {
      if (e is DioException) return ErrorHandler.handleException(e);
      return ApiResponse.error(e.toString());
    }
  }
}
