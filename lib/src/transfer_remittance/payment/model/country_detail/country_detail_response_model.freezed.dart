// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemittanceCountryDetailResponseModel
    _$RemittanceCountryDetailResponseModelFromJson(Map<String, dynamic> json) {
  return _RemittanceCountryDetailResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RemittanceCountryDetailResponseModel {
  @JsonKey(name: "data")
  RemittanceCountryDetailData get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this RemittanceCountryDetailResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceCountryDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceCountryDetailResponseModelCopyWith<
          RemittanceCountryDetailResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceCountryDetailResponseModelCopyWith<$Res> {
  factory $RemittanceCountryDetailResponseModelCopyWith(
          RemittanceCountryDetailResponseModel value,
          $Res Function(RemittanceCountryDetailResponseModel) then) =
      _$RemittanceCountryDetailResponseModelCopyWithImpl<$Res,
          RemittanceCountryDetailResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") RemittanceCountryDetailData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  $RemittanceCountryDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RemittanceCountryDetailResponseModelCopyWithImpl<$Res,
        $Val extends RemittanceCountryDetailResponseModel>
    implements $RemittanceCountryDetailResponseModelCopyWith<$Res> {
  _$RemittanceCountryDetailResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceCountryDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RemittanceCountryDetailData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of RemittanceCountryDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceCountryDetailDataCopyWith<$Res> get data {
    return $RemittanceCountryDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceCountryDetailResponseModelImplCopyWith<$Res>
    implements $RemittanceCountryDetailResponseModelCopyWith<$Res> {
  factory _$$RemittanceCountryDetailResponseModelImplCopyWith(
          _$RemittanceCountryDetailResponseModelImpl value,
          $Res Function(_$RemittanceCountryDetailResponseModelImpl) then) =
      __$$RemittanceCountryDetailResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") RemittanceCountryDetailData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  @override
  $RemittanceCountryDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RemittanceCountryDetailResponseModelImplCopyWithImpl<$Res>
    extends _$RemittanceCountryDetailResponseModelCopyWithImpl<$Res,
        _$RemittanceCountryDetailResponseModelImpl>
    implements _$$RemittanceCountryDetailResponseModelImplCopyWith<$Res> {
  __$$RemittanceCountryDetailResponseModelImplCopyWithImpl(
      _$RemittanceCountryDetailResponseModelImpl _value,
      $Res Function(_$RemittanceCountryDetailResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceCountryDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$RemittanceCountryDetailResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RemittanceCountryDetailData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceCountryDetailResponseModelImpl
    implements _RemittanceCountryDetailResponseModel {
  const _$RemittanceCountryDetailResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status_code") required this.statusCode});

  factory _$RemittanceCountryDetailResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceCountryDetailResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final RemittanceCountryDetailData data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "status_code")
  final String statusCode;

  @override
  String toString() {
    return 'RemittanceCountryDetailResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceCountryDetailResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of RemittanceCountryDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceCountryDetailResponseModelImplCopyWith<
          _$RemittanceCountryDetailResponseModelImpl>
      get copyWith => __$$RemittanceCountryDetailResponseModelImplCopyWithImpl<
          _$RemittanceCountryDetailResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceCountryDetailResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RemittanceCountryDetailResponseModel
    implements RemittanceCountryDetailResponseModel {
  const factory _RemittanceCountryDetailResponseModel(
      {@JsonKey(name: "data") required final RemittanceCountryDetailData data,
      @JsonKey(name: "message") required final String message,
      @JsonKey(name: "status_code")
      required final String
          statusCode}) = _$RemittanceCountryDetailResponseModelImpl;

  factory _RemittanceCountryDetailResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceCountryDetailResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  RemittanceCountryDetailData get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "status_code")
  String get statusCode;

  /// Create a copy of RemittanceCountryDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceCountryDetailResponseModelImplCopyWith<
          _$RemittanceCountryDetailResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceCountryDetailData _$RemittanceCountryDetailDataFromJson(
    Map<String, dynamic> json) {
  return _RemittanceCountryDetailData.fromJson(json);
}

/// @nodoc
mixin _$RemittanceCountryDetailData {
  @JsonKey(name: "country_code_iso2")
  String get countryCodeIso2 => throw _privateConstructorUsedError;
  @JsonKey(name: "country_code_iso3")
  String get countryCodeIso3 => throw _privateConstructorUsedError;
  @JsonKey(name: "country_name")
  String get countryName => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "indicative_rate_active")
  bool get indicativeRateActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_receive_active")
  bool get isReceiveActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_send_active")
  bool get isSendActive => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_dials")
  List<String> get phoneDials => throw _privateConstructorUsedError;
  @JsonKey(name: "receive_currencies")
  List<String> get receiveCurrencies => throw _privateConstructorUsedError;
  @JsonKey(name: "send_currency")
  List<String> get sendCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_country")
  List<RemittanceCountryDetailDataSubCountry> get subCountry =>
      throw _privateConstructorUsedError;

  /// Serializes this RemittanceCountryDetailData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceCountryDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceCountryDetailDataCopyWith<RemittanceCountryDetailData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceCountryDetailDataCopyWith<$Res> {
  factory $RemittanceCountryDetailDataCopyWith(
          RemittanceCountryDetailData value,
          $Res Function(RemittanceCountryDetailData) then) =
      _$RemittanceCountryDetailDataCopyWithImpl<$Res,
          RemittanceCountryDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: "country_code_iso2") String countryCodeIso2,
      @JsonKey(name: "country_code_iso3") String countryCodeIso3,
      @JsonKey(name: "country_name") String countryName,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "indicative_rate_active") bool indicativeRateActive,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "is_receive_active") bool isReceiveActive,
      @JsonKey(name: "is_send_active") bool isSendActive,
      @JsonKey(name: "phone_dials") List<String> phoneDials,
      @JsonKey(name: "receive_currencies") List<String> receiveCurrencies,
      @JsonKey(name: "send_currency") List<String> sendCurrency,
      @JsonKey(name: "sub_country")
      List<RemittanceCountryDetailDataSubCountry> subCountry});
}

/// @nodoc
class _$RemittanceCountryDetailDataCopyWithImpl<$Res,
        $Val extends RemittanceCountryDetailData>
    implements $RemittanceCountryDetailDataCopyWith<$Res> {
  _$RemittanceCountryDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceCountryDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCodeIso2 = null,
    Object? countryCodeIso3 = null,
    Object? countryName = null,
    Object? currencyCode = null,
    Object? indicativeRateActive = null,
    Object? isActive = null,
    Object? isReceiveActive = null,
    Object? isSendActive = null,
    Object? phoneDials = null,
    Object? receiveCurrencies = null,
    Object? sendCurrency = null,
    Object? subCountry = null,
  }) {
    return _then(_value.copyWith(
      countryCodeIso2: null == countryCodeIso2
          ? _value.countryCodeIso2
          : countryCodeIso2 // ignore: cast_nullable_to_non_nullable
              as String,
      countryCodeIso3: null == countryCodeIso3
          ? _value.countryCodeIso3
          : countryCodeIso3 // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      indicativeRateActive: null == indicativeRateActive
          ? _value.indicativeRateActive
          : indicativeRateActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isReceiveActive: null == isReceiveActive
          ? _value.isReceiveActive
          : isReceiveActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendActive: null == isSendActive
          ? _value.isSendActive
          : isSendActive // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneDials: null == phoneDials
          ? _value.phoneDials
          : phoneDials // ignore: cast_nullable_to_non_nullable
              as List<String>,
      receiveCurrencies: null == receiveCurrencies
          ? _value.receiveCurrencies
          : receiveCurrencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sendCurrency: null == sendCurrency
          ? _value.sendCurrency
          : sendCurrency // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subCountry: null == subCountry
          ? _value.subCountry
          : subCountry // ignore: cast_nullable_to_non_nullable
              as List<RemittanceCountryDetailDataSubCountry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemittanceCountryDetailDataImplCopyWith<$Res>
    implements $RemittanceCountryDetailDataCopyWith<$Res> {
  factory _$$RemittanceCountryDetailDataImplCopyWith(
          _$RemittanceCountryDetailDataImpl value,
          $Res Function(_$RemittanceCountryDetailDataImpl) then) =
      __$$RemittanceCountryDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country_code_iso2") String countryCodeIso2,
      @JsonKey(name: "country_code_iso3") String countryCodeIso3,
      @JsonKey(name: "country_name") String countryName,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "indicative_rate_active") bool indicativeRateActive,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "is_receive_active") bool isReceiveActive,
      @JsonKey(name: "is_send_active") bool isSendActive,
      @JsonKey(name: "phone_dials") List<String> phoneDials,
      @JsonKey(name: "receive_currencies") List<String> receiveCurrencies,
      @JsonKey(name: "send_currency") List<String> sendCurrency,
      @JsonKey(name: "sub_country")
      List<RemittanceCountryDetailDataSubCountry> subCountry});
}

/// @nodoc
class __$$RemittanceCountryDetailDataImplCopyWithImpl<$Res>
    extends _$RemittanceCountryDetailDataCopyWithImpl<$Res,
        _$RemittanceCountryDetailDataImpl>
    implements _$$RemittanceCountryDetailDataImplCopyWith<$Res> {
  __$$RemittanceCountryDetailDataImplCopyWithImpl(
      _$RemittanceCountryDetailDataImpl _value,
      $Res Function(_$RemittanceCountryDetailDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceCountryDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCodeIso2 = null,
    Object? countryCodeIso3 = null,
    Object? countryName = null,
    Object? currencyCode = null,
    Object? indicativeRateActive = null,
    Object? isActive = null,
    Object? isReceiveActive = null,
    Object? isSendActive = null,
    Object? phoneDials = null,
    Object? receiveCurrencies = null,
    Object? sendCurrency = null,
    Object? subCountry = null,
  }) {
    return _then(_$RemittanceCountryDetailDataImpl(
      countryCodeIso2: null == countryCodeIso2
          ? _value.countryCodeIso2
          : countryCodeIso2 // ignore: cast_nullable_to_non_nullable
              as String,
      countryCodeIso3: null == countryCodeIso3
          ? _value.countryCodeIso3
          : countryCodeIso3 // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      indicativeRateActive: null == indicativeRateActive
          ? _value.indicativeRateActive
          : indicativeRateActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isReceiveActive: null == isReceiveActive
          ? _value.isReceiveActive
          : isReceiveActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendActive: null == isSendActive
          ? _value.isSendActive
          : isSendActive // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneDials: null == phoneDials
          ? _value._phoneDials
          : phoneDials // ignore: cast_nullable_to_non_nullable
              as List<String>,
      receiveCurrencies: null == receiveCurrencies
          ? _value._receiveCurrencies
          : receiveCurrencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sendCurrency: null == sendCurrency
          ? _value._sendCurrency
          : sendCurrency // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subCountry: null == subCountry
          ? _value._subCountry
          : subCountry // ignore: cast_nullable_to_non_nullable
              as List<RemittanceCountryDetailDataSubCountry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceCountryDetailDataImpl
    implements _RemittanceCountryDetailData {
  const _$RemittanceCountryDetailDataImpl(
      {@JsonKey(name: "country_code_iso2") required this.countryCodeIso2,
      @JsonKey(name: "country_code_iso3") required this.countryCodeIso3,
      @JsonKey(name: "country_name") required this.countryName,
      @JsonKey(name: "currency_code") required this.currencyCode,
      @JsonKey(name: "indicative_rate_active")
      required this.indicativeRateActive,
      @JsonKey(name: "is_active") required this.isActive,
      @JsonKey(name: "is_receive_active") required this.isReceiveActive,
      @JsonKey(name: "is_send_active") required this.isSendActive,
      @JsonKey(name: "phone_dials") required final List<String> phoneDials,
      @JsonKey(name: "receive_currencies")
      required final List<String> receiveCurrencies,
      @JsonKey(name: "send_currency") required final List<String> sendCurrency,
      @JsonKey(name: "sub_country")
      required final List<RemittanceCountryDetailDataSubCountry> subCountry})
      : _phoneDials = phoneDials,
        _receiveCurrencies = receiveCurrencies,
        _sendCurrency = sendCurrency,
        _subCountry = subCountry;

  factory _$RemittanceCountryDetailDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceCountryDetailDataImplFromJson(json);

  @override
  @JsonKey(name: "country_code_iso2")
  final String countryCodeIso2;
  @override
  @JsonKey(name: "country_code_iso3")
  final String countryCodeIso3;
  @override
  @JsonKey(name: "country_name")
  final String countryName;
  @override
  @JsonKey(name: "currency_code")
  final String currencyCode;
  @override
  @JsonKey(name: "indicative_rate_active")
  final bool indicativeRateActive;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;
  @override
  @JsonKey(name: "is_receive_active")
  final bool isReceiveActive;
  @override
  @JsonKey(name: "is_send_active")
  final bool isSendActive;
  final List<String> _phoneDials;
  @override
  @JsonKey(name: "phone_dials")
  List<String> get phoneDials {
    if (_phoneDials is EqualUnmodifiableListView) return _phoneDials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phoneDials);
  }

  final List<String> _receiveCurrencies;
  @override
  @JsonKey(name: "receive_currencies")
  List<String> get receiveCurrencies {
    if (_receiveCurrencies is EqualUnmodifiableListView)
      return _receiveCurrencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receiveCurrencies);
  }

  final List<String> _sendCurrency;
  @override
  @JsonKey(name: "send_currency")
  List<String> get sendCurrency {
    if (_sendCurrency is EqualUnmodifiableListView) return _sendCurrency;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sendCurrency);
  }

  final List<RemittanceCountryDetailDataSubCountry> _subCountry;
  @override
  @JsonKey(name: "sub_country")
  List<RemittanceCountryDetailDataSubCountry> get subCountry {
    if (_subCountry is EqualUnmodifiableListView) return _subCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCountry);
  }

  @override
  String toString() {
    return 'RemittanceCountryDetailData(countryCodeIso2: $countryCodeIso2, countryCodeIso3: $countryCodeIso3, countryName: $countryName, currencyCode: $currencyCode, indicativeRateActive: $indicativeRateActive, isActive: $isActive, isReceiveActive: $isReceiveActive, isSendActive: $isSendActive, phoneDials: $phoneDials, receiveCurrencies: $receiveCurrencies, sendCurrency: $sendCurrency, subCountry: $subCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceCountryDetailDataImpl &&
            (identical(other.countryCodeIso2, countryCodeIso2) ||
                other.countryCodeIso2 == countryCodeIso2) &&
            (identical(other.countryCodeIso3, countryCodeIso3) ||
                other.countryCodeIso3 == countryCodeIso3) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.indicativeRateActive, indicativeRateActive) ||
                other.indicativeRateActive == indicativeRateActive) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isReceiveActive, isReceiveActive) ||
                other.isReceiveActive == isReceiveActive) &&
            (identical(other.isSendActive, isSendActive) ||
                other.isSendActive == isSendActive) &&
            const DeepCollectionEquality()
                .equals(other._phoneDials, _phoneDials) &&
            const DeepCollectionEquality()
                .equals(other._receiveCurrencies, _receiveCurrencies) &&
            const DeepCollectionEquality()
                .equals(other._sendCurrency, _sendCurrency) &&
            const DeepCollectionEquality()
                .equals(other._subCountry, _subCountry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      countryCodeIso2,
      countryCodeIso3,
      countryName,
      currencyCode,
      indicativeRateActive,
      isActive,
      isReceiveActive,
      isSendActive,
      const DeepCollectionEquality().hash(_phoneDials),
      const DeepCollectionEquality().hash(_receiveCurrencies),
      const DeepCollectionEquality().hash(_sendCurrency),
      const DeepCollectionEquality().hash(_subCountry));

  /// Create a copy of RemittanceCountryDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceCountryDetailDataImplCopyWith<_$RemittanceCountryDetailDataImpl>
      get copyWith => __$$RemittanceCountryDetailDataImplCopyWithImpl<
          _$RemittanceCountryDetailDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceCountryDetailDataImplToJson(
      this,
    );
  }
}

