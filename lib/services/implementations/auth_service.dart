// import 'package:bpay_mobile/services/interfaces/auth_service_interface.dart';
// import 'package:bpay_mobile/services/models/api_response.dart';
// import 'package:bpay_mobile/services/models/auth/check_pin_response_model.dart';
// import 'package:bpay_mobile/services/models/auth/forgot-password/forgot_password/forgot_password_response.dart';
// import 'package:bpay_mobile/services/models/auth/forgot-password/reset-password/reset_password_response.dart';
// import 'package:bpay_mobile/services/models/auth/forgot-password/token-reset/token_reset_validation_response.dart';
// import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/id_card_verification_data_model.dart';
// import 'package:bpay_mobile/src/auth_verification/id_card/step_3/models/id_card_verification_response_model.dart';
// import 'package:bpay_mobile/src/auth_verification/passport/passport_photo/models/passport_verification_response_model.dart';
// import 'package:bpay_mobile/src/auth_verification/passport/summary/models/passport_verification_data_model.dart';
// import 'package:bpay_mobile/src/navigation_profile/models/logout/logout_response_model.dart';
// import 'package:bpay_mobile/src/profile_change_password/change_password_form/models/check_password_response_model.dart';
// import 'package:bpay_mobile/src/auth_login/models/login_response_model.dart';
// import 'package:bpay_mobile/src/auth_register/create_account/models/check_email_username_response_model.dart';
// import 'package:bpay_mobile/src/auth_register/create_account/models/find_referral_response_model.dart';
// import 'package:bpay_mobile/src/auth_register/otp_verification/model/register_response_model.dart';
// import 'package:bpay_mobile/src/auth_register_check/models/sign_check_response_model.dart';
// import 'package:bpay_mobile/src/profile_change_password/otp_verification/models/change_password_response_model.dart';
// import 'package:bpay_mobile/src/profile_change_pin/change_pin_form/models/change_pin_response_model.dart';
// import 'package:bpay_mobile/utils/constants.dart';
// import 'package:bpay_mobile/utils/error_handler.dart';
// import 'package:bpay_mobile/utils/helper.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:intl/intl.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// class AuthService implements AuthServiceInterface {
//   final Dio dio = Dio(
//     BaseOptions(
//       baseUrl: "${dotenv.env[ENVConst.baseUrl]}/"
//           "${dotenv.env[ENVConst.apiVersion]}/"
//           "${dotenv.env[ENVConst.authUrl]}",
//     ),
//   );

//   AuthService() {
//     if (kDebugMode) {
//       dio.interceptors.add(PrettyDioLogger(
//         request: true,
//         requestHeader: true,
//         requestBody: true,
//         responseHeader: true,
//         responseBody: true,
//         error: true,
//       ));
//     }
//   }

