import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/city_regency_list_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/district_list_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/province_list_response_model.dart';

abstract class AddressServiceInterface {
  Future<ApiResponse<ProvinceListResponseModel>> getProvince();

  Future<ApiResponse<CityRegencyListResponseModel>> getCityRegency(
    String provinceId,
  );

  Future<ApiResponse<DistrictListResponseModel>> getDistrict(
    String cityRegencyId,
  );
}
