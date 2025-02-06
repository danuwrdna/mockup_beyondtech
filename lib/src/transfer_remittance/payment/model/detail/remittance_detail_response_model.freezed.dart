// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remittance_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemittanceDetailResponseModel _$RemittanceDetailResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RemittanceDetailResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RemittanceDetailResponseModel {
  @JsonKey(name: "data")
  RemittanceDetailData get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this RemittanceDetailResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceDetailResponseModelCopyWith<RemittanceDetailResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceDetailResponseModelCopyWith<$Res> {
  factory $RemittanceDetailResponseModelCopyWith(
          RemittanceDetailResponseModel value,
          $Res Function(RemittanceDetailResponseModel) then) =
      _$RemittanceDetailResponseModelCopyWithImpl<$Res,
          RemittanceDetailResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") RemittanceDetailData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  $RemittanceDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RemittanceDetailResponseModelCopyWithImpl<$Res,
        $Val extends RemittanceDetailResponseModel>
    implements $RemittanceDetailResponseModelCopyWith<$Res> {
  _$RemittanceDetailResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceDetailResponseModel
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
              as RemittanceDetailData,
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

  /// Create a copy of RemittanceDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceDetailDataCopyWith<$Res> get data {
    return $RemittanceDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceDetailResponseModelImplCopyWith<$Res>
    implements $RemittanceDetailResponseModelCopyWith<$Res> {
  factory _$$RemittanceDetailResponseModelImplCopyWith(
          _$RemittanceDetailResponseModelImpl value,
          $Res Function(_$RemittanceDetailResponseModelImpl) then) =
      __$$RemittanceDetailResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") RemittanceDetailData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  @override
  $RemittanceDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RemittanceDetailResponseModelImplCopyWithImpl<$Res>
    extends _$RemittanceDetailResponseModelCopyWithImpl<$Res,
        _$RemittanceDetailResponseModelImpl>
    implements _$$RemittanceDetailResponseModelImplCopyWith<$Res> {
  __$$RemittanceDetailResponseModelImplCopyWithImpl(
      _$RemittanceDetailResponseModelImpl _value,
      $Res Function(_$RemittanceDetailResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$RemittanceDetailResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailData,
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
class _$RemittanceDetailResponseModelImpl
    implements _RemittanceDetailResponseModel {
  const _$RemittanceDetailResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status_code") required this.statusCode});

  factory _$RemittanceDetailResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceDetailResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final RemittanceDetailData data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "status_code")
  final String statusCode;

  @override
  String toString() {
    return 'RemittanceDetailResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceDetailResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of RemittanceDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceDetailResponseModelImplCopyWith<
          _$RemittanceDetailResponseModelImpl>
      get copyWith => __$$RemittanceDetailResponseModelImplCopyWithImpl<
          _$RemittanceDetailResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceDetailResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RemittanceDetailResponseModel
    implements RemittanceDetailResponseModel {
  const factory _RemittanceDetailResponseModel(
          {@JsonKey(name: "data") required final RemittanceDetailData data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "status_code") required final String statusCode}) =
      _$RemittanceDetailResponseModelImpl;

  factory _RemittanceDetailResponseModel.fromJson(Map<String, dynamic> json) =
      _$RemittanceDetailResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  RemittanceDetailData get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "status_code")
  String get statusCode;

  /// Create a copy of RemittanceDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceDetailResponseModelImplCopyWith<
          _$RemittanceDetailResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceDetailData _$RemittanceDetailDataFromJson(Map<String, dynamic> json) {
  return _RemittanceDetailData.fromJson(json);
}

/// @nodoc
mixin _$RemittanceDetailData {
  @JsonKey(name: "fees")
  RemittanceDetailDataFees get fees => throw _privateConstructorUsedError;
  @JsonKey(name: "rate")
  RemittanceDetailDataRate get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "receive_amount")
  RemittanceDetailDataAmount get receiveAmount =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "send_amount")
  RemittanceDetailDataAmount get sendAmount =>
      throw _privateConstructorUsedError;

  /// Serializes this RemittanceDetailData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceDetailDataCopyWith<RemittanceDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceDetailDataCopyWith<$Res> {
  factory $RemittanceDetailDataCopyWith(RemittanceDetailData value,
          $Res Function(RemittanceDetailData) then) =
      _$RemittanceDetailDataCopyWithImpl<$Res, RemittanceDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: "fees") RemittanceDetailDataFees fees,
      @JsonKey(name: "rate") RemittanceDetailDataRate rate,
      @JsonKey(name: "receive_amount") RemittanceDetailDataAmount receiveAmount,
      @JsonKey(name: "send_amount") RemittanceDetailDataAmount sendAmount});

  $RemittanceDetailDataFeesCopyWith<$Res> get fees;
  $RemittanceDetailDataRateCopyWith<$Res> get rate;
  $RemittanceDetailDataAmountCopyWith<$Res> get receiveAmount;
  $RemittanceDetailDataAmountCopyWith<$Res> get sendAmount;
}

/// @nodoc
class _$RemittanceDetailDataCopyWithImpl<$Res,
        $Val extends RemittanceDetailData>
    implements $RemittanceDetailDataCopyWith<$Res> {
  _$RemittanceDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fees = null,
    Object? rate = null,
    Object? receiveAmount = null,
    Object? sendAmount = null,
  }) {
    return _then(_value.copyWith(
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataFees,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataRate,
      receiveAmount: null == receiveAmount
          ? _value.receiveAmount
          : receiveAmount // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataAmount,
      sendAmount: null == sendAmount
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataAmount,
    ) as $Val);
  }

  /// Create a copy of RemittanceDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceDetailDataFeesCopyWith<$Res> get fees {
    return $RemittanceDetailDataFeesCopyWith<$Res>(_value.fees, (value) {
      return _then(_value.copyWith(fees: value) as $Val);
    });
  }

  /// Create a copy of RemittanceDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceDetailDataRateCopyWith<$Res> get rate {
    return $RemittanceDetailDataRateCopyWith<$Res>(_value.rate, (value) {
      return _then(_value.copyWith(rate: value) as $Val);
    });
  }

  /// Create a copy of RemittanceDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceDetailDataAmountCopyWith<$Res> get receiveAmount {
    return $RemittanceDetailDataAmountCopyWith<$Res>(_value.receiveAmount,
        (value) {
      return _then(_value.copyWith(receiveAmount: value) as $Val);
    });
  }

  /// Create a copy of RemittanceDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceDetailDataAmountCopyWith<$Res> get sendAmount {
    return $RemittanceDetailDataAmountCopyWith<$Res>(_value.sendAmount,
        (value) {
      return _then(_value.copyWith(sendAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceDetailDataImplCopyWith<$Res>
    implements $RemittanceDetailDataCopyWith<$Res> {
  factory _$$RemittanceDetailDataImplCopyWith(_$RemittanceDetailDataImpl value,
          $Res Function(_$RemittanceDetailDataImpl) then) =
      __$$RemittanceDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fees") RemittanceDetailDataFees fees,
      @JsonKey(name: "rate") RemittanceDetailDataRate rate,
      @JsonKey(name: "receive_amount") RemittanceDetailDataAmount receiveAmount,
      @JsonKey(name: "send_amount") RemittanceDetailDataAmount sendAmount});

  @override
  $RemittanceDetailDataFeesCopyWith<$Res> get fees;
  @override
  $RemittanceDetailDataRateCopyWith<$Res> get rate;
  @override
  $RemittanceDetailDataAmountCopyWith<$Res> get receiveAmount;
  @override
  $RemittanceDetailDataAmountCopyWith<$Res> get sendAmount;
}

/// @nodoc
class __$$RemittanceDetailDataImplCopyWithImpl<$Res>
    extends _$RemittanceDetailDataCopyWithImpl<$Res, _$RemittanceDetailDataImpl>
    implements _$$RemittanceDetailDataImplCopyWith<$Res> {
  __$$RemittanceDetailDataImplCopyWithImpl(_$RemittanceDetailDataImpl _value,
      $Res Function(_$RemittanceDetailDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fees = null,
    Object? rate = null,
    Object? receiveAmount = null,
    Object? sendAmount = null,
  }) {
    return _then(_$RemittanceDetailDataImpl(
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataFees,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataRate,
      receiveAmount: null == receiveAmount
          ? _value.receiveAmount
          : receiveAmount // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataAmount,
      sendAmount: null == sendAmount
          ? _value.sendAmount
          : sendAmount // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataAmount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceDetailDataImpl implements _RemittanceDetailData {
  const _$RemittanceDetailDataImpl(
      {@JsonKey(name: "fees") required this.fees,
      @JsonKey(name: "rate") required this.rate,
      @JsonKey(name: "receive_amount") required this.receiveAmount,
      @JsonKey(name: "send_amount") required this.sendAmount});

  factory _$RemittanceDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemittanceDetailDataImplFromJson(json);

  @override
  @JsonKey(name: "fees")
  final RemittanceDetailDataFees fees;
  @override
  @JsonKey(name: "rate")
  final RemittanceDetailDataRate rate;
  @override
  @JsonKey(name: "receive_amount")
  final RemittanceDetailDataAmount receiveAmount;
  @override
  @JsonKey(name: "send_amount")
  final RemittanceDetailDataAmount sendAmount;

  @override
  String toString() {
    return 'RemittanceDetailData(fees: $fees, rate: $rate, receiveAmount: $receiveAmount, sendAmount: $sendAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceDetailDataImpl &&
            (identical(other.fees, fees) || other.fees == fees) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.receiveAmount, receiveAmount) ||
                other.receiveAmount == receiveAmount) &&
            (identical(other.sendAmount, sendAmount) ||
                other.sendAmount == sendAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fees, rate, receiveAmount, sendAmount);

  /// Create a copy of RemittanceDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceDetailDataImplCopyWith<_$RemittanceDetailDataImpl>
      get copyWith =>
          __$$RemittanceDetailDataImplCopyWithImpl<_$RemittanceDetailDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceDetailDataImplToJson(
      this,
    );
  }
}

abstract class _RemittanceDetailData implements RemittanceDetailData {
  const factory _RemittanceDetailData(
          {@JsonKey(name: "fees") required final RemittanceDetailDataFees fees,
          @JsonKey(name: "rate") required final RemittanceDetailDataRate rate,
          @JsonKey(name: "receive_amount")
          required final RemittanceDetailDataAmount receiveAmount,
          @JsonKey(name: "send_amount")
          required final RemittanceDetailDataAmount sendAmount}) =
      _$RemittanceDetailDataImpl;

  factory _RemittanceDetailData.fromJson(Map<String, dynamic> json) =
      _$RemittanceDetailDataImpl.fromJson;

  @override
  @JsonKey(name: "fees")
  RemittanceDetailDataFees get fees;
  @override
  @JsonKey(name: "rate")
  RemittanceDetailDataRate get rate;
  @override
  @JsonKey(name: "receive_amount")
  RemittanceDetailDataAmount get receiveAmount;
  @override
  @JsonKey(name: "send_amount")
  RemittanceDetailDataAmount get sendAmount;

  /// Create a copy of RemittanceDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceDetailDataImplCopyWith<_$RemittanceDetailDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceDetailDataFees _$RemittanceDetailDataFeesFromJson(
    Map<String, dynamic> json) {
  return _RemittanceDetailDataFees.fromJson(json);
}

/// @nodoc
mixin _$RemittanceDetailDataFees {
  @JsonKey(name: "formatted")
  RemittanceDetailDataFeesFormatted get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_admin_free")
  bool get isAdminFree => throw _privateConstructorUsedError;
  @JsonKey(name: "remmitance_fee")
  int get remmitanceFee => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fee")
  int get totalFee => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_fee")
  int get transactionFee => throw _privateConstructorUsedError;

  /// Serializes this RemittanceDetailDataFees to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceDetailDataFees
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceDetailDataFeesCopyWith<RemittanceDetailDataFees> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceDetailDataFeesCopyWith<$Res> {
  factory $RemittanceDetailDataFeesCopyWith(RemittanceDetailDataFees value,
          $Res Function(RemittanceDetailDataFees) then) =
      _$RemittanceDetailDataFeesCopyWithImpl<$Res, RemittanceDetailDataFees>;
  @useResult
  $Res call(
      {@JsonKey(name: "formatted") RemittanceDetailDataFeesFormatted formatted,
      @JsonKey(name: "is_admin_free") bool isAdminFree,
      @JsonKey(name: "remmitance_fee") int remmitanceFee,
      @JsonKey(name: "total_fee") int totalFee,
      @JsonKey(name: "transaction_fee") int transactionFee});

  $RemittanceDetailDataFeesFormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class _$RemittanceDetailDataFeesCopyWithImpl<$Res,
        $Val extends RemittanceDetailDataFees>
    implements $RemittanceDetailDataFeesCopyWith<$Res> {
  _$RemittanceDetailDataFeesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceDetailDataFees
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? isAdminFree = null,
    Object? remmitanceFee = null,
    Object? totalFee = null,
    Object? transactionFee = null,
  }) {
    return _then(_value.copyWith(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataFeesFormatted,
      isAdminFree: null == isAdminFree
          ? _value.isAdminFree
          : isAdminFree // ignore: cast_nullable_to_non_nullable
              as bool,
      remmitanceFee: null == remmitanceFee
          ? _value.remmitanceFee
          : remmitanceFee // ignore: cast_nullable_to_non_nullable
              as int,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as int,
      transactionFee: null == transactionFee
          ? _value.transactionFee
          : transactionFee // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RemittanceDetailDataFees
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceDetailDataFeesFormattedCopyWith<$Res> get formatted {
    return $RemittanceDetailDataFeesFormattedCopyWith<$Res>(_value.formatted,
        (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceDetailDataFeesImplCopyWith<$Res>
    implements $RemittanceDetailDataFeesCopyWith<$Res> {
  factory _$$RemittanceDetailDataFeesImplCopyWith(
          _$RemittanceDetailDataFeesImpl value,
          $Res Function(_$RemittanceDetailDataFeesImpl) then) =
      __$$RemittanceDetailDataFeesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "formatted") RemittanceDetailDataFeesFormatted formatted,
      @JsonKey(name: "is_admin_free") bool isAdminFree,
      @JsonKey(name: "remmitance_fee") int remmitanceFee,
      @JsonKey(name: "total_fee") int totalFee,
      @JsonKey(name: "transaction_fee") int transactionFee});

  @override
  $RemittanceDetailDataFeesFormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class __$$RemittanceDetailDataFeesImplCopyWithImpl<$Res>
    extends _$RemittanceDetailDataFeesCopyWithImpl<$Res,
        _$RemittanceDetailDataFeesImpl>
    implements _$$RemittanceDetailDataFeesImplCopyWith<$Res> {
  __$$RemittanceDetailDataFeesImplCopyWithImpl(
      _$RemittanceDetailDataFeesImpl _value,
      $Res Function(_$RemittanceDetailDataFeesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailDataFees
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? isAdminFree = null,
    Object? remmitanceFee = null,
    Object? totalFee = null,
    Object? transactionFee = null,
  }) {
    return _then(_$RemittanceDetailDataFeesImpl(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataFeesFormatted,
      isAdminFree: null == isAdminFree
          ? _value.isAdminFree
          : isAdminFree // ignore: cast_nullable_to_non_nullable
              as bool,
      remmitanceFee: null == remmitanceFee
          ? _value.remmitanceFee
          : remmitanceFee // ignore: cast_nullable_to_non_nullable
              as int,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as int,
      transactionFee: null == transactionFee
          ? _value.transactionFee
          : transactionFee // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceDetailDataFeesImpl implements _RemittanceDetailDataFees {
  const _$RemittanceDetailDataFeesImpl(
      {@JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "is_admin_free") required this.isAdminFree,
      @JsonKey(name: "remmitance_fee") required this.remmitanceFee,
      @JsonKey(name: "total_fee") required this.totalFee,
      @JsonKey(name: "transaction_fee") required this.transactionFee});

  factory _$RemittanceDetailDataFeesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemittanceDetailDataFeesImplFromJson(json);

  @override
  @JsonKey(name: "formatted")
  final RemittanceDetailDataFeesFormatted formatted;
  @override
  @JsonKey(name: "is_admin_free")
  final bool isAdminFree;
  @override
  @JsonKey(name: "remmitance_fee")
  final int remmitanceFee;
  @override
  @JsonKey(name: "total_fee")
  final int totalFee;
  @override
  @JsonKey(name: "transaction_fee")
  final int transactionFee;

  @override
  String toString() {
    return 'RemittanceDetailDataFees(formatted: $formatted, isAdminFree: $isAdminFree, remmitanceFee: $remmitanceFee, totalFee: $totalFee, transactionFee: $transactionFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceDetailDataFeesImpl &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.isAdminFree, isAdminFree) ||
                other.isAdminFree == isAdminFree) &&
            (identical(other.remmitanceFee, remmitanceFee) ||
                other.remmitanceFee == remmitanceFee) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.transactionFee, transactionFee) ||
                other.transactionFee == transactionFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, formatted, isAdminFree,
      remmitanceFee, totalFee, transactionFee);

  /// Create a copy of RemittanceDetailDataFees
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceDetailDataFeesImplCopyWith<_$RemittanceDetailDataFeesImpl>
      get copyWith => __$$RemittanceDetailDataFeesImplCopyWithImpl<
          _$RemittanceDetailDataFeesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceDetailDataFeesImplToJson(
      this,
    );
  }
}

abstract class _RemittanceDetailDataFees implements RemittanceDetailDataFees {
  const factory _RemittanceDetailDataFees(
      {@JsonKey(name: "formatted")
      required final RemittanceDetailDataFeesFormatted formatted,
      @JsonKey(name: "is_admin_free") required final bool isAdminFree,
      @JsonKey(name: "remmitance_fee") required final int remmitanceFee,
      @JsonKey(name: "total_fee") required final int totalFee,
      @JsonKey(name: "transaction_fee")
      required final int transactionFee}) = _$RemittanceDetailDataFeesImpl;

  factory _RemittanceDetailDataFees.fromJson(Map<String, dynamic> json) =
      _$RemittanceDetailDataFeesImpl.fromJson;

  @override
  @JsonKey(name: "formatted")
  RemittanceDetailDataFeesFormatted get formatted;
  @override
  @JsonKey(name: "is_admin_free")
  bool get isAdminFree;
  @override
  @JsonKey(name: "remmitance_fee")
  int get remmitanceFee;
  @override
  @JsonKey(name: "total_fee")
  int get totalFee;
  @override
  @JsonKey(name: "transaction_fee")
  int get transactionFee;

  /// Create a copy of RemittanceDetailDataFees
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceDetailDataFeesImplCopyWith<_$RemittanceDetailDataFeesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceDetailDataFeesFormatted _$RemittanceDetailDataFeesFormattedFromJson(
    Map<String, dynamic> json) {
  return _RemittanceDetailDataFeesFormatted.fromJson(json);
}

/// @nodoc
mixin _$RemittanceDetailDataFeesFormatted {
  @JsonKey(name: "remmitance_fee")
  String get remmitanceFee => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fee")
  String get totalFee => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_fee")
  String get transactionFee => throw _privateConstructorUsedError;

  /// Serializes this RemittanceDetailDataFeesFormatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceDetailDataFeesFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceDetailDataFeesFormattedCopyWith<RemittanceDetailDataFeesFormatted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceDetailDataFeesFormattedCopyWith<$Res> {
  factory $RemittanceDetailDataFeesFormattedCopyWith(
          RemittanceDetailDataFeesFormatted value,
          $Res Function(RemittanceDetailDataFeesFormatted) then) =
      _$RemittanceDetailDataFeesFormattedCopyWithImpl<$Res,
          RemittanceDetailDataFeesFormatted>;
  @useResult
  $Res call(
      {@JsonKey(name: "remmitance_fee") String remmitanceFee,
      @JsonKey(name: "total_fee") String totalFee,
      @JsonKey(name: "transaction_fee") String transactionFee});
}

/// @nodoc
class _$RemittanceDetailDataFeesFormattedCopyWithImpl<$Res,
        $Val extends RemittanceDetailDataFeesFormatted>
    implements $RemittanceDetailDataFeesFormattedCopyWith<$Res> {
  _$RemittanceDetailDataFeesFormattedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceDetailDataFeesFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remmitanceFee = null,
    Object? totalFee = null,
    Object? transactionFee = null,
  }) {
    return _then(_value.copyWith(
      remmitanceFee: null == remmitanceFee
          ? _value.remmitanceFee
          : remmitanceFee // ignore: cast_nullable_to_non_nullable
              as String,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String,
      transactionFee: null == transactionFee
          ? _value.transactionFee
          : transactionFee // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemittanceDetailDataFeesFormattedImplCopyWith<$Res>
    implements $RemittanceDetailDataFeesFormattedCopyWith<$Res> {
  factory _$$RemittanceDetailDataFeesFormattedImplCopyWith(
          _$RemittanceDetailDataFeesFormattedImpl value,
          $Res Function(_$RemittanceDetailDataFeesFormattedImpl) then) =
      __$$RemittanceDetailDataFeesFormattedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "remmitance_fee") String remmitanceFee,
      @JsonKey(name: "total_fee") String totalFee,
      @JsonKey(name: "transaction_fee") String transactionFee});
}

/// @nodoc
class __$$RemittanceDetailDataFeesFormattedImplCopyWithImpl<$Res>
    extends _$RemittanceDetailDataFeesFormattedCopyWithImpl<$Res,
        _$RemittanceDetailDataFeesFormattedImpl>
    implements _$$RemittanceDetailDataFeesFormattedImplCopyWith<$Res> {
  __$$RemittanceDetailDataFeesFormattedImplCopyWithImpl(
      _$RemittanceDetailDataFeesFormattedImpl _value,
      $Res Function(_$RemittanceDetailDataFeesFormattedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailDataFeesFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remmitanceFee = null,
    Object? totalFee = null,
    Object? transactionFee = null,
  }) {
    return _then(_$RemittanceDetailDataFeesFormattedImpl(
      remmitanceFee: null == remmitanceFee
          ? _value.remmitanceFee
          : remmitanceFee // ignore: cast_nullable_to_non_nullable
              as String,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String,
      transactionFee: null == transactionFee
          ? _value.transactionFee
          : transactionFee // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceDetailDataFeesFormattedImpl
    implements _RemittanceDetailDataFeesFormatted {
  const _$RemittanceDetailDataFeesFormattedImpl(
      {@JsonKey(name: "remmitance_fee") required this.remmitanceFee,
      @JsonKey(name: "total_fee") required this.totalFee,
      @JsonKey(name: "transaction_fee") required this.transactionFee});

  factory _$RemittanceDetailDataFeesFormattedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceDetailDataFeesFormattedImplFromJson(json);

  @override
  @JsonKey(name: "remmitance_fee")
  final String remmitanceFee;
  @override
  @JsonKey(name: "total_fee")
  final String totalFee;
  @override
  @JsonKey(name: "transaction_fee")
  final String transactionFee;

  @override
  String toString() {
    return 'RemittanceDetailDataFeesFormatted(remmitanceFee: $remmitanceFee, totalFee: $totalFee, transactionFee: $transactionFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceDetailDataFeesFormattedImpl &&
            (identical(other.remmitanceFee, remmitanceFee) ||
                other.remmitanceFee == remmitanceFee) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.transactionFee, transactionFee) ||
                other.transactionFee == transactionFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, remmitanceFee, totalFee, transactionFee);

  /// Create a copy of RemittanceDetailDataFeesFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceDetailDataFeesFormattedImplCopyWith<
          _$RemittanceDetailDataFeesFormattedImpl>
      get copyWith => __$$RemittanceDetailDataFeesFormattedImplCopyWithImpl<
          _$RemittanceDetailDataFeesFormattedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceDetailDataFeesFormattedImplToJson(
      this,
    );
  }
}

abstract class _RemittanceDetailDataFeesFormatted
    implements RemittanceDetailDataFeesFormatted {
  const factory _RemittanceDetailDataFeesFormatted(
          {@JsonKey(name: "remmitance_fee") required final String remmitanceFee,
          @JsonKey(name: "total_fee") required final String totalFee,
          @JsonKey(name: "transaction_fee")
          required final String transactionFee}) =
      _$RemittanceDetailDataFeesFormattedImpl;

  factory _RemittanceDetailDataFeesFormatted.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceDetailDataFeesFormattedImpl.fromJson;

  @override
  @JsonKey(name: "remmitance_fee")
  String get remmitanceFee;
  @override
  @JsonKey(name: "total_fee")
  String get totalFee;
  @override
  @JsonKey(name: "transaction_fee")
  String get transactionFee;

  /// Create a copy of RemittanceDetailDataFeesFormatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceDetailDataFeesFormattedImplCopyWith<
          _$RemittanceDetailDataFeesFormattedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceDetailDataRate _$RemittanceDetailDataRateFromJson(
    Map<String, dynamic> json) {
  return _RemittanceDetailDataRate.fromJson(json);
}

/// @nodoc
mixin _$RemittanceDetailDataRate {
  @JsonKey(name: "formatted")
  RemittanceDetailDataRateFormatted get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "fx_rate")
  int get fxRemittanceDetailDataRate => throw _privateConstructorUsedError;

  /// Serializes this RemittanceDetailDataRate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceDetailDataRateCopyWith<RemittanceDetailDataRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceDetailDataRateCopyWith<$Res> {
  factory $RemittanceDetailDataRateCopyWith(RemittanceDetailDataRate value,
          $Res Function(RemittanceDetailDataRate) then) =
      _$RemittanceDetailDataRateCopyWithImpl<$Res, RemittanceDetailDataRate>;
  @useResult
  $Res call(
      {@JsonKey(name: "formatted") RemittanceDetailDataRateFormatted formatted,
      @JsonKey(name: "fx_rate") int fxRemittanceDetailDataRate});

  $RemittanceDetailDataRateFormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class _$RemittanceDetailDataRateCopyWithImpl<$Res,
        $Val extends RemittanceDetailDataRate>
    implements $RemittanceDetailDataRateCopyWith<$Res> {
  _$RemittanceDetailDataRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? fxRemittanceDetailDataRate = null,
  }) {
    return _then(_value.copyWith(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataRateFormatted,
      fxRemittanceDetailDataRate: null == fxRemittanceDetailDataRate
          ? _value.fxRemittanceDetailDataRate
          : fxRemittanceDetailDataRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RemittanceDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceDetailDataRateFormattedCopyWith<$Res> get formatted {
    return $RemittanceDetailDataRateFormattedCopyWith<$Res>(_value.formatted,
        (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceDetailDataRateImplCopyWith<$Res>
    implements $RemittanceDetailDataRateCopyWith<$Res> {
  factory _$$RemittanceDetailDataRateImplCopyWith(
          _$RemittanceDetailDataRateImpl value,
          $Res Function(_$RemittanceDetailDataRateImpl) then) =
      __$$RemittanceDetailDataRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "formatted") RemittanceDetailDataRateFormatted formatted,
      @JsonKey(name: "fx_rate") int fxRemittanceDetailDataRate});

  @override
  $RemittanceDetailDataRateFormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class __$$RemittanceDetailDataRateImplCopyWithImpl<$Res>
    extends _$RemittanceDetailDataRateCopyWithImpl<$Res,
        _$RemittanceDetailDataRateImpl>
    implements _$$RemittanceDetailDataRateImplCopyWith<$Res> {
  __$$RemittanceDetailDataRateImplCopyWithImpl(
      _$RemittanceDetailDataRateImpl _value,
      $Res Function(_$RemittanceDetailDataRateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? fxRemittanceDetailDataRate = null,
  }) {
    return _then(_$RemittanceDetailDataRateImpl(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataRateFormatted,
      fxRemittanceDetailDataRate: null == fxRemittanceDetailDataRate
          ? _value.fxRemittanceDetailDataRate
          : fxRemittanceDetailDataRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceDetailDataRateImpl implements _RemittanceDetailDataRate {
  const _$RemittanceDetailDataRateImpl(
      {@JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "fx_rate") required this.fxRemittanceDetailDataRate});

  factory _$RemittanceDetailDataRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemittanceDetailDataRateImplFromJson(json);

  @override
  @JsonKey(name: "formatted")
  final RemittanceDetailDataRateFormatted formatted;
  @override
  @JsonKey(name: "fx_rate")
  final int fxRemittanceDetailDataRate;

  @override
  String toString() {
    return 'RemittanceDetailDataRate(formatted: $formatted, fxRemittanceDetailDataRate: $fxRemittanceDetailDataRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceDetailDataRateImpl &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.fxRemittanceDetailDataRate,
                    fxRemittanceDetailDataRate) ||
                other.fxRemittanceDetailDataRate ==
                    fxRemittanceDetailDataRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, formatted, fxRemittanceDetailDataRate);

  /// Create a copy of RemittanceDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceDetailDataRateImplCopyWith<_$RemittanceDetailDataRateImpl>
      get copyWith => __$$RemittanceDetailDataRateImplCopyWithImpl<
          _$RemittanceDetailDataRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceDetailDataRateImplToJson(
      this,
    );
  }
}

abstract class _RemittanceDetailDataRate implements RemittanceDetailDataRate {
  const factory _RemittanceDetailDataRate(
          {@JsonKey(name: "formatted")
          required final RemittanceDetailDataRateFormatted formatted,
          @JsonKey(name: "fx_rate")
          required final int fxRemittanceDetailDataRate}) =
      _$RemittanceDetailDataRateImpl;

  factory _RemittanceDetailDataRate.fromJson(Map<String, dynamic> json) =
      _$RemittanceDetailDataRateImpl.fromJson;

  @override
  @JsonKey(name: "formatted")
  RemittanceDetailDataRateFormatted get formatted;
  @override
  @JsonKey(name: "fx_rate")
  int get fxRemittanceDetailDataRate;

  /// Create a copy of RemittanceDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceDetailDataRateImplCopyWith<_$RemittanceDetailDataRateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceDetailDataRateFormatted _$RemittanceDetailDataRateFormattedFromJson(
    Map<String, dynamic> json) {
  return _RemittanceDetailDataRateFormatted.fromJson(json);
}

/// @nodoc
mixin _$RemittanceDetailDataRateFormatted {
  @JsonKey(name: "nominal")
  String get nominal => throw _privateConstructorUsedError;

  /// Serializes this RemittanceDetailDataRateFormatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceDetailDataRateFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceDetailDataRateFormattedCopyWith<RemittanceDetailDataRateFormatted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceDetailDataRateFormattedCopyWith<$Res> {
  factory $RemittanceDetailDataRateFormattedCopyWith(
          RemittanceDetailDataRateFormatted value,
          $Res Function(RemittanceDetailDataRateFormatted) then) =
      _$RemittanceDetailDataRateFormattedCopyWithImpl<$Res,
          RemittanceDetailDataRateFormatted>;
  @useResult
  $Res call({@JsonKey(name: "nominal") String nominal});
}

/// @nodoc
class _$RemittanceDetailDataRateFormattedCopyWithImpl<$Res,
        $Val extends RemittanceDetailDataRateFormatted>
    implements $RemittanceDetailDataRateFormattedCopyWith<$Res> {
  _$RemittanceDetailDataRateFormattedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceDetailDataRateFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nominal = null,
  }) {
    return _then(_value.copyWith(
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemittanceDetailDataRateFormattedImplCopyWith<$Res>
    implements $RemittanceDetailDataRateFormattedCopyWith<$Res> {
  factory _$$RemittanceDetailDataRateFormattedImplCopyWith(
          _$RemittanceDetailDataRateFormattedImpl value,
          $Res Function(_$RemittanceDetailDataRateFormattedImpl) then) =
      __$$RemittanceDetailDataRateFormattedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "nominal") String nominal});
}

/// @nodoc
class __$$RemittanceDetailDataRateFormattedImplCopyWithImpl<$Res>
    extends _$RemittanceDetailDataRateFormattedCopyWithImpl<$Res,
        _$RemittanceDetailDataRateFormattedImpl>
    implements _$$RemittanceDetailDataRateFormattedImplCopyWith<$Res> {
  __$$RemittanceDetailDataRateFormattedImplCopyWithImpl(
      _$RemittanceDetailDataRateFormattedImpl _value,
      $Res Function(_$RemittanceDetailDataRateFormattedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailDataRateFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nominal = null,
  }) {
    return _then(_$RemittanceDetailDataRateFormattedImpl(
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceDetailDataRateFormattedImpl
    implements _RemittanceDetailDataRateFormatted {
  const _$RemittanceDetailDataRateFormattedImpl(
      {@JsonKey(name: "nominal") required this.nominal});

  factory _$RemittanceDetailDataRateFormattedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceDetailDataRateFormattedImplFromJson(json);

  @override
  @JsonKey(name: "nominal")
  final String nominal;

  @override
  String toString() {
    return 'RemittanceDetailDataRateFormatted(nominal: $nominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceDetailDataRateFormattedImpl &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nominal);

  /// Create a copy of RemittanceDetailDataRateFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceDetailDataRateFormattedImplCopyWith<
          _$RemittanceDetailDataRateFormattedImpl>
      get copyWith => __$$RemittanceDetailDataRateFormattedImplCopyWithImpl<
          _$RemittanceDetailDataRateFormattedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceDetailDataRateFormattedImplToJson(
      this,
    );
  }
}

abstract class _RemittanceDetailDataRateFormatted
    implements RemittanceDetailDataRateFormatted {
  const factory _RemittanceDetailDataRateFormatted(
          {@JsonKey(name: "nominal") required final String nominal}) =
      _$RemittanceDetailDataRateFormattedImpl;

  factory _RemittanceDetailDataRateFormatted.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceDetailDataRateFormattedImpl.fromJson;

  @override
  @JsonKey(name: "nominal")
  String get nominal;

  /// Create a copy of RemittanceDetailDataRateFormatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceDetailDataRateFormattedImplCopyWith<
          _$RemittanceDetailDataRateFormattedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceDetailDataAmount _$RemittanceDetailDataAmountFromJson(
    Map<String, dynamic> json) {
  return _RemittanceDetailDataAmount.fromJson(json);
}

/// @nodoc
mixin _$RemittanceDetailDataAmount {
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted")
  RemittanceDetailDataRateFormatted get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "nominal")
  double get nominal => throw _privateConstructorUsedError;

  /// Serializes this RemittanceDetailDataAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceDetailDataAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceDetailDataAmountCopyWith<RemittanceDetailDataAmount>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceDetailDataAmountCopyWith<$Res> {
  factory $RemittanceDetailDataAmountCopyWith(RemittanceDetailDataAmount value,
          $Res Function(RemittanceDetailDataAmount) then) =
      _$RemittanceDetailDataAmountCopyWithImpl<$Res,
          RemittanceDetailDataAmount>;
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "formatted") RemittanceDetailDataRateFormatted formatted,
      @JsonKey(name: "nominal") double nominal});

  $RemittanceDetailDataRateFormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class _$RemittanceDetailDataAmountCopyWithImpl<$Res,
        $Val extends RemittanceDetailDataAmount>
    implements $RemittanceDetailDataAmountCopyWith<$Res> {
  _$RemittanceDetailDataAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceDetailDataAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? currencyCode = null,
    Object? formatted = null,
    Object? nominal = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataRateFormatted,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of RemittanceDetailDataAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceDetailDataRateFormattedCopyWith<$Res> get formatted {
    return $RemittanceDetailDataRateFormattedCopyWith<$Res>(_value.formatted,
        (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceDetailDataAmountImplCopyWith<$Res>
    implements $RemittanceDetailDataAmountCopyWith<$Res> {
  factory _$$RemittanceDetailDataAmountImplCopyWith(
          _$RemittanceDetailDataAmountImpl value,
          $Res Function(_$RemittanceDetailDataAmountImpl) then) =
      __$$RemittanceDetailDataAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "formatted") RemittanceDetailDataRateFormatted formatted,
      @JsonKey(name: "nominal") double nominal});

  @override
  $RemittanceDetailDataRateFormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class __$$RemittanceDetailDataAmountImplCopyWithImpl<$Res>
    extends _$RemittanceDetailDataAmountCopyWithImpl<$Res,
        _$RemittanceDetailDataAmountImpl>
    implements _$$RemittanceDetailDataAmountImplCopyWith<$Res> {
  __$$RemittanceDetailDataAmountImplCopyWithImpl(
      _$RemittanceDetailDataAmountImpl _value,
      $Res Function(_$RemittanceDetailDataAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailDataAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? currencyCode = null,
    Object? formatted = null,
    Object? nominal = null,
  }) {
    return _then(_$RemittanceDetailDataAmountImpl(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailDataRateFormatted,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceDetailDataAmountImpl implements _RemittanceDetailDataAmount {
  const _$RemittanceDetailDataAmountImpl(
      {@JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "currency_code") required this.currencyCode,
      @JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "nominal") required this.nominal});

  factory _$RemittanceDetailDataAmountImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceDetailDataAmountImplFromJson(json);

  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "currency_code")
  final String currencyCode;
  @override
  @JsonKey(name: "formatted")
  final RemittanceDetailDataRateFormatted formatted;
  @override
  @JsonKey(name: "nominal")
  final double nominal;

  @override
  String toString() {
    return 'RemittanceDetailDataAmount(countryCode: $countryCode, currencyCode: $currencyCode, formatted: $formatted, nominal: $nominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceDetailDataAmountImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, countryCode, currencyCode, formatted, nominal);

  /// Create a copy of RemittanceDetailDataAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceDetailDataAmountImplCopyWith<_$RemittanceDetailDataAmountImpl>
      get copyWith => __$$RemittanceDetailDataAmountImplCopyWithImpl<
          _$RemittanceDetailDataAmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceDetailDataAmountImplToJson(
      this,
    );
  }
}

abstract class _RemittanceDetailDataAmount
    implements RemittanceDetailDataAmount {
  const factory _RemittanceDetailDataAmount(
          {@JsonKey(name: "country_code") required final String countryCode,
          @JsonKey(name: "currency_code") required final String currencyCode,
          @JsonKey(name: "formatted")
          required final RemittanceDetailDataRateFormatted formatted,
          @JsonKey(name: "nominal") required final double nominal}) =
      _$RemittanceDetailDataAmountImpl;

  factory _RemittanceDetailDataAmount.fromJson(Map<String, dynamic> json) =
      _$RemittanceDetailDataAmountImpl.fromJson;

  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "currency_code")
  String get currencyCode;
  @override
  @JsonKey(name: "formatted")
  RemittanceDetailDataRateFormatted get formatted;
  @override
  @JsonKey(name: "nominal")
  double get nominal;

  /// Create a copy of RemittanceDetailDataAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceDetailDataAmountImplCopyWith<_$RemittanceDetailDataAmountImpl>
      get copyWith => throw _privateConstructorUsedError;
}
