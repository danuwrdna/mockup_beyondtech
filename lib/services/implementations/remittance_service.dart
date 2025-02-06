import 'package:bpay_mobile/services/interfaces/remittance_service_interface.dart';
import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail/country_detail_response_model.dart';
import 'package:bpay_mobile/services/models/remittance/get_country_list_response_model.dart';
import 'package:bpay_mobile/services/models/remittance/get_exchange_rate_response_model.dart';
import 'package:bpay_mobile/services/models/remittance/get_service_options_response_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/additional_details/models/transfer_remittance_additional_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/detail/remittance_detail_response_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/transaction/remittance_transaction_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/error_handler.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RemittanceService implements RemittanceServiceInterface {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "${dotenv.env[ENVConst.baseUrl]}/"
          "${dotenv.env[ENVConst.apiVersion]}/"
          "${dotenv.env[ENVConst.transactionUrl]}/"
          "${dotenv.env[ENVConst.remittanceUrl]}/",
    ),
  );

  RemittanceService() {
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
  Future<ApiResponse<GetCountryListResponseModel>> getCountryList(
    String token,
  ) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/countries",
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = GetCountryListResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<GetServiceOptionsResponseModel>> getServiceOptions(
    String token,
    String countryCode,
  ) async {
    Map<String, String> param = {"destination_country_code": countryCode};
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/service-options",
        queryParameters: param,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = GetServiceOptionsResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<GetExchangeRateResponseModel>> getExchangeRate(
    String token,
    String senderCountryCode,
    String senderCurrencyCode,
    String recipientCountryCode,
    String recipientCurrencyCode,
    String serviceOptionCode,
  ) async {
    Map<String, String> body = {
      "sender_country_code": senderCountryCode,
      "sender_currency_code": senderCurrencyCode,
      "recepient_country_code": recipientCountryCode,
      "recepient_currency_code": recipientCurrencyCode,
      "service_option_code": serviceOptionCode,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/fx-rates",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = GetExchangeRateResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<TransferRemittanceAdditionalResponse>> getEnumeration(
      String token, String destination_country_code) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );
    Map<String, String> param = {
      "field": "OCCUPATION",
      "destination_country_code": destination_country_code
    };

    try {
      Response response = await dio.get(
        "/enumeration",
        queryParameters: param,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model =
          TransferRemittanceAdditionalResponse.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<RemittanceCountryDetailResponseModel>> getCountryDetail(
    String token,
    String countryCodeIso3,
  ) async {
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.get(
        "/countries/$countryCodeIso3",
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model =
          RemittanceCountryDetailResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
  Future<ApiResponse<RemittanceDetailResponseModel>> getTransactionDetail(
    String token,
    CountryDetailModel senderCountryDetail,
    CountryDetailModel receiverCountryDetail,
    int amount,
    String serviceOptionCode,
    String serviceOptionRoutingCode,
  ) async {
    Map<String, dynamic> body = {
      "destination": {
        "country_code": receiverCountryDetail.countryCodeIso3,
        "country_sub_division": receiverCountryDetail.countrySubDivision,
        "currency_code": receiverCountryDetail.currencyCode,
      },
      "sender": {
        "country_code": senderCountryDetail.countryCodeIso3,
        "country_sub_division": senderCountryDetail.countrySubDivision,
        "currency_code": senderCountryDetail.currencyCode,
      },
      "amount": {
        "send_amount": amount,
      },
      "service_option": {
        "service_option_code": serviceOptionCode,
        "service_option_routing_code": serviceOptionRoutingCode,
      }
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/quote",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = RemittanceDetailResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }

  @override
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
  ) async {
    Map<String, dynamic> body = {
      "payment_channel_code": paymentCode,
      if (pin != null && pin.isNotEmpty) "pin": pin,
      "customer_type": "CUSTOMER",
      "sender": {
        "country_code": senderCountryDetail.countryCodeIso3,
        "currency_code": senderCountryDetail.currencyCode,
        "dial_country_code": senderCountryDetail.dialCountryCode,
      },
      "destination": {
        "country_code": receiverCountryDetail.countryCodeIso3,
        "country_sub_division_code": receiverCountryDetail.countrySubDivision,
        "currency_code": receiverCountryDetail.currencyCode,
        "dial_country_code": receiverCountryDetail.dialCountryCode,
      },
      "amount": {
        "send_amount": amount,
      },
      "service_option": {
        "code": serviceOptionCode,
        "routing_code": serviceOptionRoutingCode,
      },
      "additional_fields": fields["fields"].map((field) {
        return {
          "key": field["key"],
          "data_type": field["data_type"],
          "value": fieldsControllers[field["key"]]?.text.trim(),
        };
      }).toList(),
      "additional_information": {
        "purpose_of_transaction": purposeOfTransaction,
        "source_of_fund": sourceOfFunds,
      },
      "is_biometric_valid": isBiometricValid,
    };
    DateTime time = DateTime.now().toLocal();
    String xSignature = createXSignature(
      bodyValues: mapToSlashedString(body),
      time: time,
      secretKey: dotenv.env[ENVConst.xSignatureSecretKey],
    );

    try {
      Response response = await dio.post(
        "/disbursement",
        data: body,
        options: Options(
          headers: {
            "API-KEY-GEN": dotenv.env[ENVConst.apiKeyGen],
            "X-SIGNATURE": xSignature,
            "X-TIMESTAMP": toIso8601String(time),
            "Authorization": "Bearer $token",
          },
        ),
      );
      final model = RemittanceTransactionResponseModel.fromJson(response.data);
      return ApiResponse.success(model);
    } catch (e) {
      if (e is DioException) {
        return ErrorHandler.handleException(e);
      }
      return ApiResponse.error(e.toString());
    }
  }
}
