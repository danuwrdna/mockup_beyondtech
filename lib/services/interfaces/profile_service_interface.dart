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
import 'package:bpay_mobile/widgets/social_media_widget/model/helpdesk_response_model.dart';

abstract class ProfileServiceInterface {
  // Future<ApiResponse<ProfileResponseModel>> getProfile(String token);

  // Future<ApiResponse<UserValidationResponseModel>> getUserValidationStatus(
  //   String token,
  // );

  // Future<ApiResponse<BalanceResponseModel>> getUserBalance(String token);

  Future<ApiResponse<PhoneNumberResponseModel>> getPhoneNumber(String token);

  Future<ApiResponse<GetProfileResponseModel>> getProfileData(String token);

  Future<ApiResponse<GetUserReferralResponseModel>> getReferral(String token);

  Future<ApiResponse<ChangeProfilePictureResponseModel>> changeProfilePicture({
    required String token,
    required String base64Image,
  });

  Future<ApiResponse<TermAndConditionResponseModel>> termAndConditionList({
    required String token,
    String? category,
    String? id,
    String? isWithImage,
  });

  Future<ApiResponse<TermAndConditionDetailResponseModel>> termAndConditionDetail({
    required String token,
    required String id,
  });

  Future<ApiResponse<HelpdeskResponseModel>> getHelpdeskList({
    required String token,
  });
}
