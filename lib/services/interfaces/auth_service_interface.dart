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

// abstract class AuthServiceInterface {
//   Future<ApiResponse<SignCheckResponseModel>> getIsPhoneNumberRegistered(
//     String phoneNumber,
//   );

//   Future<ApiResponse<FindReferralResponseModel>> findReferral(
//     String referralCode,
//   );

//   Future<ApiResponse<CheckEmailUsernameResponseModel>> checkEmailUsername(
//     String email,
//     String username,
//   );

//   Future<ApiResponse<LoginResponseModel>> login(
//     String emailOrPhone,
//     String password,
//     String ipAddress,
//     String location,
//     String deviceModel,
//     String osName,
//     String loginAt,
//   );

//   Future<ApiResponse<LogoutResponse>> logout(
//     String token,
//   );

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
//   );

//   Future<ApiResponse<CheckPasswordResponseModel>> checkPassword(
//     String token,
//     String lastPassword,
//     String newPassword,
//   );

//   Future<ApiResponse<ChangePasswordResponseModel>> changePassword(
//     String token,
//     String lastPassword,
//     String newPassword,
//   );

//   Future<ApiResponse<ChangePinResponseModel>> checkPin(
//     String token,
//     String currentPin,
//   );

//   Future<ApiResponse<ChangePinResponseModel>> changePin(
//     String token,
//     String lastPin,
//     String newPin,
//   );

//   Future<ApiResponse<IdCardVerificationResponseModel>> idCardVerification(
//     String phoneNumber,
//     String token,
//     IdCardVerificationDataModel data,
//     String idCardImage,
//     String idCardSelfieImage,
//   );

//   Future<ApiResponse<PassportVerificationResponseModel>> passportVerification(
//     String token,
//     PassportVerificationDataModel data,
//     String passportImage,
//   );

//   Future<ApiResponse<CheckPinResponseModel>> checkPinGeneral(
//     String token,
//     String pin,
//   );

//   Future<ApiResponse<ForgotPasswordResponse>> forgotPassword(
//     String token,
//     String phoneNumber
//   );

//   Future<ApiResponse<TokenResetValidationResponse>> passwordResetToken(
//     String token,
//     String resetToken
//   );

//   Future<ApiResponse<ResetPasswordResponse>> resetPassword(
//     String token,
//     String resetToken,
//     String newPassword,
//     String confirmPassword
//   );
// }
