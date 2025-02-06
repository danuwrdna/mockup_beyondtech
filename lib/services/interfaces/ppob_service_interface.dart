import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/product/ppob_product_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';

abstract class PpobServiceInterface {
  Future<ApiResponse<PpobPackageResponseModel>> getPpobPackage(
    String token,
    String productId,
  );

  Future<ApiResponse<PpobProductResponseModel>> getPpobProduct(String token);

  Future<ApiResponse<PpobTransactionResponseModel>> ppobTransaction({
    required String token,
    required String packageId,
    required String denominationId,
    required String productType,
    required String costumerNumber,
    required String paymentCode,
    String? pin,
    String? isBiometricValid,
  });

  Future<ApiResponse<InquiryPostpaidResponseModel>> postPaidInquiry({
    required String token,
    required String productId,
    required String packageId,
    required String denomId,
    required String customerNumber,
  });
}
