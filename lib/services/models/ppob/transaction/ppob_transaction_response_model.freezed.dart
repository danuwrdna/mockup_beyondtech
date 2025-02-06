// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ppob_transaction_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PpobTransactionResponseModel _$PpobTransactionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionResponseModel {
  @JsonKey(name: "data")
  PpobTransactionData get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionResponseModelCopyWith<PpobTransactionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionResponseModelCopyWith<$Res> {
  factory $PpobTransactionResponseModelCopyWith(
          PpobTransactionResponseModel value,
          $Res Function(PpobTransactionResponseModel) then) =
      _$PpobTransactionResponseModelCopyWithImpl<$Res,
          PpobTransactionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") PpobTransactionData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  $PpobTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PpobTransactionResponseModelCopyWithImpl<$Res,
        $Val extends PpobTransactionResponseModel>
    implements $PpobTransactionResponseModelCopyWith<$Res> {
  _$PpobTransactionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionResponseModel
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
              as PpobTransactionData,
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

  /// Create a copy of PpobTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionDataCopyWith<$Res> get data {
    return $PpobTransactionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobTransactionResponseModelImplCopyWith<$Res>
    implements $PpobTransactionResponseModelCopyWith<$Res> {
  factory _$$PpobTransactionResponseModelImplCopyWith(
          _$PpobTransactionResponseModelImpl value,
          $Res Function(_$PpobTransactionResponseModelImpl) then) =
      __$$PpobTransactionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") PpobTransactionData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  @override
  $PpobTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PpobTransactionResponseModelImplCopyWithImpl<$Res>
    extends _$PpobTransactionResponseModelCopyWithImpl<$Res,
        _$PpobTransactionResponseModelImpl>
    implements _$$PpobTransactionResponseModelImplCopyWith<$Res> {
  __$$PpobTransactionResponseModelImplCopyWithImpl(
      _$PpobTransactionResponseModelImpl _value,
      $Res Function(_$PpobTransactionResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$PpobTransactionResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PpobTransactionData,
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
class _$PpobTransactionResponseModelImpl
    implements _PpobTransactionResponseModel {
  const _$PpobTransactionResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status_code") required this.statusCode});

  factory _$PpobTransactionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final PpobTransactionData data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "status_code")
  final String statusCode;

  @override
  String toString() {
    return 'PpobTransactionResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of PpobTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionResponseModelImplCopyWith<
          _$PpobTransactionResponseModelImpl>
      get copyWith => __$$PpobTransactionResponseModelImplCopyWithImpl<
          _$PpobTransactionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionResponseModel
    implements PpobTransactionResponseModel {
  const factory _PpobTransactionResponseModel(
          {@JsonKey(name: "data") required final PpobTransactionData data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "status_code") required final String statusCode}) =
      _$PpobTransactionResponseModelImpl;

  factory _PpobTransactionResponseModel.fromJson(Map<String, dynamic> json) =
      _$PpobTransactionResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  PpobTransactionData get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "status_code")
  String get statusCode;

  /// Create a copy of PpobTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionResponseModelImplCopyWith<
          _$PpobTransactionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobTransactionData _$PpobTransactionDataFromJson(Map<String, dynamic> json) {
  return _PpobTransactionData.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionData {
  @JsonKey(name: "created_at")
  int get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_at")
  int get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: "feature_fee")
  int get featureFee => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted")
  PpobTransactionDataFormatted get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "instruction")
  PpobTransactionInstruction get instruction =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_feature_free")
  bool get isFeatureFree => throw _privateConstructorUsedError;
  @JsonKey(name: "is_payment_free")
  bool get isPaymentFree => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_at")
  int get paidAt => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_channel")
  PpobTransactionPaymentChannel get paymentChannel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payment_fee")
  int get paymentFee => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "status_transaction")
  String get statusTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fee")
  int get totalFee => throw _privateConstructorUsedError;
  @JsonKey(name: "total_payment")
  int get totalPayment => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_id")
  String get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "unique_code")
  int get uniqueCode => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionDataCopyWith<PpobTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionDataCopyWith<$Res> {
  factory $PpobTransactionDataCopyWith(
          PpobTransactionData value, $Res Function(PpobTransactionData) then) =
      _$PpobTransactionDataCopyWithImpl<$Res, PpobTransactionData>;
  @useResult
  $Res call(
      {@JsonKey(name: "created_at") int createdAt,
      @JsonKey(name: "expired_at") int expiredAt,
      @JsonKey(name: "feature_fee") int featureFee,
      @JsonKey(name: "formatted") PpobTransactionDataFormatted formatted,
      @JsonKey(name: "instruction") PpobTransactionInstruction instruction,
      @JsonKey(name: "is_feature_free") bool isFeatureFree,
      @JsonKey(name: "is_payment_free") bool isPaymentFree,
      @JsonKey(name: "paid_at") int paidAt,
      @JsonKey(name: "payment_channel")
      PpobTransactionPaymentChannel paymentChannel,
      @JsonKey(name: "payment_fee") int paymentFee,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "status_transaction") String statusTransaction,
      @JsonKey(name: "total_fee") int totalFee,
      @JsonKey(name: "total_payment") int totalPayment,
      @JsonKey(name: "transaction_id") String transactionId,
      @JsonKey(name: "unique_code") int uniqueCode});

  $PpobTransactionDataFormattedCopyWith<$Res> get formatted;
  $PpobTransactionInstructionCopyWith<$Res> get instruction;
  $PpobTransactionPaymentChannelCopyWith<$Res> get paymentChannel;
}

/// @nodoc
class _$PpobTransactionDataCopyWithImpl<$Res, $Val extends PpobTransactionData>
    implements $PpobTransactionDataCopyWith<$Res> {
  _$PpobTransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? expiredAt = null,
    Object? featureFee = null,
    Object? formatted = null,
    Object? instruction = null,
    Object? isFeatureFree = null,
    Object? isPaymentFree = null,
    Object? paidAt = null,
    Object? paymentChannel = null,
    Object? paymentFee = null,
    Object? price = null,
    Object? statusTransaction = null,
    Object? totalFee = null,
    Object? totalPayment = null,
    Object? transactionId = null,
    Object? uniqueCode = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiredAt: null == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int,
      featureFee: null == featureFee
          ? _value.featureFee
          : featureFee // ignore: cast_nullable_to_non_nullable
              as int,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDataFormatted,
      instruction: null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as PpobTransactionInstruction,
      isFeatureFree: null == isFeatureFree
          ? _value.isFeatureFree
          : isFeatureFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentFree: null == isPaymentFree
          ? _value.isPaymentFree
          : isPaymentFree // ignore: cast_nullable_to_non_nullable
              as bool,
      paidAt: null == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as int,
      paymentChannel: null == paymentChannel
          ? _value.paymentChannel
          : paymentChannel // ignore: cast_nullable_to_non_nullable
              as PpobTransactionPaymentChannel,
      paymentFee: null == paymentFee
          ? _value.paymentFee
          : paymentFee // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      statusTransaction: null == statusTransaction
          ? _value.statusTransaction
          : statusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as int,
      totalPayment: null == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PpobTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionDataFormattedCopyWith<$Res> get formatted {
    return $PpobTransactionDataFormattedCopyWith<$Res>(_value.formatted,
        (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }

  /// Create a copy of PpobTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionInstructionCopyWith<$Res> get instruction {
    return $PpobTransactionInstructionCopyWith<$Res>(_value.instruction,
        (value) {
      return _then(_value.copyWith(instruction: value) as $Val);
    });
  }

  /// Create a copy of PpobTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionPaymentChannelCopyWith<$Res> get paymentChannel {
    return $PpobTransactionPaymentChannelCopyWith<$Res>(_value.paymentChannel,
        (value) {
      return _then(_value.copyWith(paymentChannel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobTransactionDataImplCopyWith<$Res>
    implements $PpobTransactionDataCopyWith<$Res> {
  factory _$$PpobTransactionDataImplCopyWith(_$PpobTransactionDataImpl value,
          $Res Function(_$PpobTransactionDataImpl) then) =
      __$$PpobTransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "created_at") int createdAt,
      @JsonKey(name: "expired_at") int expiredAt,
      @JsonKey(name: "feature_fee") int featureFee,
      @JsonKey(name: "formatted") PpobTransactionDataFormatted formatted,
      @JsonKey(name: "instruction") PpobTransactionInstruction instruction,
      @JsonKey(name: "is_feature_free") bool isFeatureFree,
      @JsonKey(name: "is_payment_free") bool isPaymentFree,
      @JsonKey(name: "paid_at") int paidAt,
      @JsonKey(name: "payment_channel")
      PpobTransactionPaymentChannel paymentChannel,
      @JsonKey(name: "payment_fee") int paymentFee,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "status_transaction") String statusTransaction,
      @JsonKey(name: "total_fee") int totalFee,
      @JsonKey(name: "total_payment") int totalPayment,
      @JsonKey(name: "transaction_id") String transactionId,
      @JsonKey(name: "unique_code") int uniqueCode});

  @override
  $PpobTransactionDataFormattedCopyWith<$Res> get formatted;
  @override
  $PpobTransactionInstructionCopyWith<$Res> get instruction;
  @override
  $PpobTransactionPaymentChannelCopyWith<$Res> get paymentChannel;
}

/// @nodoc
class __$$PpobTransactionDataImplCopyWithImpl<$Res>
    extends _$PpobTransactionDataCopyWithImpl<$Res, _$PpobTransactionDataImpl>
    implements _$$PpobTransactionDataImplCopyWith<$Res> {
  __$$PpobTransactionDataImplCopyWithImpl(_$PpobTransactionDataImpl _value,
      $Res Function(_$PpobTransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? expiredAt = null,
    Object? featureFee = null,
    Object? formatted = null,
    Object? instruction = null,
    Object? isFeatureFree = null,
    Object? isPaymentFree = null,
    Object? paidAt = null,
    Object? paymentChannel = null,
    Object? paymentFee = null,
    Object? price = null,
    Object? statusTransaction = null,
    Object? totalFee = null,
    Object? totalPayment = null,
    Object? transactionId = null,
    Object? uniqueCode = null,
  }) {
    return _then(_$PpobTransactionDataImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiredAt: null == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int,
      featureFee: null == featureFee
          ? _value.featureFee
          : featureFee // ignore: cast_nullable_to_non_nullable
              as int,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDataFormatted,
      instruction: null == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as PpobTransactionInstruction,
      isFeatureFree: null == isFeatureFree
          ? _value.isFeatureFree
          : isFeatureFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentFree: null == isPaymentFree
          ? _value.isPaymentFree
          : isPaymentFree // ignore: cast_nullable_to_non_nullable
              as bool,
      paidAt: null == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as int,
      paymentChannel: null == paymentChannel
          ? _value.paymentChannel
          : paymentChannel // ignore: cast_nullable_to_non_nullable
              as PpobTransactionPaymentChannel,
      paymentFee: null == paymentFee
          ? _value.paymentFee
          : paymentFee // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      statusTransaction: null == statusTransaction
          ? _value.statusTransaction
          : statusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as int,
      totalPayment: null == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobTransactionDataImpl implements _PpobTransactionData {
  const _$PpobTransactionDataImpl(
      {@JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "expired_at") required this.expiredAt,
      @JsonKey(name: "feature_fee") required this.featureFee,
      @JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "instruction") required this.instruction,
      @JsonKey(name: "is_feature_free") required this.isFeatureFree,
      @JsonKey(name: "is_payment_free") required this.isPaymentFree,
      @JsonKey(name: "paid_at") required this.paidAt,
      @JsonKey(name: "payment_channel") required this.paymentChannel,
      @JsonKey(name: "payment_fee") required this.paymentFee,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "status_transaction") required this.statusTransaction,
      @JsonKey(name: "total_fee") required this.totalFee,
      @JsonKey(name: "total_payment") required this.totalPayment,
      @JsonKey(name: "transaction_id") required this.transactionId,
      @JsonKey(name: "unique_code") required this.uniqueCode});

  factory _$PpobTransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobTransactionDataImplFromJson(json);

  @override
  @JsonKey(name: "created_at")
  final int createdAt;
  @override
  @JsonKey(name: "expired_at")
  final int expiredAt;
  @override
  @JsonKey(name: "feature_fee")
  final int featureFee;
  @override
  @JsonKey(name: "formatted")
  final PpobTransactionDataFormatted formatted;
  @override
  @JsonKey(name: "instruction")
  final PpobTransactionInstruction instruction;
  @override
  @JsonKey(name: "is_feature_free")
  final bool isFeatureFree;
  @override
  @JsonKey(name: "is_payment_free")
  final bool isPaymentFree;
  @override
  @JsonKey(name: "paid_at")
  final int paidAt;
  @override
  @JsonKey(name: "payment_channel")
  final PpobTransactionPaymentChannel paymentChannel;
  @override
  @JsonKey(name: "payment_fee")
  final int paymentFee;
  @override
  @JsonKey(name: "price")
  final int price;
  @override
  @JsonKey(name: "status_transaction")
  final String statusTransaction;
  @override
  @JsonKey(name: "total_fee")
  final int totalFee;
  @override
  @JsonKey(name: "total_payment")
  final int totalPayment;
  @override
  @JsonKey(name: "transaction_id")
  final String transactionId;
  @override
  @JsonKey(name: "unique_code")
  final int uniqueCode;

  @override
  String toString() {
    return 'PpobTransactionData(createdAt: $createdAt, expiredAt: $expiredAt, featureFee: $featureFee, formatted: $formatted, instruction: $instruction, isFeatureFree: $isFeatureFree, isPaymentFree: $isPaymentFree, paidAt: $paidAt, paymentChannel: $paymentChannel, paymentFee: $paymentFee, price: $price, statusTransaction: $statusTransaction, totalFee: $totalFee, totalPayment: $totalPayment, transactionId: $transactionId, uniqueCode: $uniqueCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionDataImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.featureFee, featureFee) ||
                other.featureFee == featureFee) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction) &&
            (identical(other.isFeatureFree, isFeatureFree) ||
                other.isFeatureFree == isFeatureFree) &&
            (identical(other.isPaymentFree, isPaymentFree) ||
                other.isPaymentFree == isPaymentFree) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.paymentChannel, paymentChannel) ||
                other.paymentChannel == paymentChannel) &&
            (identical(other.paymentFee, paymentFee) ||
                other.paymentFee == paymentFee) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.statusTransaction, statusTransaction) ||
                other.statusTransaction == statusTransaction) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.totalPayment, totalPayment) ||
                other.totalPayment == totalPayment) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.uniqueCode, uniqueCode) ||
                other.uniqueCode == uniqueCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      expiredAt,
      featureFee,
      formatted,
      instruction,
      isFeatureFree,
      isPaymentFree,
      paidAt,
      paymentChannel,
      paymentFee,
      price,
      statusTransaction,
      totalFee,
      totalPayment,
      transactionId,
      uniqueCode);

  /// Create a copy of PpobTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionDataImplCopyWith<_$PpobTransactionDataImpl> get copyWith =>
      __$$PpobTransactionDataImplCopyWithImpl<_$PpobTransactionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionDataImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionData implements PpobTransactionData {
  const factory _PpobTransactionData(
          {@JsonKey(name: "created_at") required final int createdAt,
          @JsonKey(name: "expired_at") required final int expiredAt,
          @JsonKey(name: "feature_fee") required final int featureFee,
          @JsonKey(name: "formatted")
          required final PpobTransactionDataFormatted formatted,
          @JsonKey(name: "instruction")
          required final PpobTransactionInstruction instruction,
          @JsonKey(name: "is_feature_free") required final bool isFeatureFree,
          @JsonKey(name: "is_payment_free") required final bool isPaymentFree,
          @JsonKey(name: "paid_at") required final int paidAt,
          @JsonKey(name: "payment_channel")
          required final PpobTransactionPaymentChannel paymentChannel,
          @JsonKey(name: "payment_fee") required final int paymentFee,
          @JsonKey(name: "price") required final int price,
          @JsonKey(name: "status_transaction")
          required final String statusTransaction,
          @JsonKey(name: "total_fee") required final int totalFee,
          @JsonKey(name: "total_payment") required final int totalPayment,
          @JsonKey(name: "transaction_id") required final String transactionId,
          @JsonKey(name: "unique_code") required final int uniqueCode}) =
      _$PpobTransactionDataImpl;

  factory _PpobTransactionData.fromJson(Map<String, dynamic> json) =
      _$PpobTransactionDataImpl.fromJson;

  @override
  @JsonKey(name: "created_at")
  int get createdAt;
  @override
  @JsonKey(name: "expired_at")
  int get expiredAt;
  @override
  @JsonKey(name: "feature_fee")
  int get featureFee;
  @override
  @JsonKey(name: "formatted")
  PpobTransactionDataFormatted get formatted;
  @override
  @JsonKey(name: "instruction")
  PpobTransactionInstruction get instruction;
  @override
  @JsonKey(name: "is_feature_free")
  bool get isFeatureFree;
  @override
  @JsonKey(name: "is_payment_free")
  bool get isPaymentFree;
  @override
  @JsonKey(name: "paid_at")
  int get paidAt;
  @override
  @JsonKey(name: "payment_channel")
  PpobTransactionPaymentChannel get paymentChannel;
  @override
  @JsonKey(name: "payment_fee")
  int get paymentFee;
  @override
  @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(name: "status_transaction")
  String get statusTransaction;
  @override
  @JsonKey(name: "total_fee")
  int get totalFee;
  @override
  @JsonKey(name: "total_payment")
  int get totalPayment;
  @override
  @JsonKey(name: "transaction_id")
  String get transactionId;
  @override
  @JsonKey(name: "unique_code")
  int get uniqueCode;

  /// Create a copy of PpobTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionDataImplCopyWith<_$PpobTransactionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PpobTransactionDataFormatted _$PpobTransactionDataFormattedFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionDataFormatted.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionDataFormatted {
  @JsonKey(name: "feature_fee")
  String get featureFee => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_fee")
  String get paymentFee => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fee")
  String get totalFee => throw _privateConstructorUsedError;
  @JsonKey(name: "total_payment")
  String get totalPayment => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionDataFormatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionDataFormattedCopyWith<PpobTransactionDataFormatted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionDataFormattedCopyWith<$Res> {
  factory $PpobTransactionDataFormattedCopyWith(
          PpobTransactionDataFormatted value,
          $Res Function(PpobTransactionDataFormatted) then) =
      _$PpobTransactionDataFormattedCopyWithImpl<$Res,
          PpobTransactionDataFormatted>;
  @useResult
  $Res call(
      {@JsonKey(name: "feature_fee") String featureFee,
      @JsonKey(name: "payment_fee") String paymentFee,
      @JsonKey(name: "price") String price,
      @JsonKey(name: "total_fee") String totalFee,
      @JsonKey(name: "total_payment") String totalPayment});
}

/// @nodoc
class _$PpobTransactionDataFormattedCopyWithImpl<$Res,
        $Val extends PpobTransactionDataFormatted>
    implements $PpobTransactionDataFormattedCopyWith<$Res> {
  _$PpobTransactionDataFormattedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? featureFee = null,
    Object? paymentFee = null,
    Object? price = null,
    Object? totalFee = null,
    Object? totalPayment = null,
  }) {
    return _then(_value.copyWith(
      featureFee: null == featureFee
          ? _value.featureFee
          : featureFee // ignore: cast_nullable_to_non_nullable
              as String,
      paymentFee: null == paymentFee
          ? _value.paymentFee
          : paymentFee // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String,
      totalPayment: null == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobTransactionDataFormattedImplCopyWith<$Res>
    implements $PpobTransactionDataFormattedCopyWith<$Res> {
  factory _$$PpobTransactionDataFormattedImplCopyWith(
          _$PpobTransactionDataFormattedImpl value,
          $Res Function(_$PpobTransactionDataFormattedImpl) then) =
      __$$PpobTransactionDataFormattedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "feature_fee") String featureFee,
      @JsonKey(name: "payment_fee") String paymentFee,
      @JsonKey(name: "price") String price,
      @JsonKey(name: "total_fee") String totalFee,
      @JsonKey(name: "total_payment") String totalPayment});
}