abstract class _RemittanceCountryDetailData
    implements RemittanceCountryDetailData {
  const factory _RemittanceCountryDetailData(
      {@JsonKey(name: "country_code_iso2")
      required final String countryCodeIso2,
      @JsonKey(name: "country_code_iso3") required final String countryCodeIso3,
      @JsonKey(name: "country_name") required final String countryName,
      @JsonKey(name: "currency_code") required final String currencyCode,
      @JsonKey(name: "indicative_rate_active")
      required final bool indicativeRateActive,
      @JsonKey(name: "is_active") required final bool isActive,
      @JsonKey(name: "is_receive_active") required final bool isReceiveActive,
      @JsonKey(name: "is_send_active") required final bool isSendActive,
      @JsonKey(name: "phone_dials") required final List<String> phoneDials,
      @JsonKey(name: "receive_currencies")
      required final List<String> receiveCurrencies,
      @JsonKey(name: "send_currency") required final List<String> sendCurrency,
      @JsonKey(name: "sub_country")
      required final List<RemittanceCountryDetailDataSubCountry>
          subCountry}) = _$RemittanceCountryDetailDataImpl;

  factory _RemittanceCountryDetailData.fromJson(Map<String, dynamic> json) =
      _$RemittanceCountryDetailDataImpl.fromJson;

  @override
  @JsonKey(name: "country_code_iso2")
  String get countryCodeIso2;
  @override
  @JsonKey(name: "country_code_iso3")
  String get countryCodeIso3;
  @override
  @JsonKey(name: "country_name")
  String get countryName;
  @override
  @JsonKey(name: "currency_code")
  String get currencyCode;
  @override
  @JsonKey(name: "indicative_rate_active")
  bool get indicativeRateActive;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(name: "is_receive_active")
  bool get isReceiveActive;
  @override
  @JsonKey(name: "is_send_active")
  bool get isSendActive;
  @override
  @JsonKey(name: "phone_dials")
  List<String> get phoneDials;
  @override
  @JsonKey(name: "receive_currencies")
  List<String> get receiveCurrencies;
  @override
  @JsonKey(name: "send_currency")
  List<String> get sendCurrency;
  @override
  @JsonKey(name: "sub_country")
  List<RemittanceCountryDetailDataSubCountry> get subCountry;

  /// Create a copy of RemittanceCountryDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceCountryDetailDataImplCopyWith<_$RemittanceCountryDetailDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceCountryDetailDataSubCountry
    _$RemittanceCountryDetailDataSubCountryFromJson(Map<String, dynamic> json) {
  return _RemittanceCountryDetailDataSubCountry.fromJson(json);
}

/// @nodoc
mixin _$RemittanceCountryDetailDataSubCountry {
  @JsonKey(name: "code_name")
  String get codeName => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this RemittanceCountryDetailDataSubCountry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceCountryDetailDataSubCountry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceCountryDetailDataSubCountryCopyWith<
          RemittanceCountryDetailDataSubCountry>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceCountryDetailDataSubCountryCopyWith<$Res> {
  factory $RemittanceCountryDetailDataSubCountryCopyWith(
          RemittanceCountryDetailDataSubCountry value,
          $Res Function(RemittanceCountryDetailDataSubCountry) then) =
      _$RemittanceCountryDetailDataSubCountryCopyWithImpl<$Res,
          RemittanceCountryDetailDataSubCountry>;
  @useResult
  $Res call(
      {@JsonKey(name: "code_name") String codeName,
      @JsonKey(name: "name") String name});
}

/// @nodoc
class _$RemittanceCountryDetailDataSubCountryCopyWithImpl<$Res,
        $Val extends RemittanceCountryDetailDataSubCountry>
    implements $RemittanceCountryDetailDataSubCountryCopyWith<$Res> {
  _$RemittanceCountryDetailDataSubCountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceCountryDetailDataSubCountry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeName = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      codeName: null == codeName
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemittanceCountryDetailDataSubCountryImplCopyWith<$Res>
    implements $RemittanceCountryDetailDataSubCountryCopyWith<$Res> {
  factory _$$RemittanceCountryDetailDataSubCountryImplCopyWith(
          _$RemittanceCountryDetailDataSubCountryImpl value,
          $Res Function(_$RemittanceCountryDetailDataSubCountryImpl) then) =
      __$$RemittanceCountryDetailDataSubCountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code_name") String codeName,
      @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$RemittanceCountryDetailDataSubCountryImplCopyWithImpl<$Res>
    extends _$RemittanceCountryDetailDataSubCountryCopyWithImpl<$Res,
        _$RemittanceCountryDetailDataSubCountryImpl>
    implements _$$RemittanceCountryDetailDataSubCountryImplCopyWith<$Res> {
  __$$RemittanceCountryDetailDataSubCountryImplCopyWithImpl(
      _$RemittanceCountryDetailDataSubCountryImpl _value,
      $Res Function(_$RemittanceCountryDetailDataSubCountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceCountryDetailDataSubCountry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeName = null,
    Object? name = null,
  }) {
    return _then(_$RemittanceCountryDetailDataSubCountryImpl(
      codeName: null == codeName
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceCountryDetailDataSubCountryImpl
    implements _RemittanceCountryDetailDataSubCountry {
  const _$RemittanceCountryDetailDataSubCountryImpl(
      {@JsonKey(name: "code_name") required this.codeName,
      @JsonKey(name: "name") required this.name});

  factory _$RemittanceCountryDetailDataSubCountryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceCountryDetailDataSubCountryImplFromJson(json);

  @override
  @JsonKey(name: "code_name")
  final String codeName;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'RemittanceCountryDetailDataSubCountry(codeName: $codeName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceCountryDetailDataSubCountryImpl &&
            (identical(other.codeName, codeName) ||
                other.codeName == codeName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, codeName, name);

  /// Create a copy of RemittanceCountryDetailDataSubCountry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceCountryDetailDataSubCountryImplCopyWith<
          _$RemittanceCountryDetailDataSubCountryImpl>
      get copyWith => __$$RemittanceCountryDetailDataSubCountryImplCopyWithImpl<
          _$RemittanceCountryDetailDataSubCountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceCountryDetailDataSubCountryImplToJson(
      this,
    );
  }
}

abstract class _RemittanceCountryDetailDataSubCountry
    implements RemittanceCountryDetailDataSubCountry {
  const factory _RemittanceCountryDetailDataSubCountry(
          {@JsonKey(name: "code_name") required final String codeName,
          @JsonKey(name: "name") required final String name}) =
      _$RemittanceCountryDetailDataSubCountryImpl;

  factory _RemittanceCountryDetailDataSubCountry.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceCountryDetailDataSubCountryImpl.fromJson;

  @override
  @JsonKey(name: "code_name")
  String get codeName;
  @override
  @JsonKey(name: "name")
  String get name;

  /// Create a copy of RemittanceCountryDetailDataSubCountry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceCountryDetailDataSubCountryImplCopyWith<
          _$RemittanceCountryDetailDataSubCountryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
