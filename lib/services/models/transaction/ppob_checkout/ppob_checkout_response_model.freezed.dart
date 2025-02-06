// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ppob_checkout_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PpobCheckoutResponseModel _$PpobCheckoutResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PpobCheckoutResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PpobCheckoutResponseModel {
  @JsonKey(name: "data")
  PpobCheckoutResponseData get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this PpobCheckoutResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobCheckoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobCheckoutResponseModelCopyWith<PpobCheckoutResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobCheckoutResponseModelCopyWith<$Res> {
  factory $PpobCheckoutResponseModelCopyWith(PpobCheckoutResponseModel value,
          $Res Function(PpobCheckoutResponseModel) then) =
      _$PpobCheckoutResponseModelCopyWithImpl<$Res, PpobCheckoutResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") PpobCheckoutResponseData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  $PpobCheckoutResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PpobCheckoutResponseModelCopyWithImpl<$Res,
        $Val extends PpobCheckoutResponseModel>
    implements $PpobCheckoutResponseModelCopyWith<$Res> {
  _$PpobCheckoutResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobCheckoutResponseModel
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
              as PpobCheckoutResponseData,
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

  /// Create a copy of PpobCheckoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobCheckoutResponseDataCopyWith<$Res> get data {
    return $PpobCheckoutResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobCheckoutResponseModelImplCopyWith<$Res>
    implements $PpobCheckoutResponseModelCopyWith<$Res> {
  factory _$$PpobCheckoutResponseModelImplCopyWith(
          _$PpobCheckoutResponseModelImpl value,
          $Res Function(_$PpobCheckoutResponseModelImpl) then) =
      __$$PpobCheckoutResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") PpobCheckoutResponseData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  @override
  $PpobCheckoutResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PpobCheckoutResponseModelImplCopyWithImpl<$Res>
    extends _$PpobCheckoutResponseModelCopyWithImpl<$Res,
        _$PpobCheckoutResponseModelImpl>
    implements _$$PpobCheckoutResponseModelImplCopyWith<$Res> {
  __$$PpobCheckoutResponseModelImplCopyWithImpl(
      _$PpobCheckoutResponseModelImpl _value,
      $Res Function(_$PpobCheckoutResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobCheckoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$PpobCheckoutResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PpobCheckoutResponseData,
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
class _$PpobCheckoutResponseModelImpl implements _PpobCheckoutResponseModel {
  const _$PpobCheckoutResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status_code") required this.statusCode});

  factory _$PpobCheckoutResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobCheckoutResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final PpobCheckoutResponseData data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "status_code")
  final String statusCode;

  @override
  String toString() {
    return 'PpobCheckoutResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobCheckoutResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of PpobCheckoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobCheckoutResponseModelImplCopyWith<_$PpobCheckoutResponseModelImpl>
      get copyWith => __$$PpobCheckoutResponseModelImplCopyWithImpl<
          _$PpobCheckoutResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobCheckoutResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PpobCheckoutResponseModel implements PpobCheckoutResponseModel {
  const factory _PpobCheckoutResponseModel(
          {@JsonKey(name: "data") required final PpobCheckoutResponseData data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "status_code") required final String statusCode}) =
      _$PpobCheckoutResponseModelImpl;

  factory _PpobCheckoutResponseModel.fromJson(Map<String, dynamic> json) =
      _$PpobCheckoutResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  PpobCheckoutResponseData get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "status_code")
  String get statusCode;

  /// Create a copy of PpobCheckoutResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobCheckoutResponseModelImplCopyWith<_$PpobCheckoutResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobCheckoutResponseData _$PpobCheckoutResponseDataFromJson(
    Map<String, dynamic> json) {
  return _PpobCheckoutResponseData.fromJson(json);
}

/// @nodoc
mixin _$PpobCheckoutResponseData {
  @JsonKey(name: "formatted")
  PpobCheckoutDataFormatted get formatted => throw _privateConstructorUsedError;
  @JsonKey(name: "nominal")
  int get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  PpobCheckoutDataPaymentMethod get paymentMethod =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "recepients")
  dynamic get recepients => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fee")
  int get totalFee => throw _privateConstructorUsedError;

  /// Serializes this PpobCheckoutResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobCheckoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobCheckoutResponseDataCopyWith<PpobCheckoutResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobCheckoutResponseDataCopyWith<$Res> {
  factory $PpobCheckoutResponseDataCopyWith(PpobCheckoutResponseData value,
          $Res Function(PpobCheckoutResponseData) then) =
      _$PpobCheckoutResponseDataCopyWithImpl<$Res, PpobCheckoutResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: "formatted") PpobCheckoutDataFormatted formatted,
      @JsonKey(name: "nominal") int nominal,
      @JsonKey(name: "payment_method")
      PpobCheckoutDataPaymentMethod paymentMethod,
      @JsonKey(name: "recepients") dynamic recepients,
      @JsonKey(name: "total_amount") int totalAmount,
      @JsonKey(name: "total_fee") int totalFee});

  $PpobCheckoutDataFormattedCopyWith<$Res> get formatted;
  $PpobCheckoutDataPaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class _$PpobCheckoutResponseDataCopyWithImpl<$Res,
        $Val extends PpobCheckoutResponseData>
    implements $PpobCheckoutResponseDataCopyWith<$Res> {
  _$PpobCheckoutResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobCheckoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? nominal = null,
    Object? paymentMethod = null,
    Object? recepients = freezed,
    Object? totalAmount = null,
    Object? totalFee = null,
  }) {
    return _then(_value.copyWith(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as PpobCheckoutDataFormatted,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PpobCheckoutDataPaymentMethod,
      recepients: freezed == recepients
          ? _value.recepients
          : recepients // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PpobCheckoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobCheckoutDataFormattedCopyWith<$Res> get formatted {
    return $PpobCheckoutDataFormattedCopyWith<$Res>(_value.formatted, (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }

  /// Create a copy of PpobCheckoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobCheckoutDataPaymentMethodCopyWith<$Res> get paymentMethod {
    return $PpobCheckoutDataPaymentMethodCopyWith<$Res>(_value.paymentMethod,
        (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobCheckoutResponseDataImplCopyWith<$Res>
    implements $PpobCheckoutResponseDataCopyWith<$Res> {
  factory _$$PpobCheckoutResponseDataImplCopyWith(
          _$PpobCheckoutResponseDataImpl value,
          $Res Function(_$PpobCheckoutResponseDataImpl) then) =
      __$$PpobCheckoutResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "formatted") PpobCheckoutDataFormatted formatted,
      @JsonKey(name: "nominal") int nominal,
      @JsonKey(name: "payment_method")
      PpobCheckoutDataPaymentMethod paymentMethod,
      @JsonKey(name: "recepients") dynamic recepients,
      @JsonKey(name: "total_amount") int totalAmount,
      @JsonKey(name: "total_fee") int totalFee});

  @override
  $PpobCheckoutDataFormattedCopyWith<$Res> get formatted;
  @override
  $PpobCheckoutDataPaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$PpobCheckoutResponseDataImplCopyWithImpl<$Res>
    extends _$PpobCheckoutResponseDataCopyWithImpl<$Res,
        _$PpobCheckoutResponseDataImpl>
    implements _$$PpobCheckoutResponseDataImplCopyWith<$Res> {
  __$$PpobCheckoutResponseDataImplCopyWithImpl(
      _$PpobCheckoutResponseDataImpl _value,
      $Res Function(_$PpobCheckoutResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobCheckoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? nominal = null,
    Object? paymentMethod = null,
    Object? recepients = freezed,
    Object? totalAmount = null,
    Object? totalFee = null,
  }) {
    return _then(_$PpobCheckoutResponseDataImpl(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as PpobCheckoutDataFormatted,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PpobCheckoutDataPaymentMethod,
      recepients: freezed == recepients
          ? _value.recepients
          : recepients // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobCheckoutResponseDataImpl implements _PpobCheckoutResponseData {
  const _$PpobCheckoutResponseDataImpl(
      {@JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "nominal") required this.nominal,
      @JsonKey(name: "payment_method") required this.paymentMethod,
      @JsonKey(name: "recepients") required this.recepients,
      @JsonKey(name: "total_amount") required this.totalAmount,
      @JsonKey(name: "total_fee") required this.totalFee});

  factory _$PpobCheckoutResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobCheckoutResponseDataImplFromJson(json);

  @override
  @JsonKey(name: "formatted")
  final PpobCheckoutDataFormatted formatted;
  @override
  @JsonKey(name: "nominal")
  final int nominal;
  @override
  @JsonKey(name: "payment_method")
  final PpobCheckoutDataPaymentMethod paymentMethod;
  @override
  @JsonKey(name: "recepients")
  final dynamic recepients;
  @override
  @JsonKey(name: "total_amount")
  final int totalAmount;
  @override
  @JsonKey(name: "total_fee")
  final int totalFee;

  @override
  String toString() {
    return 'PpobCheckoutResponseData(formatted: $formatted, nominal: $nominal, paymentMethod: $paymentMethod, recepients: $recepients, totalAmount: $totalAmount, totalFee: $totalFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobCheckoutResponseDataImpl &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other.recepients, recepients) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      formatted,
      nominal,
      paymentMethod,
      const DeepCollectionEquality().hash(recepients),
      totalAmount,
      totalFee);

  /// Create a copy of PpobCheckoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobCheckoutResponseDataImplCopyWith<_$PpobCheckoutResponseDataImpl>
      get copyWith => __$$PpobCheckoutResponseDataImplCopyWithImpl<
          _$PpobCheckoutResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobCheckoutResponseDataImplToJson(
      this,
    );
  }
}

abstract class _PpobCheckoutResponseData implements PpobCheckoutResponseData {
  const factory _PpobCheckoutResponseData(
          {@JsonKey(name: "formatted")
          required final PpobCheckoutDataFormatted formatted,
          @JsonKey(name: "nominal") required final int nominal,
          @JsonKey(name: "payment_method")
          required final PpobCheckoutDataPaymentMethod paymentMethod,
          @JsonKey(name: "recepients") required final dynamic recepients,
          @JsonKey(name: "total_amount") required final int totalAmount,
          @JsonKey(name: "total_fee") required final int totalFee}) =
      _$PpobCheckoutResponseDataImpl;

  factory _PpobCheckoutResponseData.fromJson(Map<String, dynamic> json) =
      _$PpobCheckoutResponseDataImpl.fromJson;

  @override
  @JsonKey(name: "formatted")
  PpobCheckoutDataFormatted get formatted;
  @override
  @JsonKey(name: "nominal")
  int get nominal;
  @override
  @JsonKey(name: "payment_method")
  PpobCheckoutDataPaymentMethod get paymentMethod;
  @override
  @JsonKey(name: "recepients")
  dynamic get recepients;
  @override
  @JsonKey(name: "total_amount")
  int get totalAmount;
  @override
  @JsonKey(name: "total_fee")
  int get totalFee;

  /// Create a copy of PpobCheckoutResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobCheckoutResponseDataImplCopyWith<_$PpobCheckoutResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobCheckoutDataFormatted _$PpobCheckoutDataFormattedFromJson(
    Map<String, dynamic> json) {
  return _PpobCheckoutDataFormatted.fromJson(json);
}

/// @nodoc
mixin _$PpobCheckoutDataFormatted {
  @JsonKey(name: "price")
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  String get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fee")
  String get totalFee => throw _privateConstructorUsedError;

  /// Serializes this PpobCheckoutDataFormatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobCheckoutDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobCheckoutDataFormattedCopyWith<PpobCheckoutDataFormatted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobCheckoutDataFormattedCopyWith<$Res> {
  factory $PpobCheckoutDataFormattedCopyWith(PpobCheckoutDataFormatted value,
          $Res Function(PpobCheckoutDataFormatted) then) =
      _$PpobCheckoutDataFormattedCopyWithImpl<$Res, PpobCheckoutDataFormatted>;
  @useResult
  $Res call(
      {@JsonKey(name: "price") String price,
      @JsonKey(name: "total_amount") String totalAmount,
      @JsonKey(name: "total_fee") String totalFee});
}

/// @nodoc
class _$PpobCheckoutDataFormattedCopyWithImpl<$Res,
        $Val extends PpobCheckoutDataFormatted>
    implements $PpobCheckoutDataFormattedCopyWith<$Res> {
  _$PpobCheckoutDataFormattedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobCheckoutDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? totalAmount = null,
    Object? totalFee = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobCheckoutDataFormattedImplCopyWith<$Res>
    implements $PpobCheckoutDataFormattedCopyWith<$Res> {
  factory _$$PpobCheckoutDataFormattedImplCopyWith(
          _$PpobCheckoutDataFormattedImpl value,
          $Res Function(_$PpobCheckoutDataFormattedImpl) then) =
      __$$PpobCheckoutDataFormattedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "price") String price,
      @JsonKey(name: "total_amount") String totalAmount,
      @JsonKey(name: "total_fee") String totalFee});
}

/// @nodoc
class __$$PpobCheckoutDataFormattedImplCopyWithImpl<$Res>
    extends _$PpobCheckoutDataFormattedCopyWithImpl<$Res,
        _$PpobCheckoutDataFormattedImpl>
    implements _$$PpobCheckoutDataFormattedImplCopyWith<$Res> {
  __$$PpobCheckoutDataFormattedImplCopyWithImpl(
      _$PpobCheckoutDataFormattedImpl _value,
      $Res Function(_$PpobCheckoutDataFormattedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobCheckoutDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? totalAmount = null,
    Object? totalFee = null,
  }) {
    return _then(_$PpobCheckoutDataFormattedImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobCheckoutDataFormattedImpl implements _PpobCheckoutDataFormatted {
  const _$PpobCheckoutDataFormattedImpl(
      {@JsonKey(name: "price") required this.price,
      @JsonKey(name: "total_amount") required this.totalAmount,
      @JsonKey(name: "total_fee") required this.totalFee});

  factory _$PpobCheckoutDataFormattedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobCheckoutDataFormattedImplFromJson(json);

  @override
  @JsonKey(name: "price")
  final String price;
  @override
  @JsonKey(name: "total_amount")
  final String totalAmount;
  @override
  @JsonKey(name: "total_fee")
  final String totalFee;

  @override
  String toString() {
    return 'PpobCheckoutDataFormatted(price: $price, totalAmount: $totalAmount, totalFee: $totalFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobCheckoutDataFormattedImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, totalAmount, totalFee);

  /// Create a copy of PpobCheckoutDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobCheckoutDataFormattedImplCopyWith<_$PpobCheckoutDataFormattedImpl>
      get copyWith => __$$PpobCheckoutDataFormattedImplCopyWithImpl<
          _$PpobCheckoutDataFormattedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobCheckoutDataFormattedImplToJson(
      this,
    );
  }
}

abstract class _PpobCheckoutDataFormatted implements PpobCheckoutDataFormatted {
  const factory _PpobCheckoutDataFormatted(
          {@JsonKey(name: "price") required final String price,
          @JsonKey(name: "total_amount") required final String totalAmount,
          @JsonKey(name: "total_fee") required final String totalFee}) =
      _$PpobCheckoutDataFormattedImpl;

  factory _PpobCheckoutDataFormatted.fromJson(Map<String, dynamic> json) =
      _$PpobCheckoutDataFormattedImpl.fromJson;

  @override
  @JsonKey(name: "price")
  String get price;
  @override
  @JsonKey(name: "total_amount")
  String get totalAmount;
  @override
  @JsonKey(name: "total_fee")
  String get totalFee;

  /// Create a copy of PpobCheckoutDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobCheckoutDataFormattedImplCopyWith<_$PpobCheckoutDataFormattedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobCheckoutDataPaymentMethod _$PpobCheckoutDataPaymentMethodFromJson(
    Map<String, dynamic> json) {
  return _PpobCheckoutDataPaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$PpobCheckoutDataPaymentMethod {
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_type")
  String get currencyType => throw _privateConstructorUsedError;
  @JsonKey(name: "fee")
  Fee get fee => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted")
  PpobCheckoutDataPaymentMethodFormatted get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_code")
  String get payCode => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_content")
  String get qrContent => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_image")
  String get qrImage => throw _privateConstructorUsedError;

  /// Serializes this PpobCheckoutDataPaymentMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobCheckoutDataPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobCheckoutDataPaymentMethodCopyWith<PpobCheckoutDataPaymentMethod>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobCheckoutDataPaymentMethodCopyWith<$Res> {
  factory $PpobCheckoutDataPaymentMethodCopyWith(
          PpobCheckoutDataPaymentMethod value,
          $Res Function(PpobCheckoutDataPaymentMethod) then) =
      _$PpobCheckoutDataPaymentMethodCopyWithImpl<$Res,
          PpobCheckoutDataPaymentMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "fee") Fee fee,
      @JsonKey(name: "formatted")
      PpobCheckoutDataPaymentMethodFormatted formatted,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "pay_code") String payCode,
      @JsonKey(name: "qr_content") String qrContent,
      @JsonKey(name: "qr_image") String qrImage});

  $FeeCopyWith<$Res> get fee;
  $PpobCheckoutDataPaymentMethodFormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class _$PpobCheckoutDataPaymentMethodCopyWithImpl<$Res,
        $Val extends PpobCheckoutDataPaymentMethod>
    implements $PpobCheckoutDataPaymentMethodCopyWith<$Res> {
  _$PpobCheckoutDataPaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobCheckoutDataPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? currencyType = null,
    Object? fee = null,
    Object? formatted = null,
    Object? name = null,
    Object? payCode = null,
    Object? qrContent = null,
    Object? qrImage = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as Fee,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as PpobCheckoutDataPaymentMethodFormatted,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      payCode: null == payCode
          ? _value.payCode
          : payCode // ignore: cast_nullable_to_non_nullable
              as String,
      qrContent: null == qrContent
          ? _value.qrContent
          : qrContent // ignore: cast_nullable_to_non_nullable
              as String,
      qrImage: null == qrImage
          ? _value.qrImage
          : qrImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PpobCheckoutDataPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeeCopyWith<$Res> get fee {
    return $FeeCopyWith<$Res>(_value.fee, (value) {
      return _then(_value.copyWith(fee: value) as $Val);
    });
  }

  /// Create a copy of PpobCheckoutDataPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobCheckoutDataPaymentMethodFormattedCopyWith<$Res> get formatted {
    return $PpobCheckoutDataPaymentMethodFormattedCopyWith<$Res>(
        _value.formatted, (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobCheckoutDataPaymentMethodImplCopyWith<$Res>
    implements $PpobCheckoutDataPaymentMethodCopyWith<$Res> {
  factory _$$PpobCheckoutDataPaymentMethodImplCopyWith(
          _$PpobCheckoutDataPaymentMethodImpl value,
          $Res Function(_$PpobCheckoutDataPaymentMethodImpl) then) =
      __$$PpobCheckoutDataPaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "fee") Fee fee,
      @JsonKey(name: "formatted")
      PpobCheckoutDataPaymentMethodFormatted formatted,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "pay_code") String payCode,
      @JsonKey(name: "qr_content") String qrContent,
      @JsonKey(name: "qr_image") String qrImage});

  @override
  $FeeCopyWith<$Res> get fee;
  @override
  $PpobCheckoutDataPaymentMethodFormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class __$$PpobCheckoutDataPaymentMethodImplCopyWithImpl<$Res>
    extends _$PpobCheckoutDataPaymentMethodCopyWithImpl<$Res,
        _$PpobCheckoutDataPaymentMethodImpl>
    implements _$$PpobCheckoutDataPaymentMethodImplCopyWith<$Res> {
  __$$PpobCheckoutDataPaymentMethodImplCopyWithImpl(
      _$PpobCheckoutDataPaymentMethodImpl _value,
      $Res Function(_$PpobCheckoutDataPaymentMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobCheckoutDataPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? currencyType = null,
    Object? fee = null,
    Object? formatted = null,
    Object? name = null,
    Object? payCode = null,
    Object? qrContent = null,
    Object? qrImage = null,
  }) {
    return _then(_$PpobCheckoutDataPaymentMethodImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as Fee,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as PpobCheckoutDataPaymentMethodFormatted,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      payCode: null == payCode
          ? _value.payCode
          : payCode // ignore: cast_nullable_to_non_nullable
              as String,
      qrContent: null == qrContent
          ? _value.qrContent
          : qrContent // ignore: cast_nullable_to_non_nullable
              as String,
      qrImage: null == qrImage
          ? _value.qrImage
          : qrImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobCheckoutDataPaymentMethodImpl
    implements _PpobCheckoutDataPaymentMethod {
  const _$PpobCheckoutDataPaymentMethodImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "currency_type") required this.currencyType,
      @JsonKey(name: "fee") required this.fee,
      @JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "pay_code") required this.payCode,
      @JsonKey(name: "qr_content") required this.qrContent,
      @JsonKey(name: "qr_image") required this.qrImage});

  factory _$PpobCheckoutDataPaymentMethodImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobCheckoutDataPaymentMethodImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "currency_type")
  final String currencyType;
  @override
  @JsonKey(name: "fee")
  final Fee fee;
  @override
  @JsonKey(name: "formatted")
  final PpobCheckoutDataPaymentMethodFormatted formatted;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "pay_code")
  final String payCode;
  @override
  @JsonKey(name: "qr_content")
  final String qrContent;
  @override
  @JsonKey(name: "qr_image")
  final String qrImage;

  @override
  String toString() {
    return 'PpobCheckoutDataPaymentMethod(code: $code, currencyType: $currencyType, fee: $fee, formatted: $formatted, name: $name, payCode: $payCode, qrContent: $qrContent, qrImage: $qrImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobCheckoutDataPaymentMethodImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.payCode, payCode) || other.payCode == payCode) &&
            (identical(other.qrContent, qrContent) ||
                other.qrContent == qrContent) &&
            (identical(other.qrImage, qrImage) || other.qrImage == qrImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, currencyType, fee,
      formatted, name, payCode, qrContent, qrImage);

  /// Create a copy of PpobCheckoutDataPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobCheckoutDataPaymentMethodImplCopyWith<
          _$PpobCheckoutDataPaymentMethodImpl>
      get copyWith => __$$PpobCheckoutDataPaymentMethodImplCopyWithImpl<
          _$PpobCheckoutDataPaymentMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobCheckoutDataPaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _PpobCheckoutDataPaymentMethod
    implements PpobCheckoutDataPaymentMethod {
  const factory _PpobCheckoutDataPaymentMethod(
          {@JsonKey(name: "code") required final String code,
          @JsonKey(name: "currency_type") required final String currencyType,
          @JsonKey(name: "fee") required final Fee fee,
          @JsonKey(name: "formatted")
          required final PpobCheckoutDataPaymentMethodFormatted formatted,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "pay_code") required final String payCode,
          @JsonKey(name: "qr_content") required final String qrContent,
          @JsonKey(name: "qr_image") required final String qrImage}) =
      _$PpobCheckoutDataPaymentMethodImpl;

  factory _PpobCheckoutDataPaymentMethod.fromJson(Map<String, dynamic> json) =
      _$PpobCheckoutDataPaymentMethodImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "currency_type")
  String get currencyType;
  @override
  @JsonKey(name: "fee")
  Fee get fee;
  @override
  @JsonKey(name: "formatted")
  PpobCheckoutDataPaymentMethodFormatted get formatted;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "pay_code")
  String get payCode;
  @override
  @JsonKey(name: "qr_content")
  String get qrContent;
  @override
  @JsonKey(name: "qr_image")
  String get qrImage;

  /// Create a copy of PpobCheckoutDataPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobCheckoutDataPaymentMethodImplCopyWith<
          _$PpobCheckoutDataPaymentMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Fee _$FeeFromJson(Map<String, dynamic> json) {
  return _Fee.fromJson(json);
}

/// @nodoc
mixin _$Fee {
  @JsonKey(name: "Formatted")
  dynamic get formatted => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_type")
  String get currencyType => throw _privateConstructorUsedError;
  @JsonKey(name: "feature_fee")
  int get featureFee => throw _privateConstructorUsedError;
  @JsonKey(name: "is_feature_free")
  bool get isFeatureFree => throw _privateConstructorUsedError;
  @JsonKey(name: "is_payment_free")
  bool get isPaymentFree => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_channel_fee")
  int get paymentChannelFee => throw _privateConstructorUsedError;

  /// Serializes this Fee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Fee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeeCopyWith<Fee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeCopyWith<$Res> {
  factory $FeeCopyWith(Fee value, $Res Function(Fee) then) =
      _$FeeCopyWithImpl<$Res, Fee>;
  @useResult
  $Res call(
      {@JsonKey(name: "Formatted") dynamic formatted,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "currency_prefix") String currencyPrefix,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "feature_fee") int featureFee,
      @JsonKey(name: "is_feature_free") bool isFeatureFree,
      @JsonKey(name: "is_payment_free") bool isPaymentFree,
      @JsonKey(name: "payment_channel_fee") int paymentChannelFee});
}