//   @override
//   Future<ApiResponse<SignCheckResponseModel>> getIsPhoneNumberRegistered(
//     String phoneNumber,
//   ) async {
//     Map<String, String> params = {
//       "phone_number": phoneNumber,
//       "expect_phone_number": "n",
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       paramValues: params.entries.map((e) => e.value).join("/"),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );
//     try {
//       Response response = await dio.get(
//         "/find-phone-number",
//         queryParameters: params,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//           },
//         ),
//       );
//       final user = SignCheckResponseModel.fromJson(response.data);
//       return ApiResponse.success(user);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<FindReferralResponseModel>> findReferral(
//     String referralCode,
//   ) async {
//     Map<String, String> params = {
//       "referral_code": referralCode,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       paramValues: params.entries.map((e) => e.value).join("/"),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.get(
//         "/find-referral",
//         queryParameters: params,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//           },
//         ),
//       );
//       final user = FindReferralResponseModel.fromJson(response.data);
//       return ApiResponse.success(user);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<CheckEmailUsernameResponseModel>> checkEmailUsername(
//     String email,
//     String username,
//   ) async {
//     Map<String, String> params = {
//       "email": email,
//       "username": username,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       paramValues: params.entries.map((e) => e.value).join("/"),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.get(
//         "/check-email-username",
//         queryParameters: params,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//           },
//         ),
//       );
//       final user = CheckEmailUsernameResponseModel.fromJson(response.data);
//       return ApiResponse.success(user);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<LoginResponseModel>> login(
//     String emailOrPhone,
//     String password,
//     String ipAddress,
//     String location,
//     String deviceModel,
//     String osName,
//     String loginAt,
//   ) async {
//     Map<String, String> body = {
//       "email_or_phone_number": emailOrPhone,
//       "Password": password,
//       "ip_address": ipAddress,
//       "location": location,
//       "device": deviceModel,
//       "os": osName,
//       "login_at": loginAt,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       bodyValues: body.entries.map((e) => e.value).join("/"),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.post(
//         "/login",
//         data: body,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//           },
//         ),
//       );
//       final model = LoginResponseModel.fromJson(response.data);
//       return ApiResponse.success(model);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<RegisterResponseModel>> register(
//     String email,
//     String username,
//     String password,
//     String phoneNumber,
//     String pin,
//     String? referralCode,
//     String ipAddress,
//     String location,
//     String deviceModel,
//     String osName,
//     String loginAt,
//   ) async {
//     Map<String, String> body = {
//       "Email": email,
//       "username": username,
//       "Password": password,
//       "Phone_number": phoneNumber,
//       "phone_number_valid": "y",
//       "pin": pin,
//       "referral_code": referralCode ?? "",
//       "ip_address": ipAddress,
//       "location": location,
//       "device": deviceModel,
//       "os": osName,
//       "login_at": loginAt,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       bodyValues: mapToSlashedString(body),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.post(
//         "/sign-up",
//         data: body,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//           },
//         ),
//       );
//       final model = RegisterResponseModel.fromJson(response.data);
//       return ApiResponse.success(model);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<CheckPasswordResponseModel>> checkPassword(
//     String token,
//     String lastPassword,
//     String newPassword,
//   ) async {
//     Map<String, String> params = {
//       "last_password": lastPassword,
//       "new_password": newPassword,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       paramValues: mapToSlashedString(params),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.get(
//         "/check-data-password",
//         queryParameters: params,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//             "Authorization": "Bearer $token"
//           },
//         ),
//       );
//       final password = CheckPasswordResponseModel.fromJson(response.data);
//       return ApiResponse.success(password);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<ChangePasswordResponseModel>> changePassword(
//     String token,
//     String lastPassword,
//     String newPassword,
//   ) async {
//     Map<String, String> body = {
//       "last_password": lastPassword,
//       "new_password": newPassword,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       paramValues: mapToSlashedString(body),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.patch(
//         "/change-password",
//         data: body,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//             "Authorization": "Bearer $token"
//           },
//         ),
//       );
//       final password = ChangePasswordResponseModel.fromJson(response.data);
//       return ApiResponse.success(password);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<ChangePinResponseModel>> checkPin(
//     String token,
//     String currentPin,
//   ) async {
//     Map<String, String> params = {
//       "current_pin": currentPin,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       paramValues: mapToSlashedString(params),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.get(
//         "/check-pin",
//         queryParameters: params,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//             "Authorization": "Bearer $token"
//           },
//         ),
//       );
//       final pin = ChangePinResponseModel.fromJson(response.data);
//       return ApiResponse.success(pin);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<ChangePinResponseModel>> changePin(
//     String token,
//     String lastPin,
//     String newPin,
//   ) async {
//     Map<String, String> body = {
//       "last_pin": lastPin,
//       "new_pin": newPin,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       paramValues: mapToSlashedString(body),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.patch(
//         "/change-pin",
//         data: body,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//             "Authorization": "Bearer $token"
//           },
//         ),
//       );
//       final pin = ChangePinResponseModel.fromJson(response.data);
//       return ApiResponse.success(pin);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<IdCardVerificationResponseModel>> idCardVerification(
//     String phoneNumber,
//     String token,
//     IdCardVerificationDataModel data,
//     String idCardImage,
//     String idCardSelfieImage,
//   ) async {
//     Map<String, String> body = {
//       "phone_number": phoneNumber,
//       "identity_category": "KTP",
//       "fullname": data.fullName,
//       "nik": data.nik,
//       "gender": data.gender,
//       "place_of_birth": data.placeOfBirth,
//       "date_of_birth": data.dateOfBirth,
//       "nationality": data.nationality,
//       "marital_status": data.maritalStatus,
//       "religion": data.religion,
//       "country": data.ktpCountry,
//       "province": data.ktpProvince,
//       "city": data.ktpCityRegency,
//       "district": data.ktpDistrict,
//       "address": data.ktpAddress,
//       "current_country": data.currentCountry,
//       "current_province": data.currentProvince,
//       "current_city": data.currentCityRegency,
//       "current_district": data.currentDistrict,
//       "current_address": data.currentAddress,
//       "is_current_address_identity": data.isCurrentAddressMatch,
//       "identity_image_url": idCardImage,
//       "face_identity_image_url": idCardSelfieImage,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       bodyValues: mapToSlashedString(body),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.post(
//         "/create-user-identity-ktp",
//         data: body,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//             "Authorization": "Bearer $token"
//           },
//         ),
//       );
//       final model = IdCardVerificationResponseModel.fromJson(response.data);
//       return ApiResponse.success(model);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<PassportVerificationResponseModel>> passportVerification(
//     String token,
//     PassportVerificationDataModel data,
//     String passportImage,
//   ) async {
//     Map<String, String> body = {
//       "fullname": data.fullName,
//       "paspor_number": data.passportNumber,
//       "paspor_type": data.passportType,
//       "country_code": data.countryCode,
//       "nationality": data.nationality,
//       "gender": data.gender,
//       "place_of_birth": data.placeOfBirth,
//       "date_of_birth": DateFormat("yyyy-MM-dd")
//           .format(DateFormat("dd-MM-yyyy").parse(data.dateOfBirth)),
//       "date_of_issue": DateFormat("yyyy-MM-dd")
//           .format(DateFormat("dd-MM-yyyy").parse(data.dateOfIssue)),
//       "date_of_expire": DateFormat("yyyy-MM-dd")
//           .format(DateFormat("dd-MM-yyyy").parse(data.dateOfBirth)),
//       "issuing_office": data.placeOfIssue,
//       "current_country": data.currentCountry,
//       "current_province": data.currentProvince,
//       "current_city": data.currentCityRegency,
//       "current_district": data.currentDistrict,
//       "current_address": data.currentAddress,
//       "paspor_image": passportImage,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       bodyValues: mapToSlashedString(body),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.post(
//         "/create-user-identity-paspor",
//         data: body,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//             "Authorization": "Bearer $token"
//           },
//         ),
//       );
//       final model = PassportVerificationResponseModel.fromJson(response.data);
//       return ApiResponse.success(model);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<CheckPinResponseModel>> checkPinGeneral(
//     String token,
//     String pin,
//   ) async {
//     Map<String, String> param = {"current_pin": pin};
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       paramValues: pin,
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );

