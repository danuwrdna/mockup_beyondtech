import 'package:bpay_mobile/services/interfaces/verihubs_service_interface.dart';
import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/verihubs/send_otp_sms_response_model.dart';
import 'package:bpay_mobile/services/models/verihubs/send_otp_whatsapp_response_model.dart';
import 'package:bpay_mobile/services/models/verihubs/verify_otp_sms_response_model.dart';
import 'package:bpay_mobile/services/models/verihubs/verify_otp_whatsapp_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_1/model/ocr_ktp_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/error_handler.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class VerihubsService implements VerihubsServiceInterface {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "${dotenv.env[ENVConst.baseUrl]}/"
          "${dotenv.env[ENVConst.apiVersion]}/"
          "${dotenv.env[ENVConst.verihubsUrl]}",
    ),
  );

  VerihubsService() {
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
  Future<ApiResponse<OcrKtpResponseModel>> extractKtpData(
    String base64Image,
  ) async {
    Map<String, String> body = {"image": base64Image};
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/ocr-Ktp",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
          },
        ),
      );
      final model = OcrKtpResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<SendOtpSmsResponseModel>> sendOtpSms(
    String phoneNumber,
    String timeLimitSeconds,
  ) async {
    Map<String, String> body = {
      "m_msisdn": phoneNumber,
      "time_limit": timeLimitSeconds,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/send-otp-sms",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
          },
        ),
      );
      final model = SendOtpSmsResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<VerifyOtpSmsResponseModel>> verifyOtpSms(
    String phoneNumber,
    String otpCode,
  ) async {
    Map<String, String> body = {
      "m_msisdn": phoneNumber,
      "m_otp": otpCode,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/verify-otp-sms",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
          },
        ),
      );
      final model = VerifyOtpSmsResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<SendOtpWhatsappResponseModel>> sendOtpWhatsapp(
    String phoneNumber,
    String timeLimitSeconds,
  ) async {
    Map<String, String> body = {
      "m_msisdn": phoneNumber,
      "time_limit": timeLimitSeconds,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/send-otp-whatsapp",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
          },
        ),
      );
      final model = SendOtpWhatsappResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<VerifyOtpWhatsappResponseModel>> verifyOtpWhatsapp(
    String phoneNumber,
    String otpCode,
  ) async {
    Map<String, String> body = {
      "m_msisdn": phoneNumber,
      "m_otp": otpCode,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/verify-otp-whatsapp",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
          },
        ),
      );
      final model = VerifyOtpWhatsappResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }
}
