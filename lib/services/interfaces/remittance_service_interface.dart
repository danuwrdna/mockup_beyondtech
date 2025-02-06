import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail/country_detail_response_model.dart';
import 'package:bpay_mobile/services/models/remittance/get_country_list_response_model.dart';
import 'package:bpay_mobile/services/models/remittance/get_exchange_rate_response_model.dart';
import 'package:bpay_mobile/services/models/remittance/get_service_options_response_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/additional_details/models/transfer_remittance_additional_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/detail/remittance_detail_response_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/transaction/remittance_transaction_response_model.dart';
import 'package:flutter/material.dart';

abstract class RemittanceServiceInterface {
  Future<ApiResponse<GetCountryListResponseModel>> getCountryList(String token);

  Future<ApiResponse<GetServiceOptionsResponseModel>> getServiceOptions(
    String token,
    String countryCode,
  );

  Future<ApiResponse<GetExchangeRateResponseModel>> getExchangeRate(
    String token,
    String senderCountryCode,
    String senderCurrencyCode,
    String recipientCountryCode,
    String recipientCurrencyCode,
    String serviceOptionCode,
  );

  Future<ApiResponse<TransferRemittanceAdditionalResponse>> getEnumeration(
      String token, String destination_country_code);

  Future<ApiResponse<RemittanceCountryDetailResponseModel>> getCountryDetail(
    String token,
    String countryCodeIso3,
  );

  Future<ApiResponse<RemittanceDetailResponseModel>> getTransactionDetail(
    String token,
    CountryDetailModel senderCountryDetail,
    CountryDetailModel receiverCountryDetail,
    int amount,
    String serviceOptionCode,
    String serviceOptionRoutingCode,
  );

  Future<ApiResponse<RemittanceTransactionResponseModel>> remittanceTransaction(
    String token,
    CountryDetailModel senderCountryDetail,
    CountryDetailModel receiverCountryDetail,
    int amount,
    String serviceOptionCode,
    String serviceOptionRoutingCode,
    Map<String, dynamic> fields,
    Map<String, TextEditingController> fieldsControllers,
    String purposeOfTransaction,
    String sourceOfFunds,
    String paymentCode,
    String? pin,
    String isBiometricValid,
  );
}
