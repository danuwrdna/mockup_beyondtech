import 'package:bpay_mobile/src/auth_forgot_password/otp_verification/bloc/forgot_pass_bloc.dart';
import 'package:bpay_mobile/src/auth_forgot_password/phone_verification/bloc/phone_verif_bloc.dart';
import 'package:bpay_mobile/src/auth_forgot_password/reset_password/bloc/reset_pass_bloc.dart';
import 'package:bpay_mobile/src/auth_login/bloc/login_bloc.dart';
import 'package:bpay_mobile/src/auth_register/create_account/bloc/check_email_username/check_email_username_bloc.dart';
import 'package:bpay_mobile/src/auth_register/create_account/bloc/referral/referral_bloc.dart';
import 'package:bpay_mobile/src/auth_register/create_pin/bloc/register_send_otp_initial_bloc.dart';
import 'package:bpay_mobile/src/auth_register/otp_verification/bloc/register/register_bloc.dart';
import 'package:bpay_mobile/src/auth_register/otp_verification/bloc/send_otp_sms/send_otp_sms_bloc.dart';
import 'package:bpay_mobile/src/auth_register/otp_verification/bloc/send_otp_whatsapp/register_send_otp_whatsapp_bloc.dart';
import 'package:bpay_mobile/src/auth_register/otp_verification/bloc/verify_otp_sms/register_verify_otp_sms_bloc.dart';
import 'package:bpay_mobile/src/auth_register/otp_verification/bloc/verify_otp_whatsapp/register_verify_otp_whatsapp_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_1/bloc/step_1_id_card_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/city_regency/city_regency_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/current_city_regency/current_city_regency_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/current_district/current_district_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/current_province/current_province_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/district/district_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/province/province_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/bloc/id_card_verification/id_card_verification_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/bloc/id_card_verification_phone_number/id_card_verification_phone_number_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/passport/form/bloc/city_regency/passport_city_regency_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/passport/form/bloc/district/passport_district_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/passport/form/bloc/province/passport_province_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/passport/passport_photo/bloc/passport_verification_bloc.dart';
import 'package:bpay_mobile/src/balance_top_up/bloc/balance_top_up_bloc.dart';
import 'package:bpay_mobile/src/balance_top_up/checkout/bloc/transaction_checkout_balance_bloc.dart';
import 'package:bpay_mobile/src/boarding/cubit/boarding/boarding_cubit.dart';
import 'package:bpay_mobile/src/auth_register_check/bloc/check_register_bloc.dart';
import 'package:bpay_mobile/src/boarding/models/locale_enum.dart';
import 'package:bpay_mobile/src/enter_pin_dialog/bloc/check_pin_general_bloc.dart';
import 'package:bpay_mobile/src/navigation/cubit/navigation_cubit.dart';
import 'package:bpay_mobile/src/navigation_history/bloc/bloc/transaction_history_bloc.dart';
import 'package:bpay_mobile/src/navigation_history/bloc/detail_transaction/bloc/detail_transaction_bloc.dart';
import 'package:bpay_mobile/src/navigation_home/blocs/balance/balance_bloc.dart';
import 'package:bpay_mobile/src/navigation_home/blocs/profile/profile_bloc.dart';
import 'package:bpay_mobile/src/navigation_home/blocs/user_validation/user_validation_bloc.dart';
import 'package:bpay_mobile/src/navigation_notification/bloc/inbox/bloc/notify_inbox_bloc.dart';
import 'package:bpay_mobile/src/navigation_notification/bloc/notify-info/bloc/notify_info_bloc.dart';
import 'package:bpay_mobile/src/navigation_notification/bloc/tnc/bloc/promo_detail_bloc.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/change_profile_picture/change_profile_picture_bloc.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/logout/logout_bloc.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/profile/get_profile_bloc.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/user_referral/get_user_referral_bloc.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/user_validation/profile_user_validation_bloc.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/bloc/payment_method_bloc.dart';
import 'package:bpay_mobile/src/ppob_bpjs/detail/bloc/bpjs_detail_bloc.dart';
import 'package:bpay_mobile/src/ppob_bpjs/detail/transaction/bloc/bpjs_transaction_bloc.dart';
import 'package:bpay_mobile/src/ppob_bpjs/input/bloc/bpjs_inquiry_postpaid_bloc.dart';
import 'package:bpay_mobile/src/ppob_bpjs/package/bloc/ppob_bpjs_package_bloc.dart';
import 'package:bpay_mobile/src/ppob_bpjs/product/bloc/ppob_bpjs_product_bloc.dart';
import 'package:bpay_mobile/src/ppob_bpjs/success/bloc/bpjs_status_bloc.dart';
import 'package:bpay_mobile/src/ppob_e_wallet/detail/bloc/detail/e_wallet_detail_bloc.dart';
import 'package:bpay_mobile/src/ppob_e_wallet/detail/bloc/transaction/e_wallet_transaction_bloc.dart';
import 'package:bpay_mobile/src/ppob_e_wallet/package/bloc/e_wallet_package_bloc.dart';
import 'package:bpay_mobile/src/ppob_e_wallet/status/bloc/e_wallet_status_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/detail/bloc/detail/electricity_detail_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/detail/bloc/transaction/electricity_transaction_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/package/bloc/package/electricity_package_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/status/bloc/electricity_status_bloc.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/billing/bloc/internet_tv_inquiry_bloc.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/billing/package/bloc/internet_tv_package_bloc.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/detail/detail/bloc/internet_tv_detail_bloc.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/detail/transaction/bloc/internet_tv_transaction_bloc.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/menu/bloc/internet_tv_list_bloc.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/status/bloc/internet_tv_status_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/detail/bloc/detail/phone_data_detail_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/detail/bloc/transaction/phone_data_transaction_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/package/bloc/mobile_data/phone_data_package_data_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/package/bloc/phone_credit/phone_data_package_credit_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/status/bloc/phone_data_status_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/billing/bloc/phone_postpaid_inquiry_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/detail/detail/bloc/phone_postpaid_detail_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/detail/transaction/bloc/phone_postpaid_transaction_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/menu/bloc/phone_postpaid_package_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/status/bloc/phone_postpaid_status_bloc.dart';
import 'package:bpay_mobile/src/ppob_water_bills/detail/bloc/water_bills_detail_bloc.dart';
import 'package:bpay_mobile/src/ppob_water_bills/detail/transaction/bloc/water_bills_transaction_bloc.dart';
import 'package:bpay_mobile/src/ppob_water_bills/menu/bloc/water_bills_package_bloc.dart';
import 'package:bpay_mobile/src/ppob_water_bills/status/bloc/water_bills_status_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bcare_message/bcare_get_message/bloc/bcare_get_message_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bcare_message/bcare_post_message/bloc/bcare_post_message_bloc.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bloc/bcare_chat_customer_service_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/change_password_form/bloc/check_password/check_password_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/change_password_form/bloc/phone_number/check_password_phone_number_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/change_password_form/bloc/send_otp_initial/change_password_send_otp_initial_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/otp_verification/bloc/change_password/change_password_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/otp_verification/bloc/send_otp_sms/change_password_send_otp_sms_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/otp_verification/bloc/send_otp_whatsapp/change_password_send_otp_whatsapp_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/otp_verification/bloc/verify_otp_sms/change_password_verify_otp_sms_bloc.dart';
import 'package:bpay_mobile/src/profile_change_password/otp_verification/bloc/verify_otp_whatsapp/change_password_verify_otp_whatsapp_bloc.dart';
import 'package:bpay_mobile/src/profile_change_pin/change_pin_form/bloc/check_pin/check_pin_bloc.dart';
import 'package:bpay_mobile/src/profile_change_pin/change_pin_form/bloc/phone_number/check_pin_phone_number_bloc.dart';
import 'package:bpay_mobile/src/profile_change_pin/change_pin_form/bloc/send_otp_initial/change_pin_send_otp_initial_bloc.dart';
import 'package:bpay_mobile/src/profile_change_pin/otp_pin_verification/bloc/change_pin/change_pin_bloc.dart';
import 'package:bpay_mobile/src/profile_change_pin/otp_pin_verification/bloc/send_otp_sms/change_pin_send_otp_sms_bloc.dart';
import 'package:bpay_mobile/src/profile_change_pin/otp_pin_verification/bloc/send_otp_whatsapp/change_pin_send_otp_whatsapp_bloc.dart';
import 'package:bpay_mobile/src/profile_change_pin/otp_pin_verification/bloc/verify_otp_sms/change_pin_verify_otp_sms_bloc.dart';
import 'package:bpay_mobile/src/profile_change_pin/otp_pin_verification/bloc/verify_otp_whatsapp/change_pin_verify_otp_whatsapp_bloc.dart';
import 'package:bpay_mobile/src/splash/cubit/splash_cubit.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/src/splash/views/splash_page.dart';
import 'package:bpay_mobile/src/transfer_balance/bloc/get_recent_transaction_bloc/bloc/get_recent_transaction_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/bloc/get_recipient_list/bloc/get_recipient_list_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/bloc/remove_recipient/bloc/remove_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/bloc/verify_recipient/bloc/verify_phone_number_send_balance_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/detail/bloc/detail/detail_transfer_balance_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/detail/bloc/save_recipient/bloc/save_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/detail/bloc/transfer_balance/bloc/transfer_balance_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/bloc/bank_list/multi_transfer_bank_list_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/bloc/recent_transaction/multi_transfer_recent_transaction_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/bloc/recipient_list/multi_transfer_recipient_list_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/bloc/remove_recipient/multi_transfer_remove_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/destination/bloc/verify_recipient/multi_transfer_verify_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/detail/bloc/detail/multi_transfer_detail_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/detail/bloc/save_recipient/multi_transfer_save_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/detail/bloc/transfer_multi/transfer_multi_bloc.dart';
import 'package:bpay_mobile/src/transfer_multi/status/bloc/status/multi_transfer_status_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/additional_details/bloc/transfer_remittance_additional_detail_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/destination/bloc/country_list/remittance_country_list_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/destination/bloc/exchange_rate/remittance_exchange_rate_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/destination/bloc/service_options/remittance_service_options_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/bloc/detail/remittance_detail_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/bloc/payment_method/remittance_payment_method_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/bloc/transaction/remittance_transaction_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/status/bloc/remittance_status_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/destination/bloc/bank_list/single_transfer_bank_list_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/destination/bloc/recent_transaction/single_transfer_recent_transaction_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/destination/bloc/recipient_list/single_transfer_recipient_list_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/destination/bloc/remove_recipient/single_transfer_remove_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/destination/bloc/verify_recipient/single_transfer_verify_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/detail/bloc/detail/transfer_single_detail_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/detail/bloc/save_recipient/single_transfer_save_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/detail/bloc/transfer_single/transfer_single_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/status/bloc/status/single_transfer_status_bloc.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/error_handler.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SharedPreferencesService.init();
  // await dotenv.load(fileName: ".env.example");
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale(LocaleEnum.id.name),
        Locale(LocaleEnum.en.name),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale(LocaleEnum.id.name),
      saveLocale: true,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        
        BlocProvider(create: (context) => SplashCubit()..init()),
        BlocProvider(create: (context) => BoardingCubit()),
        // BlocProvider(create: (context) => CheckRegisterBloc()),
        BlocProvider(create: (context) => NavigationCubit()),
        // BlocProvider(create: (context) => ReferralBloc()),
        // BlocProvider(create: (context) => CheckEmailUsernameBloc()),
        // BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => LogoutBloc()),
        // BlocProvider(create: (context) => RegisterBloc()),
        BlocProvider(create: (context) => PaymentMethodBloc()),
        // BlocProvider(create: (context) => BalanceBloc()),
        // BlocProvider(create: (context) => ProfileBloc()),
        // BlocProvider(create: (context) => ChangeProfilePictureBloc()),
        // BlocProvider(create: (context) => UserValidationBloc()),
        // BlocProvider(create: (context) => CheckPasswordBloc()),
        BlocProvider(create: (context) => ChangePasswordBloc()),
        // BlocProvider(create: (context) => CheckPinBloc()),
        BlocProvider(create: (context) => ChangePinBloc()),
        // BlocProvider(create: (context) => ProfileUserValidationBloc()),
        BlocProvider(create: (context) => Step1IdCardBloc()),
        BlocProvider(create: (context) => ProvinceBloc()),
        BlocProvider(create: (context) => CityRegencyBloc()),
        BlocProvider(create: (context) => DistrictBloc()),
        BlocProvider(create: (context) => CurrentProvinceBloc()),
        BlocProvider(create: (context) => CurrentCityRegencyBloc()),
        BlocProvider(create: (context) => CurrentDistrictBloc()),
        // BlocProvider(create: (context) => IdCardVerificationBloc()),
        BlocProvider(create: (context) => IdCardVerificationPhoneNumberBloc()),
        // BlocProvider(create: (context) => BcareChatCustomerServiceBloc()),
        BlocProvider(create: (context) => BcareGetMessageBloc()),
        BlocProvider(create: (context) => BcarePostMessageBloc()),
        BlocProvider(create: (context) => PassportProvinceBloc()),
        BlocProvider(create: (context) => PassportCityRegencyBloc()),
        BlocProvider(create: (context) => PassportDistrictBloc()),
        // BlocProvider(create: (context) => PassportVerificationBloc()),
        BlocProvider(create: (context) => RegisterSendOtpInitialBloc()),
        BlocProvider(create: (context) => SendOtpSmsBloc()),
        // BlocProvider(create: (context) => BalanceTopUpBloc()),
        // BlocProvider(create: (context) => TransactionCheckoutBalanceBloc()),
        BlocProvider(create: (context) => RegisterVerifyOtpSmsBloc()),
        BlocProvider(create: (context) => RegisterSendOtpWhatsappBloc()),
        BlocProvider(create: (context) => RegisterVerifyOtpWhatsappBloc()),
        // BlocProvider(create: (context) => CheckPasswordPhoneNumberBloc()),
        // BlocProvider(create: (context) => ChangePasswordSendOtpInitialBloc()),
        BlocProvider(create: (context) => ChangePasswordSendOtpSmsBloc()),
        BlocProvider(create: (context) => ChangePasswordVerifyOtpSmsBloc()),
        BlocProvider(create: (context) => ChangePasswordSendOtpWhatsappBloc()),
        BlocProvider(
          create: (context) => ChangePasswordVerifyOtpWhatsappBloc(),
        ),
        // BlocProvider(creRate: (context) => CheckPinPhoneNumberBloc()),
        BlocProvider(create: (context) => ChangePinSendOtpInitialBloc()),
        BlocProvider(create: (context) => ChangePinSendOtpSmsBloc()),
        BlocProvider(create: (context) => ChangePinVerifyOtpSmsBloc()),
        BlocProvider(create: (context) => ChangePinSendOtpWhatsappBloc()),
        BlocProvider(create: (context) => ChangePinVerifyOtpWhatsappBloc()),
        // BlocProvider(create: (context) => GetProfileBloc()),
        // BlocProvider(create: (context) => GetUserReferralBloc()),
        // BlocProvider(
        //   create: (context) => SingleTransferRecentTransactionBloc(),
        // ),
        // BlocProvider(create: (context) => SingleTransferRecipientListBloc()),
        // BlocProvider(create: (context) => SingleTransferRemoveRecipientBloc()),
        // BlocProvider(create: (context) => SingleTransferBankListBloc()),
        // BlocProvider(create: (context) => SingleTransferVerifyRecipientBloc()),
        BlocProvider(create: (context) => TransferSingleDetailBloc()),
        BlocProvider(create: (context) => TransferSingleBloc()),
        BlocProvider(create: (context) => SingleTransferSaveRecipientBloc()),
        BlocProvider(create: (context) => SingleTransferStatusBloc()),
        // BlocProvider(create: (context) => CheckPinGeneralBloc()),
        // BlocProvider(create: (context) => MultiTransferRecentTransactionBloc()),
        // BlocProvider(create: (context) => MultiTransferRecipientListBloc()),
        // BlocProvider(create: (context) => MultiTransferRemoveRecipientBloc()),
        // BlocProvider(create: (context) => MultiTransferBankListBloc()),
        BlocProvider(create: (context) => MultiTransferVerifyRecipientBloc()),
        BlocProvider(create: (context) => MultiTransferDetailBloc()),
        BlocProvider(create: (context) => MultiTransferSaveRecipientBloc()),
        BlocProvider(create: (context) => TransferMultiBloc()),
        BlocProvider(create: (context) => MultiTransferStatusBloc()),
        // BlocProvider(create: (context) => RemittanceCountryListBloc()),
        // BlocProvider(create: (context) => RemittanceServiceOptionsBloc()),
        // BlocProvider(create: (context) => RemittanceExchangeRateBloc()),
        // BlocProvider(create: (context) => GetRecentTransactionBloc()),
        // BlocProvider(create: (context) => GetRecipientListBloc()),
        // BlocProvider(create: (context) => RemoveRecipientBloc()),
        BlocProvider(create: (context) => VerifyPhoneNumberSendBalanceBloc()),
        BlocProvider(create: (context) => TransferBalanceBloc()),
        BlocProvider(create: (context) => SaveRecipientBloc()),
        BlocProvider(create: (context) => DetailTransferBalanceBloc()),
        // BlocProvider(create: (context) => TransactionHistoryBloc()),
        // BlocProvider(create: (context) => EWalletPackageBloc()),
        BlocProvider(create: (context) => EWalletDetailBloc()),
        // BlocProvider(create: (context) => NotifyInfoBloc()),
        // BlocProvider(create: (context) => NotifyInboxBloc()),
        BlocProvider(create: (context) => PromoDetailBloc()),
        BlocProvider(create: (context) => EWalletTransactionBloc()),
        BlocProvider(create: (context) => EWalletStatusBloc()),
        // BlocProvider(create: (context) => PhoneDataPackageCreditBloc()),
        // BlocProvider(create: (context) => PhoneDataPackageDataBloc()),
        BlocProvider(create: (context) => PhoneDataDetailBloc()),
        BlocProvider(create: (context) => PhoneDataTransactionBloc()),
        BlocProvider(create: (context) => PhoneDataStatusBloc()),
        BlocProvider(create: (context) => ElectricityPackageBloc()),
        BlocProvider(create: (context) => ElectricityDetailBloc()),
        BlocProvider(create: (context) => ElectricityTransactionBloc()),
        BlocProvider(create: (context) => ElectricityStatusBloc()),
        BlocProvider(create: (context) => WaterBillsPackageBloc()),
        BlocProvider(create: (context) => RemittancePaymentMethodBloc()),
        BlocProvider(create: (context) => RemittanceDetailBloc()),
        BlocProvider(create: (context) => RemittanceTransactionBloc()),
        BlocProvider(create: (context) => RemittanceStatusBloc()),
        BlocProvider(
          create: (context) => TransferRemittanceAdditionalDetailBloc(),
        ),
        BlocProvider(create: (context) => DetailTransactionBloc()),
        BlocProvider(create: (context) => PpobBpjsProductBloc()),
        BlocProvider(create: (context) => PpobBpjsPackageBloc()),
        // BlocProvider(create: (context) => BpjsInquiryPostpaidBloc()),
        BlocProvider(create: (context) => BpjsStatusBloc()),
        BlocProvider(create: (context) => BpjsDetailBloc()),
        BlocProvider(create: (context) => BpjsTransactionBloc()),
        BlocProvider(create: (context) => WaterBillsPackageBloc()),
        BlocProvider(create: (context) => WaterBillsDetailBloc()),
        BlocProvider(create: (context) => WaterBillsTransactionBloc()),
        BlocProvider(create: (context) => WaterBillsStatusBloc()),
        BlocProvider(create: (context) => InternetTvListBloc()),
        BlocProvider(create: (context) => InternetTvInquiryBloc()),
        BlocProvider(create: (context) => InternetTvDetailBloc()),
        BlocProvider(create: (context) => InternetTvTransactionBloc()),
        BlocProvider(create: (context) => InternetTvStatusBloc()),
        BlocProvider(create: (context) => InternetTvPackageBloc()),
        BlocProvider(create: (context) => PhonePostpaidInquiryBloc()),
        BlocProvider(create: (context) => PhonePostpaidPackageBloc()),
        BlocProvider(create: (context) => PhonePostpaidDetailBloc()),
        BlocProvider(create: (context) => PhonePostpaidTransactionBloc()),
        BlocProvider(create: (context) => PhonePostpaidStatusBloc()),
        // BlocProvider(create: (context) => ForgotPassBloc()),
        // BlocProvider(create: (context) => PhoneVerifBloc()),
        // BlocProvider(create: (context) => ResetPassBloc()),
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          title: 'Payment App',
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
            useMaterial3: true,
            colorScheme: const ColorScheme.light(
              primary: ColorResource.primary,
              onPrimary: ColorResource.onPrimary,
              surface: ColorResource.white,
              onSurface: ColorResource.black100,
            ),
          ),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          home: const SplashPage(),
        );
      }),
    );
  }
}
