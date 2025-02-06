import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/verihubs/send_otp_sms_response_model.dart';
import 'package:bpay_mobile/services/models/verihubs/send_otp_whatsapp_response_model.dart';
import 'package:bpay_mobile/services/models/verihubs/verify_otp_sms_response_model.dart';
import 'package:bpay_mobile/services/models/verihubs/verify_otp_whatsapp_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_1/model/ocr_ktp_response_model.dart';

abstract class VerihubsServiceInterface {
  Future<ApiResponse<OcrKtpResponseModel>> extractKtpData(String base64Image);

  Future<ApiResponse<SendOtpSmsResponseModel>> sendOtpSms(
    String phoneNumber,
    String timeLimitSeconds,
  );

  Future<ApiResponse<VerifyOtpSmsResponseModel>> verifyOtpSms(
    String phoneNumber,
    String otpCode,
  );

  Future<ApiResponse<SendOtpWhatsappResponseModel>> sendOtpWhatsapp(
    String phoneNumber,
    String timeLimitSeconds,
  );

  Future<ApiResponse<VerifyOtpWhatsappResponseModel>> verifyOtpWhatsapp(
    String phoneNumber,
    String otpCode,
  );
}
