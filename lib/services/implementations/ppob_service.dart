import 'package:bpay_mobile/services/interfaces/ppob_service_interface.dart';
import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/dio_helper.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/product/ppob_product_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/error_handler.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class PpobService implements PpobServiceInterface {
  final Dio dio;

  PpobService()
      : dio = DioHelper.createDio(
          "${dotenv.env[ENVConst.baseUrl]}/"
          "${dotenv.env[ENVConst.apiVersion]}/"
          "${dotenv.env[ENVConst.transactionUrl]}/"
          "${dotenv.env[ENVConst.ppobUrl]}",
        );

  @override
  Future<ApiResponse<PpobPackageResponseModel>> getPpobPackage(
    String token,
    String productId,
  ) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/$productId/packages",
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final user = PpobPackageResponseModel.fromJson(response.data);
      return ApiResponse.success(user);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  Future<ApiResponse<PpobPackageResponseModel>> getPpobPostpaidPackage(
    String token,
    String productId,
  ) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/$productId/packages",
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final user = PpobPackageResponseModel.fromJson(response.data);
      return ApiResponse.success(user);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<PpobProductResponseModel>> getPpobProduct(
    String token,
  ) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/products",
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final user = PpobProductResponseModel.fromJson(response.data);
      return ApiResponse.success(user);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<PpobTransactionResponseModel>> ppobTransaction({
    required String token,
    required String packageId,
    required String denominationId,
    required String productType,
    required String costumerNumber,
    required String paymentCode,
    String? isBiometricValid,
    String? pin,
  }) async {
    Map<String, String> body = {
      "package_id": packageId,
      "denom_id": denominationId,
      "product_type": productType,
      "customer_number": costumerNumber,
      "payment_method_code": paymentCode,
      if (pin != null && pin.isNotEmpty) "pin": pin,
      "is_biometric_valid": isBiometricValid ?? "",
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/transaction/ppob",
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
      final user = PpobTransactionResponseModel.fromJson(response.data);
      return ApiResponse.success(user);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<InquiryPostpaidResponseModel>> postPaidInquiry({
    required String token,
    required String productId,
    required String packageId,
    required String denomId,
    required String customerNumber,
  }) async {
    Map<String, String> body = {
      "product_id": productId,
      "package_id": packageId,
      "denom_id": denomId,
      "customer_no": customerNumber,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );
    try {
      Response response = await dio.post(
        "/postpaid/inquiry",
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
      final postpaid = InquiryPostpaidResponseModel.fromJson(response.data);
      return ApiResponse.success(postpaid);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }
}