/// @nodoc
class __$$PpobTransactionDataFormattedImplCopyWithImpl<$Res>
    extends _$PpobTransactionDataFormattedCopyWithImpl<$Res,
        _$PpobTransactionDataFormattedImpl>
    implements _$$PpobTransactionDataFormattedImplCopyWith<$Res> {
  __$$PpobTransactionDataFormattedImplCopyWithImpl(
      _$PpobTransactionDataFormattedImpl _value,
      $Res Function(_$PpobTransactionDataFormattedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? featureFee = null,
    Object? paymentFee = null,
    Object? price = null,
    Object? totalFee = null,
    Object? totalPayment = null,
  }) {
    return _then(_$PpobTransactionDataFormattedImpl(
      featureFee: null == featureFee
          ? _value.featureFee
          : featureFee // ignore: cast_nullable_to_non_nullable
              as String,
      paymentFee: null == paymentFee
          ? _value.paymentFee
          : paymentFee // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String,
      totalPayment: null == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobTransactionDataFormattedImpl
    implements _PpobTransactionDataFormatted {
  const _$PpobTransactionDataFormattedImpl(
      {@JsonKey(name: "feature_fee") required this.featureFee,
      @JsonKey(name: "payment_fee") required this.paymentFee,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "total_fee") required this.totalFee,
      @JsonKey(name: "total_payment") required this.totalPayment});

  factory _$PpobTransactionDataFormattedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionDataFormattedImplFromJson(json);

  @override
  @JsonKey(name: "feature_fee")
  final String featureFee;
  @override
  @JsonKey(name: "payment_fee")
  final String paymentFee;
  @override
  @JsonKey(name: "price")
  final String price;
  @override
  @JsonKey(name: "total_fee")
  final String totalFee;
  @override
  @JsonKey(name: "total_payment")
  final String totalPayment;

  @override
  String toString() {
    return 'PpobTransactionDataFormatted(featureFee: $featureFee, paymentFee: $paymentFee, price: $price, totalFee: $totalFee, totalPayment: $totalPayment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionDataFormattedImpl &&
            (identical(other.featureFee, featureFee) ||
                other.featureFee == featureFee) &&
            (identical(other.paymentFee, paymentFee) ||
                other.paymentFee == paymentFee) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.totalPayment, totalPayment) ||
                other.totalPayment == totalPayment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, featureFee, paymentFee, price, totalFee, totalPayment);

  /// Create a copy of PpobTransactionDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionDataFormattedImplCopyWith<
          _$PpobTransactionDataFormattedImpl>
      get copyWith => __$$PpobTransactionDataFormattedImplCopyWithImpl<
          _$PpobTransactionDataFormattedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionDataFormattedImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionDataFormatted
    implements PpobTransactionDataFormatted {
  const factory _PpobTransactionDataFormatted(
          {@JsonKey(name: "feature_fee") required final String featureFee,
          @JsonKey(name: "payment_fee") required final String paymentFee,
          @JsonKey(name: "price") required final String price,
          @JsonKey(name: "total_fee") required final String totalFee,
          @JsonKey(name: "total_payment") required final String totalPayment}) =
      _$PpobTransactionDataFormattedImpl;

  factory _PpobTransactionDataFormatted.fromJson(Map<String, dynamic> json) =
      _$PpobTransactionDataFormattedImpl.fromJson;

  @override
  @JsonKey(name: "feature_fee")
  String get featureFee;
  @override
  @JsonKey(name: "payment_fee")
  String get paymentFee;
  @override
  @JsonKey(name: "price")
  String get price;
  @override
  @JsonKey(name: "total_fee")
  String get totalFee;
  @override
  @JsonKey(name: "total_payment")
  String get totalPayment;

  /// Create a copy of PpobTransactionDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionDataFormattedImplCopyWith<
          _$PpobTransactionDataFormattedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobTransactionInstruction _$PpobTransactionInstructionFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionInstruction.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionInstruction {
  @JsonKey(name: "steps")
  dynamic get steps => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionInstruction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionInstructionCopyWith<PpobTransactionInstruction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionInstructionCopyWith<$Res> {
  factory $PpobTransactionInstructionCopyWith(PpobTransactionInstruction value,
          $Res Function(PpobTransactionInstruction) then) =
      _$PpobTransactionInstructionCopyWithImpl<$Res,
          PpobTransactionInstruction>;
  @useResult
  $Res call(
      {@JsonKey(name: "steps") dynamic steps,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class _$PpobTransactionInstructionCopyWithImpl<$Res,
        $Val extends PpobTransactionInstruction>
    implements $PpobTransactionInstructionCopyWith<$Res> {
  _$PpobTransactionInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = freezed,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobTransactionInstructionImplCopyWith<$Res>
    implements $PpobTransactionInstructionCopyWith<$Res> {
  factory _$$PpobTransactionInstructionImplCopyWith(
          _$PpobTransactionInstructionImpl value,
          $Res Function(_$PpobTransactionInstructionImpl) then) =
      __$$PpobTransactionInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "steps") dynamic steps,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class __$$PpobTransactionInstructionImplCopyWithImpl<$Res>
    extends _$PpobTransactionInstructionCopyWithImpl<$Res,
        _$PpobTransactionInstructionImpl>
    implements _$$PpobTransactionInstructionImplCopyWith<$Res> {
  __$$PpobTransactionInstructionImplCopyWithImpl(
      _$PpobTransactionInstructionImpl _value,
      $Res Function(_$PpobTransactionInstructionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = freezed,
    Object? title = null,
  }) {
    return _then(_$PpobTransactionInstructionImpl(
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobTransactionInstructionImpl implements _PpobTransactionInstruction {
  const _$PpobTransactionInstructionImpl(
      {@JsonKey(name: "steps") required this.steps,
      @JsonKey(name: "title") required this.title});

  factory _$PpobTransactionInstructionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionInstructionImplFromJson(json);

  @override
  @JsonKey(name: "steps")
  final dynamic steps;
  @override
  @JsonKey(name: "title")
  final String title;

  @override
  String toString() {
    return 'PpobTransactionInstruction(steps: $steps, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionInstructionImpl &&
            const DeepCollectionEquality().equals(other.steps, steps) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(steps), title);

  /// Create a copy of PpobTransactionInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionInstructionImplCopyWith<_$PpobTransactionInstructionImpl>
      get copyWith => __$$PpobTransactionInstructionImplCopyWithImpl<
          _$PpobTransactionInstructionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionInstructionImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionInstruction
    implements PpobTransactionInstruction {
  const factory _PpobTransactionInstruction(
          {@JsonKey(name: "steps") required final dynamic steps,
          @JsonKey(name: "title") required final String title}) =
      _$PpobTransactionInstructionImpl;

  factory _PpobTransactionInstruction.fromJson(Map<String, dynamic> json) =
      _$PpobTransactionInstructionImpl.fromJson;

  @override
  @JsonKey(name: "steps")
  dynamic get steps;
  @override
  @JsonKey(name: "title")
  String get title;

  /// Create a copy of PpobTransactionInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionInstructionImplCopyWith<_$PpobTransactionInstructionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobTransactionPaymentChannel _$PpobTransactionPaymentChannelFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionPaymentChannel.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionPaymentChannel {
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_type")
  String get currencyType => throw _privateConstructorUsedError;
  @JsonKey(name: "fee")
  PpobTransactionPaymentChannelFee get fee =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_code")
  String get payCode => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_content")
  String get qrContent => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_image")
  String get qrImage => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionPaymentChannel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionPaymentChannelCopyWith<PpobTransactionPaymentChannel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionPaymentChannelCopyWith<$Res> {
  factory $PpobTransactionPaymentChannelCopyWith(
          PpobTransactionPaymentChannel value,
          $Res Function(PpobTransactionPaymentChannel) then) =
      _$PpobTransactionPaymentChannelCopyWithImpl<$Res,
          PpobTransactionPaymentChannel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "currency_prefix") String currencyPrefix,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "fee") PpobTransactionPaymentChannelFee fee,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "pay_code") String payCode,
      @JsonKey(name: "qr_content") String qrContent,
      @JsonKey(name: "qr_image") String qrImage});

  $PpobTransactionPaymentChannelFeeCopyWith<$Res> get fee;
}

/// @nodoc
class _$PpobTransactionPaymentChannelCopyWithImpl<$Res,
        $Val extends PpobTransactionPaymentChannel>
    implements $PpobTransactionPaymentChannelCopyWith<$Res> {
  _$PpobTransactionPaymentChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? currencyPrefix = null,
    Object? currencyType = null,
    Object? fee = null,
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
      currencyPrefix: null == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as PpobTransactionPaymentChannelFee,
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

  /// Create a copy of PpobTransactionPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionPaymentChannelFeeCopyWith<$Res> get fee {
    return $PpobTransactionPaymentChannelFeeCopyWith<$Res>(_value.fee, (value) {
      return _then(_value.copyWith(fee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobTransactionPaymentChannelImplCopyWith<$Res>
    implements $PpobTransactionPaymentChannelCopyWith<$Res> {
  factory _$$PpobTransactionPaymentChannelImplCopyWith(
          _$PpobTransactionPaymentChannelImpl value,
          $Res Function(_$PpobTransactionPaymentChannelImpl) then) =
      __$$PpobTransactionPaymentChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "currency_prefix") String currencyPrefix,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "fee") PpobTransactionPaymentChannelFee fee,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "pay_code") String payCode,
      @JsonKey(name: "qr_content") String qrContent,
      @JsonKey(name: "qr_image") String qrImage});

  @override
  $PpobTransactionPaymentChannelFeeCopyWith<$Res> get fee;
}

/// @nodoc
class __$$PpobTransactionPaymentChannelImplCopyWithImpl<$Res>
    extends _$PpobTransactionPaymentChannelCopyWithImpl<$Res,
        _$PpobTransactionPaymentChannelImpl>
    implements _$$PpobTransactionPaymentChannelImplCopyWith<$Res> {
  __$$PpobTransactionPaymentChannelImplCopyWithImpl(
      _$PpobTransactionPaymentChannelImpl _value,
      $Res Function(_$PpobTransactionPaymentChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? currencyPrefix = null,
    Object? currencyType = null,
    Object? fee = null,
    Object? name = null,
    Object? payCode = null,
    Object? qrContent = null,
    Object? qrImage = null,
  }) {
    return _then(_$PpobTransactionPaymentChannelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      currencyPrefix: null == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as PpobTransactionPaymentChannelFee,
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
class _$PpobTransactionPaymentChannelImpl
    implements _PpobTransactionPaymentChannel {
  const _$PpobTransactionPaymentChannelImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "currency_prefix") required this.currencyPrefix,
      @JsonKey(name: "currency_type") required this.currencyType,
      @JsonKey(name: "fee") required this.fee,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "pay_code") required this.payCode,
      @JsonKey(name: "qr_content") required this.qrContent,
      @JsonKey(name: "qr_image") required this.qrImage});

  factory _$PpobTransactionPaymentChannelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionPaymentChannelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "currency_prefix")
  final String currencyPrefix;
  @override
  @JsonKey(name: "currency_type")
  final String currencyType;
  @override
  @JsonKey(name: "fee")
  final PpobTransactionPaymentChannelFee fee;
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
    return 'PpobTransactionPaymentChannel(code: $code, currencyPrefix: $currencyPrefix, currencyType: $currencyType, fee: $fee, name: $name, payCode: $payCode, qrContent: $qrContent, qrImage: $qrImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionPaymentChannelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.payCode, payCode) || other.payCode == payCode) &&
            (identical(other.qrContent, qrContent) ||
                other.qrContent == qrContent) &&
            (identical(other.qrImage, qrImage) || other.qrImage == qrImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, currencyPrefix,
      currencyType, fee, name, payCode, qrContent, qrImage);

  /// Create a copy of PpobTransactionPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionPaymentChannelImplCopyWith<
          _$PpobTransactionPaymentChannelImpl>
      get copyWith => __$$PpobTransactionPaymentChannelImplCopyWithImpl<
          _$PpobTransactionPaymentChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionPaymentChannelImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionPaymentChannel
    implements PpobTransactionPaymentChannel {
  const factory _PpobTransactionPaymentChannel(
      {@JsonKey(name: "code") required final String code,
      @JsonKey(name: "currency_prefix") required final String currencyPrefix,
      @JsonKey(name: "currency_type") required final String currencyType,
      @JsonKey(name: "fee") required final PpobTransactionPaymentChannelFee fee,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "pay_code") required final String payCode,
      @JsonKey(name: "qr_content") required final String qrContent,
      @JsonKey(name: "qr_image")
      required final String qrImage}) = _$PpobTransactionPaymentChannelImpl;

  factory _PpobTransactionPaymentChannel.fromJson(Map<String, dynamic> json) =
      _$PpobTransactionPaymentChannelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "currency_prefix")
  String get currencyPrefix;
  @override
  @JsonKey(name: "currency_type")
  String get currencyType;
  @override
  @JsonKey(name: "fee")
  PpobTransactionPaymentChannelFee get fee;
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

  /// Create a copy of PpobTransactionPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionPaymentChannelImplCopyWith<
          _$PpobTransactionPaymentChannelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobTransactionPaymentChannelFee _$PpobTransactionPaymentChannelFeeFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionPaymentChannelFee.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionPaymentChannelFee {
  @JsonKey(name: "amount")
  int get amount => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionPaymentChannelFee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionPaymentChannelFee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionPaymentChannelFeeCopyWith<PpobTransactionPaymentChannelFee>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionPaymentChannelFeeCopyWith<$Res> {
  factory $PpobTransactionPaymentChannelFeeCopyWith(
          PpobTransactionPaymentChannelFee value,
          $Res Function(PpobTransactionPaymentChannelFee) then) =
      _$PpobTransactionPaymentChannelFeeCopyWithImpl<$Res,
          PpobTransactionPaymentChannelFee>;
  @useResult
  $Res call({@JsonKey(name: "amount") int amount});
}

/// @nodoc
class _$PpobTransactionPaymentChannelFeeCopyWithImpl<$Res,
        $Val extends PpobTransactionPaymentChannelFee>
    implements $PpobTransactionPaymentChannelFeeCopyWith<$Res> {
  _$PpobTransactionPaymentChannelFeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionPaymentChannelFee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobTransactionPaymentChannelFeeImplCopyWith<$Res>
    implements $PpobTransactionPaymentChannelFeeCopyWith<$Res> {
  factory _$$PpobTransactionPaymentChannelFeeImplCopyWith(
          _$PpobTransactionPaymentChannelFeeImpl value,
          $Res Function(_$PpobTransactionPaymentChannelFeeImpl) then) =
      __$$PpobTransactionPaymentChannelFeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "amount") int amount});
}

/// @nodoc
class __$$PpobTransactionPaymentChannelFeeImplCopyWithImpl<$Res>
    extends _$PpobTransactionPaymentChannelFeeCopyWithImpl<$Res,
        _$PpobTransactionPaymentChannelFeeImpl>
    implements _$$PpobTransactionPaymentChannelFeeImplCopyWith<$Res> {
  __$$PpobTransactionPaymentChannelFeeImplCopyWithImpl(
      _$PpobTransactionPaymentChannelFeeImpl _value,
      $Res Function(_$PpobTransactionPaymentChannelFeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionPaymentChannelFee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$PpobTransactionPaymentChannelFeeImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobTransactionPaymentChannelFeeImpl
    implements _PpobTransactionPaymentChannelFee {
  const _$PpobTransactionPaymentChannelFeeImpl(
      {@JsonKey(name: "amount") required this.amount});

  factory _$PpobTransactionPaymentChannelFeeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionPaymentChannelFeeImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  final int amount;

  @override
  String toString() {
    return 'PpobTransactionPaymentChannelFee(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionPaymentChannelFeeImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of PpobTransactionPaymentChannelFee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionPaymentChannelFeeImplCopyWith<
          _$PpobTransactionPaymentChannelFeeImpl>
      get copyWith => __$$PpobTransactionPaymentChannelFeeImplCopyWithImpl<
          _$PpobTransactionPaymentChannelFeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionPaymentChannelFeeImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionPaymentChannelFee
    implements PpobTransactionPaymentChannelFee {
  const factory _PpobTransactionPaymentChannelFee(
          {@JsonKey(name: "amount") required final int amount}) =
      _$PpobTransactionPaymentChannelFeeImpl;

  factory _PpobTransactionPaymentChannelFee.fromJson(
          Map<String, dynamic> json) =
      _$PpobTransactionPaymentChannelFeeImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  int get amount;

  /// Create a copy of PpobTransactionPaymentChannelFee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionPaymentChannelFeeImplCopyWith<
          _$PpobTransactionPaymentChannelFeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
