import 'package:bpay_mobile/services/interfaces/promo_detail_service_interface.dart';
import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/notification/notify_promo_detail_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/error_handler.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class PromoDetailService implements PromoDetailServiceInterface {
  final Dio dio = Dio(BaseOptions(
      baseUrl: "${dotenv.env[ENVConst.baseUrl]}/"
          "${dotenv.env[ENVConst.apiVersion]}/"));

  PromoDetailService() {
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
  Future<ApiResponse<NotifyPromoDetailModel>> getPromoDetail(
    String token,
    String url,
  ) async {
    final splitted = url.split("/");
    final urlId = splitted[splitted.length - 1];

    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      paramValues: urlId,
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        url,
        options: Options(headers: {
          "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
          "X-SIGNATURE": xSignature,
          "X-TIMESTAMP": toIso8601String(time),
          "Authorization": "Bearer $token",
        }),
      );

      final promoDetail = NotifyPromoDetailModel.fromJson(response.data);
      return ApiResponse.success(promoDetail);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }
}