//     try {
//       Response response = await dio.get(
//         "/check-pin",
//         queryParameters: param,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//             "Authorization": "Bearer $token"
//           },
//         ),
//       );
//       final pin = CheckPinResponseModel.fromJson(response.data);
//       return ApiResponse.success(pin);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<LogoutResponse>> logout(
//     String token,
//   ) async {
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );
//     try {
//       Response response = await dio.post(
//         "/logout",
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//             "Authorization": "Bearer $token",
//           },
//         ),
//       );

//       final logout = LogoutResponse.fromJson(response.data);
//       return ApiResponse.success(logout);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//  @override
// Future<ApiResponse<ForgotPasswordResponse>> forgotPassword(
//   String token,
//   String phoneNumber,
// ) async {
//   Map<String, dynamic> body = {
//     "phone_number": phoneNumber,
//   };

//   DateTime time = DateTime.now().toLocal();
//   String xSignature = createXSignature(
//     bodyValues: phoneNumber, 
//     time: time,
//     secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//   );

//   try {
//     Response response = await dio.post(
//       "/forgot-password",
//       data: body, // Kirimkan data sebagai JSON
//       options: Options(
//         headers: {
//           "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//           "X-SIGNATURE": xSignature,
//           "X-TIMESTAMP": toIso8601String(time),
//         },
//       ),
//     );

//     final forgotPassword = ForgotPasswordResponse.fromJson(response.data);
//     return ApiResponse.success(forgotPassword);
//   } catch (e) {
//     if (e is DioException) {
//       return ErrorHandler.handleException(e);
//     }
//     return ApiResponse.error(e.toString());
//   }
// }


//   @override
//   Future<ApiResponse<TokenResetValidationResponse>> passwordResetToken(
//     String token,
//     String resetToken
//   ) async {
//     Map<String, dynamic> body = {
//       "token" : resetToken
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       bodyValues: mapToSlashedString(body),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );
//     try {
//       Response response = await dio.post(
//         "/token-reset-validation",
//         data: body    ,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//             "Authorization": "Bearer $token",
//           },
//         ),
//       );

//       final tokenReset = TokenResetValidationResponse.fromJson(response.data);
//       return ApiResponse.success(tokenReset);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }

//   @override
//   Future<ApiResponse<ResetPasswordResponse>> resetPassword(
//     String token,
//     String resetToken,
//     String newPassword,
//     String confirmPassword,
//   ) async {
//     Map<String, dynamic> body = {
//       "token" : resetToken,
//       "new_password" : newPassword,
//       "confirm_password" : confirmPassword,
//     };
//     DateTime time = DateTime.now().toLocal();
//     String xSignature = createXSignature(
//       bodyValues: mapToSlashedString(body),
//       time: time,
//       secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
//     );
//     try {
//       Response response = await dio.patch(
//         "/reset-password",
//         data: body,
//         options: Options(
//           headers: {
//             "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
//             "X-SIGNATURE": xSignature,
//             "X-TIMESTAMP": toIso8601String(time),
//             "Authorization": "Bearer $token",
//           },
//         ),
//       );

//       final resetPassword = ResetPasswordResponse.fromJson(response.data);
//       return ApiResponse.success(resetPassword);
//     } catch (e) {
//       if (e is DioException) {
//         return ErrorHandler.handleException(e);
//       }
//       return ApiResponse.error(e.toString());
//     }
//   }
// }