/// @nodoc
class _$FeeCopyWithImpl<$Res, $Val extends Fee> implements $FeeCopyWith<$Res> {
  _$FeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = freezed,
    Object? amount = null,
    Object? currencyPrefix = null,
    Object? currencyType = null,
    Object? featureFee = null,
    Object? isFeatureFree = null,
    Object? isPaymentFree = null,
    Object? paymentChannelFee = null,
  }) {
    return _then(_value.copyWith(
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currencyPrefix: null == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      featureFee: null == featureFee
          ? _value.featureFee
          : featureFee // ignore: cast_nullable_to_non_nullable
              as int,
      isFeatureFree: null == isFeatureFree
          ? _value.isFeatureFree
          : isFeatureFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentFree: null == isPaymentFree
          ? _value.isPaymentFree
          : isPaymentFree // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentChannelFee: null == paymentChannelFee
          ? _value.paymentChannelFee
          : paymentChannelFee // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeeImplCopyWith<$Res> implements $FeeCopyWith<$Res> {
  factory _$$FeeImplCopyWith(_$FeeImpl value, $Res Function(_$FeeImpl) then) =
      __$$FeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Formatted") dynamic formatted,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "currency_prefix") String currencyPrefix,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "feature_fee") int featureFee,
      @JsonKey(name: "is_feature_free") bool isFeatureFree,
      @JsonKey(name: "is_payment_free") bool isPaymentFree,
      @JsonKey(name: "payment_channel_fee") int paymentChannelFee});
}

