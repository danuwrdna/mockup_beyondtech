import 'package:bpay_mobile/services/interfaces/profile_service_interface.dart';
import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/profile/term_and_condition/term_and_condition_response_model.dart';
import 'package:bpay_mobile/services/models/profile/term_and_condition_detail/term_and_condition_detail_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/models/phone_number_response_model.dart';
import 'package:bpay_mobile/src/navigation_home/models/balance_response_model.dart';
import 'package:bpay_mobile/src/navigation_home/models/profile_response_model.dart';
import 'package:bpay_mobile/src/navigation_home/models/user_validation_response_model.dart';
import 'package:bpay_mobile/src/navigation_profile/models/change_profile_picture/change_profile_picture_response_model.dart';
import 'package:bpay_mobile/src/navigation_profile/models/get_profile/get_profile_models.dart';
import 'package:bpay_mobile/src/navigation_profile/models/get_user/get_user_referral_models.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/error_handler.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/social_media_widget/model/helpdesk_response_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ProfileService implements ProfileServiceInterface {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "${dotenv.env[ENVConst.baseUrl]}/"
          "${dotenv.env[ENVConst.apiVersion]}/"
          "${dotenv.env[ENVConst.profileUrl]}",
    ),
  );

  ProfileService() {
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

  // @override
  // Future<ApiResponse<ProfileResponseModel>> getProfile(String token) async {
  //   DateTime time = DateTime.now().toLocal();
  //   String xSignature = createXSignature(
  //     time: time,
  //     secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
  //   );

  //   try {
  //     Response response = await dio.get(
  //       "/summary-profile",
  //       options: Options(
  //         headers: {
  //           "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
  //           "X-SIGNATURE": xSignature,
  //           "X-TIMESTAMP": toIso8601String(time),
  //           "Authorization": "Bearer $token"
  //         },
  //       ),
  //     );
  //     final user = ProfileResponseModel.fromJson(response.data);
  //     return ApiResponse.success(user);
  //   } catch (e) {
  //     if (e is DioException) {
  //       return ErrorHandler.handleException(e);
  //     }
  //     return ApiResponse.error(e.toString());
  //   }
  // }

  // @override
  // Future<ApiResponse<UserValidationResponseModel>> getUserValidationStatus(
  //   String token,
  // ) async {
  //   DateTime time = DateTime.now().toLocal();
  //   String xSignature = createXSignature(
  //     time: time,
  //     secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
  //   );

  //   try {
  //     Response response = await dio.get(
  //       "/user-validation",
  //       options: Options(
  //         headers: {
  //           "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
  //           "X-SIGNATURE": xSignature,
  //           "X-TIMESTAMP": toIso8601String(time),
  //           "Authorization": "Bearer $token"
  //         },
  //       ),
  //     );
  //     final user = UserValidationResponseModel.fromJson(response.data);
  //     return ApiResponse.success(user);
  //   } catch (e) {
  //     if (e is DioException) {
  //       return ErrorHandler.handleException(e);
  //     }
  //     return ApiResponse.error(e.toString());
  //   }
  // }

  // @override
  // Future<ApiResponse<BalanceResponseModel>> getUserBalance(String token) async {
  //   DateTime time = DateTime.now().toLocal();
  //   String xSignature = createXSignature(
  //     time: time,
  //     secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
  //   );

  //   try {
  //     Response response = await dio.get(
  //       "/balance",
  //       options: Options(
  //         headers: {
  //           "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
  //           "X-SIGNATURE": xSignature,
  //           "X-TIMESTAMP": toIso8601String(time),
  //           "Authorization": "Bearer $token"
  //         },
  //       ),
  //     );
  //     final user = BalanceResponseModel.fromJson(response.data);
  //     return ApiResponse.success(user);
  //   } catch (e) {
  //     if (e is DioException) {
  //       return ErrorHandler.handleException(e);
  //     }
  //     return ApiResponse.error(e.toString());
  //   }
  // }

  @override
  Future<ApiResponse<PhoneNumberResponseModel>> getPhoneNumber(
    String token,
  ) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/phone-number",
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final user = PhoneNumberResponseModel.fromJson(response.data);
      return ApiResponse.success(user);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<GetProfileResponseModel>> getProfileData(
    String token,
  ) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get("/me",
          options: Options(headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          }));
      final profile = GetProfileResponseModel.fromJson(response.data);
      return ApiResponse.success(profile);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<GetUserReferralResponseModel>> getReferral(
    String token,
  ) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );
    try {
      Response response = await dio.get("/user-referral",
          options: Options(headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          }));
      final profile = GetUserReferralResponseModel.fromJson(response.data);
      return ApiResponse.success(profile);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<ChangeProfilePictureResponseModel>> changeProfilePicture({
    required String token,
    required String base64Image,
  }) async {
    Map<String, String> body = {"photo": base64Image};
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );
    try {
      Response response = await dio.patch(
        "/photo-profile",
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
      final data = ChangeProfilePictureResponseModel.fromJson(response.data);
      return ApiResponse.success(data);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<TermAndConditionDetailResponseModel>> termAndConditionDetail({
    required String token,
    required String id,
  }) async {
    Map<String, String> params = {"id": id};
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );
    try {
      Response response = await dio.get(
        "/term-and-condition",
        queryParameters: params,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final data = TermAndConditionDetailResponseModel.fromJson(response.data);
      return ApiResponse.success(data);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<TermAndConditionResponseModel>> termAndConditionList({
    required String token,
    String? category,
    String? id,
    String? isWithImage,
  }) async {
    Map<String, String> params = {
      if (category != null) "category": category,
      if (id != null) "id": id,
      if (isWithImage != null) "is_image": isWithImage,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );
    try {
      Response response = await dio.get(
        "/term-and-condition",
        queryParameters: params,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final data = TermAndConditionResponseModel.fromJson(response.data);
      return ApiResponse.success(data);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<HelpdeskResponseModel>> getHelpdeskList({
    required String token,
  }) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );
    try {
      Response response = await dio.get(
        "/helpdesk",
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token"
          },
        ),
      );
      final data = HelpdeskResponseModel.fromJson(response.data);
      return ApiResponse.success(data);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }
}
