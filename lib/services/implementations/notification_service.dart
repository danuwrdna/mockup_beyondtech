import 'package:bpay_mobile/services/interfaces/notification_service_interface.dart';
import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/notification/notify_inbox_response_model.dart';
import 'package:bpay_mobile/services/models/notification/notify_info_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/error_handler.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NotificationService implements NotificationServiceInterface {
  final Dio dio = Dio(BaseOptions(
    baseUrl: "${dotenv.env[ENVConst.baseUrl]}/"
        "${dotenv.env[ENVConst.apiVersion]}/"
        "${dotenv.env[ENVConst.profileUrl]}/"
        "${dotenv.env[ENVConst.notification]}/",
  ));

  NotificationService() {
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
  Future<ApiResponse<NotifyInfoResponse>> getNotify(
    String token,
    int page,
    int limit,
  ) async {
    Map<String, dynamic> params = {
      "page": page,
      "limit": limit,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get("/notify-info",
          queryParameters: params,
          options: Options(headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          }));
      final notify = NotifyInfoResponse.fromJson(response.data);
      return ApiResponse.success(notify);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<InboxResponse>> getInbox(
    String token,
    int page,
    int limit,
  ) async {
    Map<String, dynamic> params = {
      "page": page,
      "limit": limit,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get("/inbox",
          queryParameters: params,
          options: Options(headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          }));
      final inbox = InboxResponse.fromJson(response.data);
      return ApiResponse.success(inbox);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }
}