/// @nodoc
class __$$FeeImplCopyWithImpl<$Res> extends _$FeeCopyWithImpl<$Res, _$FeeImpl>
    implements _$$FeeImplCopyWith<$Res> {
  __$$FeeImplCopyWithImpl(_$FeeImpl _value, $Res Function(_$FeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Fee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = freezed,
    Object? amount = null,
    Object? currencyPrefix = null,
    Object? currencyType = null,
    Object? featureFee = null,
    Object? isFeatureFree = null,
    Object? isPaymentFree = null,
    Object? paymentChannelFee = null,
  }) {
    return _then(_$FeeImpl(
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currencyPrefix: null == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      featureFee: null == featureFee
          ? _value.featureFee
          : featureFee // ignore: cast_nullable_to_non_nullable
              as int,
      isFeatureFree: null == isFeatureFree
          ? _value.isFeatureFree
          : isFeatureFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentFree: null == isPaymentFree
          ? _value.isPaymentFree
          : isPaymentFree // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentChannelFee: null == paymentChannelFee
          ? _value.paymentChannelFee
          : paymentChannelFee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeImpl implements _Fee {
  const _$FeeImpl(
      {@JsonKey(name: "Formatted") required this.formatted,
      @JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "currency_prefix") required this.currencyPrefix,
      @JsonKey(name: "currency_type") required this.currencyType,
      @JsonKey(name: "feature_fee") required this.featureFee,
      @JsonKey(name: "is_feature_free") required this.isFeatureFree,
      @JsonKey(name: "is_payment_free") required this.isPaymentFree,
      @JsonKey(name: "payment_channel_fee") required this.paymentChannelFee});

  factory _$FeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeImplFromJson(json);

  @override
  @JsonKey(name: "Formatted")
  final dynamic formatted;
  @override
  @JsonKey(name: "amount")
  final int amount;
  @override
  @JsonKey(name: "currency_prefix")
  final String currencyPrefix;
  @override
  @JsonKey(name: "currency_type")
  final String currencyType;
  @override
  @JsonKey(name: "feature_fee")
  final int featureFee;
  @override
  @JsonKey(name: "is_feature_free")
  final bool isFeatureFree;
  @override
  @JsonKey(name: "is_payment_free")
  final bool isPaymentFree;
  @override
  @JsonKey(name: "payment_channel_fee")
  final int paymentChannelFee;

  @override
  String toString() {
    return 'Fee(formatted: $formatted, amount: $amount, currencyPrefix: $currencyPrefix, currencyType: $currencyType, featureFee: $featureFee, isFeatureFree: $isFeatureFree, isPaymentFree: $isPaymentFree, paymentChannelFee: $paymentChannelFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeImpl &&
            const DeepCollectionEquality().equals(other.formatted, formatted) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.featureFee, featureFee) ||
                other.featureFee == featureFee) &&
            (identical(other.isFeatureFree, isFeatureFree) ||
                other.isFeatureFree == isFeatureFree) &&
            (identical(other.isPaymentFree, isPaymentFree) ||
                other.isPaymentFree == isPaymentFree) &&
            (identical(other.paymentChannelFee, paymentChannelFee) ||
                other.paymentChannelFee == paymentChannelFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(formatted),
      amount,
      currencyPrefix,
      currencyType,
      featureFee,
      isFeatureFree,
      isPaymentFree,
      paymentChannelFee);

  /// Create a copy of Fee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeImplCopyWith<_$FeeImpl> get copyWith =>
      __$$FeeImplCopyWithImpl<_$FeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeImplToJson(
      this,
    );
  }
}

abstract class _Fee implements Fee {
  const factory _Fee(
      {@JsonKey(name: "Formatted") required final dynamic formatted,
      @JsonKey(name: "amount") required final int amount,
      @JsonKey(name: "currency_prefix") required final String currencyPrefix,
      @JsonKey(name: "currency_type") required final String currencyType,
      @JsonKey(name: "feature_fee") required final int featureFee,
      @JsonKey(name: "is_feature_free") required final bool isFeatureFree,
      @JsonKey(name: "is_payment_free") required final bool isPaymentFree,
      @JsonKey(name: "payment_channel_fee")
      required final int paymentChannelFee}) = _$FeeImpl;

  factory _Fee.fromJson(Map<String, dynamic> json) = _$FeeImpl.fromJson;

  @override
  @JsonKey(name: "Formatted")
  dynamic get formatted;
  @override
  @JsonKey(name: "amount")
  int get amount;
  @override
  @JsonKey(name: "currency_prefix")
  String get currencyPrefix;
  @override
  @JsonKey(name: "currency_type")
  String get currencyType;
  @override
  @JsonKey(name: "feature_fee")
  int get featureFee;
  @override
  @JsonKey(name: "is_feature_free")
  bool get isFeatureFree;
  @override
  @JsonKey(name: "is_payment_free")
  bool get isPaymentFree;
  @override
  @JsonKey(name: "payment_channel_fee")
  int get paymentChannelFee;

  /// Create a copy of Fee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeeImplCopyWith<_$FeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PpobCheckoutDataPaymentMethodFormatted
    _$PpobCheckoutDataPaymentMethodFormattedFromJson(
        Map<String, dynamic> json) {
  return _PpobCheckoutDataPaymentMethodFormatted.fromJson(json);
}

/// @nodoc
mixin _$PpobCheckoutDataPaymentMethodFormatted {
  @JsonKey(name: "price")
  String get price => throw _privateConstructorUsedError;

  /// Serializes this PpobCheckoutDataPaymentMethodFormatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobCheckoutDataPaymentMethodFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobCheckoutDataPaymentMethodFormattedCopyWith<
          PpobCheckoutDataPaymentMethodFormatted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobCheckoutDataPaymentMethodFormattedCopyWith<$Res> {
  factory $PpobCheckoutDataPaymentMethodFormattedCopyWith(
          PpobCheckoutDataPaymentMethodFormatted value,
          $Res Function(PpobCheckoutDataPaymentMethodFormatted) then) =
      _$PpobCheckoutDataPaymentMethodFormattedCopyWithImpl<$Res,
          PpobCheckoutDataPaymentMethodFormatted>;
  @useResult
  $Res call({@JsonKey(name: "price") String price});
}

/// @nodoc
class _$PpobCheckoutDataPaymentMethodFormattedCopyWithImpl<$Res,
        $Val extends PpobCheckoutDataPaymentMethodFormatted>
    implements $PpobCheckoutDataPaymentMethodFormattedCopyWith<$Res> {
  _$PpobCheckoutDataPaymentMethodFormattedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobCheckoutDataPaymentMethodFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobCheckoutDataPaymentMethodFormattedImplCopyWith<$Res>
    implements $PpobCheckoutDataPaymentMethodFormattedCopyWith<$Res> {
  factory _$$PpobCheckoutDataPaymentMethodFormattedImplCopyWith(
          _$PpobCheckoutDataPaymentMethodFormattedImpl value,
          $Res Function(_$PpobCheckoutDataPaymentMethodFormattedImpl) then) =
      __$$PpobCheckoutDataPaymentMethodFormattedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "price") String price});
}

/// @nodoc
class __$$PpobCheckoutDataPaymentMethodFormattedImplCopyWithImpl<$Res>
    extends _$PpobCheckoutDataPaymentMethodFormattedCopyWithImpl<$Res,
        _$PpobCheckoutDataPaymentMethodFormattedImpl>
    implements _$$PpobCheckoutDataPaymentMethodFormattedImplCopyWith<$Res> {
  __$$PpobCheckoutDataPaymentMethodFormattedImplCopyWithImpl(
      _$PpobCheckoutDataPaymentMethodFormattedImpl _value,
      $Res Function(_$PpobCheckoutDataPaymentMethodFormattedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobCheckoutDataPaymentMethodFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$PpobCheckoutDataPaymentMethodFormattedImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobCheckoutDataPaymentMethodFormattedImpl
    implements _PpobCheckoutDataPaymentMethodFormatted {
  const _$PpobCheckoutDataPaymentMethodFormattedImpl(
      {@JsonKey(name: "price") required this.price});

  factory _$PpobCheckoutDataPaymentMethodFormattedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobCheckoutDataPaymentMethodFormattedImplFromJson(json);

  @override
  @JsonKey(name: "price")
  final String price;

  @override
  String toString() {
    return 'PpobCheckoutDataPaymentMethodFormatted(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobCheckoutDataPaymentMethodFormattedImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price);

  /// Create a copy of PpobCheckoutDataPaymentMethodFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobCheckoutDataPaymentMethodFormattedImplCopyWith<
          _$PpobCheckoutDataPaymentMethodFormattedImpl>
      get copyWith =>
          __$$PpobCheckoutDataPaymentMethodFormattedImplCopyWithImpl<
              _$PpobCheckoutDataPaymentMethodFormattedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobCheckoutDataPaymentMethodFormattedImplToJson(
      this,
    );
  }
}

abstract class _PpobCheckoutDataPaymentMethodFormatted
    implements PpobCheckoutDataPaymentMethodFormatted {
  const factory _PpobCheckoutDataPaymentMethodFormatted(
          {@JsonKey(name: "price") required final String price}) =
      _$PpobCheckoutDataPaymentMethodFormattedImpl;

  factory _PpobCheckoutDataPaymentMethodFormatted.fromJson(
          Map<String, dynamic> json) =
      _$PpobCheckoutDataPaymentMethodFormattedImpl.fromJson;

  @override
  @JsonKey(name: "price")
  String get price;

  /// Create a copy of PpobCheckoutDataPaymentMethodFormatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobCheckoutDataPaymentMethodFormattedImplCopyWith<
          _$PpobCheckoutDataPaymentMethodFormattedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
