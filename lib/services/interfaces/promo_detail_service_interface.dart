import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/notification/notify_promo_detail_model.dart';

abstract class PromoDetailServiceInterface {
  Future<ApiResponse<NotifyPromoDetailModel>> getPromoDetail(
    String token,
    String url,
  );
}
