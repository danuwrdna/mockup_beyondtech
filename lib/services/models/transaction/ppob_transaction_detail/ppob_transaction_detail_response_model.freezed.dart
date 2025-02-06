// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ppob_transaction_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PpobTransactionDetailResponseModel _$PpobTransactionDetailResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionDetailResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionDetailResponseModel {
  @JsonKey(name: "data")
  PpobTransactionDetailData get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionDetailResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionDetailResponseModelCopyWith<
          PpobTransactionDetailResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionDetailResponseModelCopyWith<$Res> {
  factory $PpobTransactionDetailResponseModelCopyWith(
          PpobTransactionDetailResponseModel value,
          $Res Function(PpobTransactionDetailResponseModel) then) =
      _$PpobTransactionDetailResponseModelCopyWithImpl<$Res,
          PpobTransactionDetailResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") PpobTransactionDetailData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  $PpobTransactionDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PpobTransactionDetailResponseModelCopyWithImpl<$Res,
        $Val extends PpobTransactionDetailResponseModel>
    implements $PpobTransactionDetailResponseModelCopyWith<$Res> {
  _$PpobTransactionDetailResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionDetailResponseModel
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
              as PpobTransactionDetailData,
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

  /// Create a copy of PpobTransactionDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionDetailDataCopyWith<$Res> get data {
    return $PpobTransactionDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobTransactionDetailResponseModelImplCopyWith<$Res>
    implements $PpobTransactionDetailResponseModelCopyWith<$Res> {
  factory _$$PpobTransactionDetailResponseModelImplCopyWith(
          _$PpobTransactionDetailResponseModelImpl value,
          $Res Function(_$PpobTransactionDetailResponseModelImpl) then) =
      __$$PpobTransactionDetailResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") PpobTransactionDetailData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  @override
  $PpobTransactionDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PpobTransactionDetailResponseModelImplCopyWithImpl<$Res>
    extends _$PpobTransactionDetailResponseModelCopyWithImpl<$Res,
        _$PpobTransactionDetailResponseModelImpl>
    implements _$$PpobTransactionDetailResponseModelImplCopyWith<$Res> {
  __$$PpobTransactionDetailResponseModelImplCopyWithImpl(
      _$PpobTransactionDetailResponseModelImpl _value,
      $Res Function(_$PpobTransactionDetailResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$PpobTransactionDetailResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailData,
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
class _$PpobTransactionDetailResponseModelImpl
    implements _PpobTransactionDetailResponseModel {
  const _$PpobTransactionDetailResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status_code") required this.statusCode});

  factory _$PpobTransactionDetailResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionDetailResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final PpobTransactionDetailData data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "status_code")
  final String statusCode;

  @override
  String toString() {
    return 'PpobTransactionDetailResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionDetailResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of PpobTransactionDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionDetailResponseModelImplCopyWith<
          _$PpobTransactionDetailResponseModelImpl>
      get copyWith => __$$PpobTransactionDetailResponseModelImplCopyWithImpl<
          _$PpobTransactionDetailResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionDetailResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionDetailResponseModel
    implements PpobTransactionDetailResponseModel {
  const factory _PpobTransactionDetailResponseModel(
          {@JsonKey(name: "data") required final PpobTransactionDetailData data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "status_code") required final String statusCode}) =
      _$PpobTransactionDetailResponseModelImpl;

  factory _PpobTransactionDetailResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$PpobTransactionDetailResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  PpobTransactionDetailData get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "status_code")
  String get statusCode;

  /// Create a copy of PpobTransactionDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionDetailResponseModelImplCopyWith<
          _$PpobTransactionDetailResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobTransactionDetailData _$PpobTransactionDetailDataFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionDetailData.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionDetailData {
  @JsonKey(name: "boundary_type")
  String get boundaryType => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  int get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_at")
  int get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted")
  PpobTransactionDetailDataFormatted get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "paid_at")
  int get paidAt => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_channel")
  PpobTransactionDetailDataPaymentChannel get paymentChannel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "ppob_product")
  PpobTransactionDetailDataPpobProduct get ppobProduct =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "rate")
  PpobTransactionDetailDataRate get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "recepients")
  List<PpobTransactionDetailDataRecipient> get recipients =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "status_transaction")
  String get statusTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_status_transaction")
  String get subStatusTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fee")
  PpobTransactionDetailDataTotalFee get totalFee =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_id")
  String get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_ref_id")
  String get transactionRefId => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_title")
  String get transactionTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_type")
  String get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: "unique_code")
  int get uniqueCode => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  int get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionDetailData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionDetailDataCopyWith<PpobTransactionDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionDetailDataCopyWith<$Res> {
  factory $PpobTransactionDetailDataCopyWith(PpobTransactionDetailData value,
          $Res Function(PpobTransactionDetailData) then) =
      _$PpobTransactionDetailDataCopyWithImpl<$Res, PpobTransactionDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: "boundary_type") String boundaryType,
      @JsonKey(name: "created_at") int createdAt,
      @JsonKey(name: "expired_at") int expiredAt,
      @JsonKey(name: "formatted") PpobTransactionDetailDataFormatted formatted,
      @JsonKey(name: "paid_at") int paidAt,
      @JsonKey(name: "payment_channel")
      PpobTransactionDetailDataPaymentChannel paymentChannel,
      @JsonKey(name: "ppob_product")
      PpobTransactionDetailDataPpobProduct ppobProduct,
      @JsonKey(name: "rate") PpobTransactionDetailDataRate rate,
      @JsonKey(name: "recepients")
      List<PpobTransactionDetailDataRecipient> recipients,
      @JsonKey(name: "status_transaction") String statusTransaction,
      @JsonKey(name: "sub_status_transaction") String subStatusTransaction,
      @JsonKey(name: "total_amount") int totalAmount,
      @JsonKey(name: "total_fee") PpobTransactionDetailDataTotalFee totalFee,
      @JsonKey(name: "transaction_id") String transactionId,
      @JsonKey(name: "transaction_ref_id") String transactionRefId,
      @JsonKey(name: "transaction_title") String transactionTitle,
      @JsonKey(name: "transaction_type") String transactionType,
      @JsonKey(name: "unique_code") int uniqueCode,
      @JsonKey(name: "updated_at") int updatedAt});

  $PpobTransactionDetailDataFormattedCopyWith<$Res> get formatted;
  $PpobTransactionDetailDataPaymentChannelCopyWith<$Res> get paymentChannel;
  $PpobTransactionDetailDataPpobProductCopyWith<$Res> get ppobProduct;
  $PpobTransactionDetailDataRateCopyWith<$Res> get rate;
  $PpobTransactionDetailDataTotalFeeCopyWith<$Res> get totalFee;
}

/// @nodoc
class _$PpobTransactionDetailDataCopyWithImpl<$Res,
        $Val extends PpobTransactionDetailData>
    implements $PpobTransactionDetailDataCopyWith<$Res> {
  _$PpobTransactionDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boundaryType = null,
    Object? createdAt = null,
    Object? expiredAt = null,
    Object? formatted = null,
    Object? paidAt = null,
    Object? paymentChannel = null,
    Object? ppobProduct = null,
    Object? rate = null,
    Object? recipients = null,
    Object? statusTransaction = null,
    Object? subStatusTransaction = null,
    Object? totalAmount = null,
    Object? totalFee = null,
    Object? transactionId = null,
    Object? transactionRefId = null,
    Object? transactionTitle = null,
    Object? transactionType = null,
    Object? uniqueCode = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      boundaryType: null == boundaryType
          ? _value.boundaryType
          : boundaryType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiredAt: null == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailDataFormatted,
      paidAt: null == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as int,
      paymentChannel: null == paymentChannel
          ? _value.paymentChannel
          : paymentChannel // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailDataPaymentChannel,
      ppobProduct: null == ppobProduct
          ? _value.ppobProduct
          : ppobProduct // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailDataPpobProduct,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailDataRate,
      recipients: null == recipients
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<PpobTransactionDetailDataRecipient>,
      statusTransaction: null == statusTransaction
          ? _value.statusTransaction
          : statusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      subStatusTransaction: null == subStatusTransaction
          ? _value.subStatusTransaction
          : subStatusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailDataTotalFee,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionRefId: null == transactionRefId
          ? _value.transactionRefId
          : transactionRefId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionTitle: null == transactionTitle
          ? _value.transactionTitle
          : transactionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PpobTransactionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionDetailDataFormattedCopyWith<$Res> get formatted {
    return $PpobTransactionDetailDataFormattedCopyWith<$Res>(_value.formatted,
        (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }

  /// Create a copy of PpobTransactionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionDetailDataPaymentChannelCopyWith<$Res> get paymentChannel {
    return $PpobTransactionDetailDataPaymentChannelCopyWith<$Res>(
        _value.paymentChannel, (value) {
      return _then(_value.copyWith(paymentChannel: value) as $Val);
    });
  }

  /// Create a copy of PpobTransactionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionDetailDataPpobProductCopyWith<$Res> get ppobProduct {
    return $PpobTransactionDetailDataPpobProductCopyWith<$Res>(
        _value.ppobProduct, (value) {
      return _then(_value.copyWith(ppobProduct: value) as $Val);
    });
  }

  /// Create a copy of PpobTransactionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionDetailDataRateCopyWith<$Res> get rate {
    return $PpobTransactionDetailDataRateCopyWith<$Res>(_value.rate, (value) {
      return _then(_value.copyWith(rate: value) as $Val);
    });
  }

  /// Create a copy of PpobTransactionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionDetailDataTotalFeeCopyWith<$Res> get totalFee {
    return $PpobTransactionDetailDataTotalFeeCopyWith<$Res>(_value.totalFee,
        (value) {
      return _then(_value.copyWith(totalFee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobTransactionDetailDataImplCopyWith<$Res>
    implements $PpobTransactionDetailDataCopyWith<$Res> {
  factory _$$PpobTransactionDetailDataImplCopyWith(
          _$PpobTransactionDetailDataImpl value,
          $Res Function(_$PpobTransactionDetailDataImpl) then) =
      __$$PpobTransactionDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "boundary_type") String boundaryType,
      @JsonKey(name: "created_at") int createdAt,
      @JsonKey(name: "expired_at") int expiredAt,
      @JsonKey(name: "formatted") PpobTransactionDetailDataFormatted formatted,
      @JsonKey(name: "paid_at") int paidAt,
      @JsonKey(name: "payment_channel")
      PpobTransactionDetailDataPaymentChannel paymentChannel,
      @JsonKey(name: "ppob_product")
      PpobTransactionDetailDataPpobProduct ppobProduct,
      @JsonKey(name: "rate") PpobTransactionDetailDataRate rate,
      @JsonKey(name: "recepients")
      List<PpobTransactionDetailDataRecipient> recipients,
      @JsonKey(name: "status_transaction") String statusTransaction,
      @JsonKey(name: "sub_status_transaction") String subStatusTransaction,
      @JsonKey(name: "total_amount") int totalAmount,
      @JsonKey(name: "total_fee") PpobTransactionDetailDataTotalFee totalFee,
      @JsonKey(name: "transaction_id") String transactionId,
      @JsonKey(name: "transaction_ref_id") String transactionRefId,
      @JsonKey(name: "transaction_title") String transactionTitle,
      @JsonKey(name: "transaction_type") String transactionType,
      @JsonKey(name: "unique_code") int uniqueCode,
      @JsonKey(name: "updated_at") int updatedAt});

  @override
  $PpobTransactionDetailDataFormattedCopyWith<$Res> get formatted;
  @override
  $PpobTransactionDetailDataPaymentChannelCopyWith<$Res> get paymentChannel;
  @override
  $PpobTransactionDetailDataPpobProductCopyWith<$Res> get ppobProduct;
  @override
  $PpobTransactionDetailDataRateCopyWith<$Res> get rate;
  @override
  $PpobTransactionDetailDataTotalFeeCopyWith<$Res> get totalFee;
}

/// @nodoc
class __$$PpobTransactionDetailDataImplCopyWithImpl<$Res>
    extends _$PpobTransactionDetailDataCopyWithImpl<$Res,
        _$PpobTransactionDetailDataImpl>
    implements _$$PpobTransactionDetailDataImplCopyWith<$Res> {
  __$$PpobTransactionDetailDataImplCopyWithImpl(
      _$PpobTransactionDetailDataImpl _value,
      $Res Function(_$PpobTransactionDetailDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boundaryType = null,
    Object? createdAt = null,
    Object? expiredAt = null,
    Object? formatted = null,
    Object? paidAt = null,
    Object? paymentChannel = null,
    Object? ppobProduct = null,
    Object? rate = null,
    Object? recipients = null,
    Object? statusTransaction = null,
    Object? subStatusTransaction = null,
    Object? totalAmount = null,
    Object? totalFee = null,
    Object? transactionId = null,
    Object? transactionRefId = null,
    Object? transactionTitle = null,
    Object? transactionType = null,
    Object? uniqueCode = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PpobTransactionDetailDataImpl(
      boundaryType: null == boundaryType
          ? _value.boundaryType
          : boundaryType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiredAt: null == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailDataFormatted,
      paidAt: null == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as int,
      paymentChannel: null == paymentChannel
          ? _value.paymentChannel
          : paymentChannel // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailDataPaymentChannel,
      ppobProduct: null == ppobProduct
          ? _value.ppobProduct
          : ppobProduct // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailDataPpobProduct,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailDataRate,
      recipients: null == recipients
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<PpobTransactionDetailDataRecipient>,
      statusTransaction: null == statusTransaction
          ? _value.statusTransaction
          : statusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      subStatusTransaction: null == subStatusTransaction
          ? _value.subStatusTransaction
          : subStatusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as PpobTransactionDetailDataTotalFee,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionRefId: null == transactionRefId
          ? _value.transactionRefId
          : transactionRefId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionTitle: null == transactionTitle
          ? _value.transactionTitle
          : transactionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobTransactionDetailDataImpl implements _PpobTransactionDetailData {
  const _$PpobTransactionDetailDataImpl(
      {@JsonKey(name: "boundary_type") required this.boundaryType,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "expired_at") required this.expiredAt,
      @JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "paid_at") required this.paidAt,
      @JsonKey(name: "payment_channel") required this.paymentChannel,
      @JsonKey(name: "ppob_product") required this.ppobProduct,
      @JsonKey(name: "rate") required this.rate,
      @JsonKey(name: "recepients")
      required final List<PpobTransactionDetailDataRecipient> recipients,
      @JsonKey(name: "status_transaction") required this.statusTransaction,
      @JsonKey(name: "sub_status_transaction")
      required this.subStatusTransaction,
      @JsonKey(name: "total_amount") required this.totalAmount,
      @JsonKey(name: "total_fee") required this.totalFee,
      @JsonKey(name: "transaction_id") required this.transactionId,
      @JsonKey(name: "transaction_ref_id") required this.transactionRefId,
      @JsonKey(name: "transaction_title") required this.transactionTitle,
      @JsonKey(name: "transaction_type") required this.transactionType,
      @JsonKey(name: "unique_code") required this.uniqueCode,
      @JsonKey(name: "updated_at") required this.updatedAt})
      : _recipients = recipients;

  factory _$PpobTransactionDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobTransactionDetailDataImplFromJson(json);

  @override
  @JsonKey(name: "boundary_type")
  final String boundaryType;
  @override
  @JsonKey(name: "created_at")
  final int createdAt;
  @override
  @JsonKey(name: "expired_at")
  final int expiredAt;
  @override
  @JsonKey(name: "formatted")
  final PpobTransactionDetailDataFormatted formatted;
  @override
  @JsonKey(name: "paid_at")
  final int paidAt;
  @override
  @JsonKey(name: "payment_channel")
  final PpobTransactionDetailDataPaymentChannel paymentChannel;
  @override
  @JsonKey(name: "ppob_product")
  final PpobTransactionDetailDataPpobProduct ppobProduct;
  @override
  @JsonKey(name: "rate")
  final PpobTransactionDetailDataRate rate;
  final List<PpobTransactionDetailDataRecipient> _recipients;
  @override
  @JsonKey(name: "recepients")
  List<PpobTransactionDetailDataRecipient> get recipients {
    if (_recipients is EqualUnmodifiableListView) return _recipients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipients);
  }

  @override
  @JsonKey(name: "status_transaction")
  final String statusTransaction;
  @override
  @JsonKey(name: "sub_status_transaction")
  final String subStatusTransaction;
  @override
  @JsonKey(name: "total_amount")
  final int totalAmount;
  @override
  @JsonKey(name: "total_fee")
  final PpobTransactionDetailDataTotalFee totalFee;
  @override
  @JsonKey(name: "transaction_id")
  final String transactionId;
  @override
  @JsonKey(name: "transaction_ref_id")
  final String transactionRefId;
  @override
  @JsonKey(name: "transaction_title")
  final String transactionTitle;
  @override
  @JsonKey(name: "transaction_type")
  final String transactionType;
  @override
  @JsonKey(name: "unique_code")
  final int uniqueCode;
  @override
  @JsonKey(name: "updated_at")
  final int updatedAt;

  @override
  String toString() {
    return 'PpobTransactionDetailData(boundaryType: $boundaryType, createdAt: $createdAt, expiredAt: $expiredAt, formatted: $formatted, paidAt: $paidAt, paymentChannel: $paymentChannel, ppobProduct: $ppobProduct, rate: $rate, recipients: $recipients, statusTransaction: $statusTransaction, subStatusTransaction: $subStatusTransaction, totalAmount: $totalAmount, totalFee: $totalFee, transactionId: $transactionId, transactionRefId: $transactionRefId, transactionTitle: $transactionTitle, transactionType: $transactionType, uniqueCode: $uniqueCode, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionDetailDataImpl &&
            (identical(other.boundaryType, boundaryType) ||
                other.boundaryType == boundaryType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.paymentChannel, paymentChannel) ||
                other.paymentChannel == paymentChannel) &&
            (identical(other.ppobProduct, ppobProduct) ||
                other.ppobProduct == ppobProduct) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients) &&
            (identical(other.statusTransaction, statusTransaction) ||
                other.statusTransaction == statusTransaction) &&
            (identical(other.subStatusTransaction, subStatusTransaction) ||
                other.subStatusTransaction == subStatusTransaction) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.transactionRefId, transactionRefId) ||
                other.transactionRefId == transactionRefId) &&
            (identical(other.transactionTitle, transactionTitle) ||
                other.transactionTitle == transactionTitle) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.uniqueCode, uniqueCode) ||
                other.uniqueCode == uniqueCode) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        boundaryType,
        createdAt,
        expiredAt,
        formatted,
        paidAt,
        paymentChannel,
        ppobProduct,
        rate,
        const DeepCollectionEquality().hash(_recipients),
        statusTransaction,
        subStatusTransaction,
        totalAmount,
        totalFee,
        transactionId,
        transactionRefId,
        transactionTitle,
        transactionType,
        uniqueCode,
        updatedAt
      ]);

  /// Create a copy of PpobTransactionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionDetailDataImplCopyWith<_$PpobTransactionDetailDataImpl>
      get copyWith => __$$PpobTransactionDetailDataImplCopyWithImpl<
          _$PpobTransactionDetailDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionDetailDataImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionDetailData implements PpobTransactionDetailData {
  const factory _PpobTransactionDetailData(
      {@JsonKey(name: "boundary_type") required final String boundaryType,
      @JsonKey(name: "created_at") required final int createdAt,
      @JsonKey(name: "expired_at") required final int expiredAt,
      @JsonKey(name: "formatted")
      required final PpobTransactionDetailDataFormatted formatted,
      @JsonKey(name: "paid_at") required final int paidAt,
      @JsonKey(name: "payment_channel")
      required final PpobTransactionDetailDataPaymentChannel paymentChannel,
      @JsonKey(name: "ppob_product")
      required final PpobTransactionDetailDataPpobProduct ppobProduct,
      @JsonKey(name: "rate") required final PpobTransactionDetailDataRate rate,
      @JsonKey(name: "recepients")
      required final List<PpobTransactionDetailDataRecipient> recipients,
      @JsonKey(name: "status_transaction")
      required final String statusTransaction,
      @JsonKey(name: "sub_status_transaction")
      required final String subStatusTransaction,
      @JsonKey(name: "total_amount") required final int totalAmount,
      @JsonKey(name: "total_fee")
      required final PpobTransactionDetailDataTotalFee totalFee,
      @JsonKey(name: "transaction_id") required final String transactionId,
      @JsonKey(name: "transaction_ref_id")
      required final String transactionRefId,
      @JsonKey(name: "transaction_title")
      required final String transactionTitle,
      @JsonKey(name: "transaction_type") required final String transactionType,
      @JsonKey(name: "unique_code") required final int uniqueCode,
      @JsonKey(name: "updated_at")
      required final int updatedAt}) = _$PpobTransactionDetailDataImpl;

  factory _PpobTransactionDetailData.fromJson(Map<String, dynamic> json) =
      _$PpobTransactionDetailDataImpl.fromJson;

  @override
  @JsonKey(name: "boundary_type")
  String get boundaryType;
  @override
  @JsonKey(name: "created_at")
  int get createdAt;
  @override
  @JsonKey(name: "expired_at")
  int get expiredAt;
  @override
  @JsonKey(name: "formatted")
  PpobTransactionDetailDataFormatted get formatted;
  @override
  @JsonKey(name: "paid_at")
  int get paidAt;
  @override
  @JsonKey(name: "payment_channel")
  PpobTransactionDetailDataPaymentChannel get paymentChannel;
  @override
  @JsonKey(name: "ppob_product")
  PpobTransactionDetailDataPpobProduct get ppobProduct;
  @override
  @JsonKey(name: "rate")
  PpobTransactionDetailDataRate get rate;
  @override
  @JsonKey(name: "recepients")
  List<PpobTransactionDetailDataRecipient> get recipients;
  @override
  @JsonKey(name: "status_transaction")
  String get statusTransaction;
  @override
  @JsonKey(name: "sub_status_transaction")
  String get subStatusTransaction;
  @override
  @JsonKey(name: "total_amount")
  int get totalAmount;
  @override
  @JsonKey(name: "total_fee")
  PpobTransactionDetailDataTotalFee get totalFee;
  @override
  @JsonKey(name: "transaction_id")
  String get transactionId;
  @override
  @JsonKey(name: "transaction_ref_id")
  String get transactionRefId;
  @override
  @JsonKey(name: "transaction_title")
  String get transactionTitle;
  @override
  @JsonKey(name: "transaction_type")
  String get transactionType;
  @override
  @JsonKey(name: "unique_code")
  int get uniqueCode;
  @override
  @JsonKey(name: "updated_at")
  int get updatedAt;

  /// Create a copy of PpobTransactionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionDetailDataImplCopyWith<_$PpobTransactionDetailDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobTransactionDetailDataFormatted _$PpobTransactionDetailDataFormattedFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionDetailDataFormatted.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionDetailDataFormatted {
  @JsonKey(name: "price")
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  String get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fee")
  String get totalFee => throw _privateConstructorUsedError;
  @JsonKey(name: "unique_code")
  String get uniqueCode => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionDetailDataFormatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionDetailDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionDetailDataFormattedCopyWith<
          PpobTransactionDetailDataFormatted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionDetailDataFormattedCopyWith<$Res> {
  factory $PpobTransactionDetailDataFormattedCopyWith(
          PpobTransactionDetailDataFormatted value,
          $Res Function(PpobTransactionDetailDataFormatted) then) =
      _$PpobTransactionDetailDataFormattedCopyWithImpl<$Res,
          PpobTransactionDetailDataFormatted>;
  @useResult
  $Res call(
      {@JsonKey(name: "price") String price,
      @JsonKey(name: "total_amount") String totalAmount,
      @JsonKey(name: "total_fee") String totalFee,
      @JsonKey(name: "unique_code") String uniqueCode});
}

/// @nodoc
class _$PpobTransactionDetailDataFormattedCopyWithImpl<$Res,
        $Val extends PpobTransactionDetailDataFormatted>
    implements $PpobTransactionDetailDataFormattedCopyWith<$Res> {
  _$PpobTransactionDetailDataFormattedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionDetailDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? totalAmount = null,
    Object? totalFee = null,
    Object? uniqueCode = null,
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
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobTransactionDetailDataFormattedImplCopyWith<$Res>
    implements $PpobTransactionDetailDataFormattedCopyWith<$Res> {
  factory _$$PpobTransactionDetailDataFormattedImplCopyWith(
          _$PpobTransactionDetailDataFormattedImpl value,
          $Res Function(_$PpobTransactionDetailDataFormattedImpl) then) =
      __$$PpobTransactionDetailDataFormattedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "price") String price,
      @JsonKey(name: "total_amount") String totalAmount,
      @JsonKey(name: "total_fee") String totalFee,
      @JsonKey(name: "unique_code") String uniqueCode});
}

/// @nodoc
class __$$PpobTransactionDetailDataFormattedImplCopyWithImpl<$Res>
    extends _$PpobTransactionDetailDataFormattedCopyWithImpl<$Res,
        _$PpobTransactionDetailDataFormattedImpl>
    implements _$$PpobTransactionDetailDataFormattedImplCopyWith<$Res> {
  __$$PpobTransactionDetailDataFormattedImplCopyWithImpl(
      _$PpobTransactionDetailDataFormattedImpl _value,
      $Res Function(_$PpobTransactionDetailDataFormattedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionDetailDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? totalAmount = null,
    Object? totalFee = null,
    Object? uniqueCode = null,
  }) {
    return _then(_$PpobTransactionDetailDataFormattedImpl(
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
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobTransactionDetailDataFormattedImpl
    implements _PpobTransactionDetailDataFormatted {
  const _$PpobTransactionDetailDataFormattedImpl(
      {@JsonKey(name: "price") required this.price,
      @JsonKey(name: "total_amount") required this.totalAmount,
      @JsonKey(name: "total_fee") required this.totalFee,
      @JsonKey(name: "unique_code") required this.uniqueCode});

  factory _$PpobTransactionDetailDataFormattedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionDetailDataFormattedImplFromJson(json);

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
  @JsonKey(name: "unique_code")
  final String uniqueCode;

  @override
  String toString() {
    return 'PpobTransactionDetailDataFormatted(price: $price, totalAmount: $totalAmount, totalFee: $totalFee, uniqueCode: $uniqueCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionDetailDataFormattedImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.uniqueCode, uniqueCode) ||
                other.uniqueCode == uniqueCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, price, totalAmount, totalFee, uniqueCode);

  /// Create a copy of PpobTransactionDetailDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionDetailDataFormattedImplCopyWith<
          _$PpobTransactionDetailDataFormattedImpl>
      get copyWith => __$$PpobTransactionDetailDataFormattedImplCopyWithImpl<
          _$PpobTransactionDetailDataFormattedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionDetailDataFormattedImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionDetailDataFormatted
    implements PpobTransactionDetailDataFormatted {
  const factory _PpobTransactionDetailDataFormatted(
          {@JsonKey(name: "price") required final String price,
          @JsonKey(name: "total_amount") required final String totalAmount,
          @JsonKey(name: "total_fee") required final String totalFee,
          @JsonKey(name: "unique_code") required final String uniqueCode}) =
      _$PpobTransactionDetailDataFormattedImpl;

  factory _PpobTransactionDetailDataFormatted.fromJson(
          Map<String, dynamic> json) =
      _$PpobTransactionDetailDataFormattedImpl.fromJson;

  @override
  @JsonKey(name: "price")
  String get price;
  @override
  @JsonKey(name: "total_amount")
  String get totalAmount;
  @override
  @JsonKey(name: "total_fee")
  String get totalFee;
  @override
  @JsonKey(name: "unique_code")
  String get uniqueCode;

  /// Create a copy of PpobTransactionDetailDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionDetailDataFormattedImplCopyWith<
          _$PpobTransactionDetailDataFormattedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobTransactionDetailDataPaymentChannel
    _$PpobTransactionDetailDataPaymentChannelFromJson(
        Map<String, dynamic> json) {
  return _PpobTransactionDetailDataPaymentChannel.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionDetailDataPaymentChannel {
  @JsonKey(name: "currency_type")
  String get currencyType => throw _privateConstructorUsedError;
  @JsonKey(name: "method")
  String get method => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_code")
  String get payCode => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_content")
  String get qrContent => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_image")
  String get qrImage => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionDetailDataPaymentChannel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionDetailDataPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionDetailDataPaymentChannelCopyWith<
          PpobTransactionDetailDataPaymentChannel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionDetailDataPaymentChannelCopyWith<$Res> {
  factory $PpobTransactionDetailDataPaymentChannelCopyWith(
          PpobTransactionDetailDataPaymentChannel value,
          $Res Function(PpobTransactionDetailDataPaymentChannel) then) =
      _$PpobTransactionDetailDataPaymentChannelCopyWithImpl<$Res,
          PpobTransactionDetailDataPaymentChannel>;
  @useResult
  $Res call(
      {@JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "method") String method,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "pay_code") String payCode,
      @JsonKey(name: "qr_content") String qrContent,
      @JsonKey(name: "qr_image") String qrImage});
}

/// @nodoc
class _$PpobTransactionDetailDataPaymentChannelCopyWithImpl<$Res,
        $Val extends PpobTransactionDetailDataPaymentChannel>
    implements $PpobTransactionDetailDataPaymentChannelCopyWith<$Res> {
  _$PpobTransactionDetailDataPaymentChannelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionDetailDataPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyType = null,
    Object? method = null,
    Object? name = null,
    Object? payCode = null,
    Object? qrContent = null,
    Object? qrImage = null,
  }) {
    return _then(_value.copyWith(
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$PpobTransactionDetailDataPaymentChannelImplCopyWith<$Res>
    implements $PpobTransactionDetailDataPaymentChannelCopyWith<$Res> {
  factory _$$PpobTransactionDetailDataPaymentChannelImplCopyWith(
          _$PpobTransactionDetailDataPaymentChannelImpl value,
          $Res Function(_$PpobTransactionDetailDataPaymentChannelImpl) then) =
      __$$PpobTransactionDetailDataPaymentChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "method") String method,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "pay_code") String payCode,
      @JsonKey(name: "qr_content") String qrContent,
      @JsonKey(name: "qr_image") String qrImage});
}

/// @nodoc
class __$$PpobTransactionDetailDataPaymentChannelImplCopyWithImpl<$Res>
    extends _$PpobTransactionDetailDataPaymentChannelCopyWithImpl<$Res,
        _$PpobTransactionDetailDataPaymentChannelImpl>
    implements _$$PpobTransactionDetailDataPaymentChannelImplCopyWith<$Res> {
  __$$PpobTransactionDetailDataPaymentChannelImplCopyWithImpl(
      _$PpobTransactionDetailDataPaymentChannelImpl _value,
      $Res Function(_$PpobTransactionDetailDataPaymentChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionDetailDataPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyType = null,
    Object? method = null,
    Object? name = null,
    Object? payCode = null,
    Object? qrContent = null,
    Object? qrImage = null,
  }) {
    return _then(_$PpobTransactionDetailDataPaymentChannelImpl(
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$PpobTransactionDetailDataPaymentChannelImpl
    implements _PpobTransactionDetailDataPaymentChannel {
  const _$PpobTransactionDetailDataPaymentChannelImpl(
      {@JsonKey(name: "currency_type") required this.currencyType,
      @JsonKey(name: "method") required this.method,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "pay_code") required this.payCode,
      @JsonKey(name: "qr_content") required this.qrContent,
      @JsonKey(name: "qr_image") required this.qrImage});

  factory _$PpobTransactionDetailDataPaymentChannelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionDetailDataPaymentChannelImplFromJson(json);

  @override
  @JsonKey(name: "currency_type")
  final String currencyType;
  @override
  @JsonKey(name: "method")
  final String method;
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
    return 'PpobTransactionDetailDataPaymentChannel(currencyType: $currencyType, method: $method, name: $name, payCode: $payCode, qrContent: $qrContent, qrImage: $qrImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionDetailDataPaymentChannelImpl &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.payCode, payCode) || other.payCode == payCode) &&
            (identical(other.qrContent, qrContent) ||
                other.qrContent == qrContent) &&
            (identical(other.qrImage, qrImage) || other.qrImage == qrImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, currencyType, method, name, payCode, qrContent, qrImage);

  /// Create a copy of PpobTransactionDetailDataPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionDetailDataPaymentChannelImplCopyWith<
          _$PpobTransactionDetailDataPaymentChannelImpl>
      get copyWith =>
          __$$PpobTransactionDetailDataPaymentChannelImplCopyWithImpl<
              _$PpobTransactionDetailDataPaymentChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionDetailDataPaymentChannelImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionDetailDataPaymentChannel
    implements PpobTransactionDetailDataPaymentChannel {
  const factory _PpobTransactionDetailDataPaymentChannel(
          {@JsonKey(name: "currency_type") required final String currencyType,
          @JsonKey(name: "method") required final String method,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "pay_code") required final String payCode,
          @JsonKey(name: "qr_content") required final String qrContent,
          @JsonKey(name: "qr_image") required final String qrImage}) =
      _$PpobTransactionDetailDataPaymentChannelImpl;

  factory _PpobTransactionDetailDataPaymentChannel.fromJson(
          Map<String, dynamic> json) =
      _$PpobTransactionDetailDataPaymentChannelImpl.fromJson;

  @override
  @JsonKey(name: "currency_type")
  String get currencyType;
  @override
  @JsonKey(name: "method")
  String get method;
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

  /// Create a copy of PpobTransactionDetailDataPaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionDetailDataPaymentChannelImplCopyWith<
          _$PpobTransactionDetailDataPaymentChannelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobTransactionDetailDataPpobProduct
    _$PpobTransactionDetailDataPpobProductFromJson(Map<String, dynamic> json) {
  return _PpobTransactionDetailDataPpobProduct.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionDetailDataPpobProduct {
  @JsonKey(name: "desc")
  PpobProductDesc get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted")
  dynamic get formatted => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "product_number")
  String get productNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "selling_price")
  int get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "serial_number")
  String get serialNumber => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionDetailDataPpobProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionDetailDataPpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionDetailDataPpobProductCopyWith<
          PpobTransactionDetailDataPpobProduct>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionDetailDataPpobProductCopyWith<$Res> {
  factory $PpobTransactionDetailDataPpobProductCopyWith(
          PpobTransactionDetailDataPpobProduct value,
          $Res Function(PpobTransactionDetailDataPpobProduct) then) =
      _$PpobTransactionDetailDataPpobProductCopyWithImpl<$Res,
          PpobTransactionDetailDataPpobProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "desc") PpobProductDesc desc,
      @JsonKey(name: "formatted") dynamic formatted,
      @JsonKey(name: "product_name") String productName,
      @JsonKey(name: "product_number") String productNumber,
      @JsonKey(name: "selling_price") int sellingPrice,
      @JsonKey(name: "serial_number") String serialNumber});

  $PpobProductDescCopyWith<$Res> get desc;
}

/// @nodoc
class _$PpobTransactionDetailDataPpobProductCopyWithImpl<$Res,
        $Val extends PpobTransactionDetailDataPpobProduct>
    implements $PpobTransactionDetailDataPpobProductCopyWith<$Res> {
  _$PpobTransactionDetailDataPpobProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionDetailDataPpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desc = null,
    Object? formatted = freezed,
    Object? productName = null,
    Object? productNumber = null,
    Object? sellingPrice = null,
    Object? serialNumber = null,
  }) {
    return _then(_value.copyWith(
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as PpobProductDesc,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PpobTransactionDetailDataPpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobProductDescCopyWith<$Res> get desc {
    return $PpobProductDescCopyWith<$Res>(_value.desc, (value) {
      return _then(_value.copyWith(desc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobTransactionDetailDataPpobProductImplCopyWith<$Res>
    implements $PpobTransactionDetailDataPpobProductCopyWith<$Res> {
  factory _$$PpobTransactionDetailDataPpobProductImplCopyWith(
          _$PpobTransactionDetailDataPpobProductImpl value,
          $Res Function(_$PpobTransactionDetailDataPpobProductImpl) then) =
      __$$PpobTransactionDetailDataPpobProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desc") PpobProductDesc desc,
      @JsonKey(name: "formatted") dynamic formatted,
      @JsonKey(name: "product_name") String productName,
      @JsonKey(name: "product_number") String productNumber,
      @JsonKey(name: "selling_price") int sellingPrice,
      @JsonKey(name: "serial_number") String serialNumber});

  @override
  $PpobProductDescCopyWith<$Res> get desc;
}

/// @nodoc
class __$$PpobTransactionDetailDataPpobProductImplCopyWithImpl<$Res>
    extends _$PpobTransactionDetailDataPpobProductCopyWithImpl<$Res,
        _$PpobTransactionDetailDataPpobProductImpl>
    implements _$$PpobTransactionDetailDataPpobProductImplCopyWith<$Res> {
  __$$PpobTransactionDetailDataPpobProductImplCopyWithImpl(
      _$PpobTransactionDetailDataPpobProductImpl _value,
      $Res Function(_$PpobTransactionDetailDataPpobProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionDetailDataPpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desc = null,
    Object? formatted = freezed,
    Object? productName = null,
    Object? productNumber = null,
    Object? sellingPrice = null,
    Object? serialNumber = null,
  }) {
    return _then(_$PpobTransactionDetailDataPpobProductImpl(
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as PpobProductDesc,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productNumber: null == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobTransactionDetailDataPpobProductImpl
    implements _PpobTransactionDetailDataPpobProduct {
  const _$PpobTransactionDetailDataPpobProductImpl(
      {@JsonKey(name: "desc") required this.desc,
      @JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "product_name") required this.productName,
      @JsonKey(name: "product_number") required this.productNumber,
      @JsonKey(name: "selling_price") required this.sellingPrice,
      @JsonKey(name: "serial_number") required this.serialNumber});

  factory _$PpobTransactionDetailDataPpobProductImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionDetailDataPpobProductImplFromJson(json);

  @override
  @JsonKey(name: "desc")
  final PpobProductDesc desc;
  @override
  @JsonKey(name: "formatted")
  final dynamic formatted;
  @override
  @JsonKey(name: "product_name")
  final String productName;
  @override
  @JsonKey(name: "product_number")
  final String productNumber;
  @override
  @JsonKey(name: "selling_price")
  final int sellingPrice;
  @override
  @JsonKey(name: "serial_number")
  final String serialNumber;

  @override
  String toString() {
    return 'PpobTransactionDetailDataPpobProduct(desc: $desc, formatted: $formatted, productName: $productName, productNumber: $productNumber, sellingPrice: $sellingPrice, serialNumber: $serialNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionDetailDataPpobProductImpl &&
            (identical(other.desc, desc) || other.desc == desc) &&
            const DeepCollectionEquality().equals(other.formatted, formatted) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productNumber, productNumber) ||
                other.productNumber == productNumber) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      desc,
      const DeepCollectionEquality().hash(formatted),
      productName,
      productNumber,
      sellingPrice,
      serialNumber);

  /// Create a copy of PpobTransactionDetailDataPpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionDetailDataPpobProductImplCopyWith<
          _$PpobTransactionDetailDataPpobProductImpl>
      get copyWith => __$$PpobTransactionDetailDataPpobProductImplCopyWithImpl<
          _$PpobTransactionDetailDataPpobProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionDetailDataPpobProductImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionDetailDataPpobProduct
    implements PpobTransactionDetailDataPpobProduct {
  const factory _PpobTransactionDetailDataPpobProduct(
          {@JsonKey(name: "desc") required final PpobProductDesc desc,
          @JsonKey(name: "formatted") required final dynamic formatted,
          @JsonKey(name: "product_name") required final String productName,
          @JsonKey(name: "product_number") required final String productNumber,
          @JsonKey(name: "selling_price") required final int sellingPrice,
          @JsonKey(name: "serial_number") required final String serialNumber}) =
      _$PpobTransactionDetailDataPpobProductImpl;

  factory _PpobTransactionDetailDataPpobProduct.fromJson(
          Map<String, dynamic> json) =
      _$PpobTransactionDetailDataPpobProductImpl.fromJson;

  @override
  @JsonKey(name: "desc")
  PpobProductDesc get desc;
  @override
  @JsonKey(name: "formatted")
  dynamic get formatted;
  @override
  @JsonKey(name: "product_name")
  String get productName;
  @override
  @JsonKey(name: "product_number")
  String get productNumber;
  @override
  @JsonKey(name: "selling_price")
  int get sellingPrice;
  @override
  @JsonKey(name: "serial_number")
  String get serialNumber;

  /// Create a copy of PpobTransactionDetailDataPpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionDetailDataPpobProductImplCopyWith<
          _$PpobTransactionDetailDataPpobProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobProductDesc _$PpobProductDescFromJson(Map<String, dynamic> json) {
  return _PpobProductDesc.fromJson(json);
}

/// @nodoc
mixin _$PpobProductDesc {
  @JsonKey(name: "alamat")
  String get alamat => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_admin_stnk")
  String get biayaAdminStnk => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_admin_tnkb")
  String get biayaAdminTnkb => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_denda_bbn")
  String get biayaDendaBbn => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_denda_pkb")
  String get biayaDendaPkb => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_denda_swd")
  String get biayaDendaSwd => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_pajak_progresif")
  String get biayaPajakProgresif => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_parkir_pokok")
  String get biayaParkirPokok => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_pokok_bbn")
  String get biayaPokokBbn => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_pokok_pkb")
  String get biayaPokokPkb => throw _privateConstructorUsedError;
  @JsonKey(name: "biaya_pokok_swd")
  String get biayaPokokSwd => throw _privateConstructorUsedError;
  @JsonKey(name: "daya")
  int get daya => throw _privateConstructorUsedError;
  @JsonKey(name: "detail")
  dynamic get detail => throw _privateConstructorUsedError;
  @JsonKey(name: "item_name")
  String get itemName => throw _privateConstructorUsedError;
  @JsonKey(name: "jatuh_temp")
  String get jatuhTemp => throw _privateConstructorUsedError;
  @JsonKey(name: "jht")
  int get jht => throw _privateConstructorUsedError;
  @JsonKey(name: "jkk")
  int get jkk => throw _privateConstructorUsedError;
  @JsonKey(name: "jkm")
  int get jkm => throw _privateConstructorUsedError;
  @JsonKey(name: "jpk")
  int get jpk => throw _privateConstructorUsedError;
  @JsonKey(name: "jpn")
  int get jpn => throw _privateConstructorUsedError;
  @JsonKey(name: "jumlah_peserta")
  String get jumlahPeserta => throw _privateConstructorUsedError;
  @JsonKey(name: "kab_kota")
  String get kabKota => throw _privateConstructorUsedError;
  @JsonKey(name: "kantor_cabang")
  String get kantorCabang => throw _privateConstructorUsedError;
  @JsonKey(name: "kecamatan")
  String get kecamatan => throw _privateConstructorUsedError;
  @JsonKey(name: "kelurahan")
  String get kelurahan => throw _privateConstructorUsedError;
  @JsonKey(name: "kode_divisi")
  String get kodeDivisi => throw _privateConstructorUsedError;
  @JsonKey(name: "kode_iuran")
  String get kodeIuran => throw _privateConstructorUsedError;
  @JsonKey(name: "kode_kab_kota")
  String get kodeKabKota => throw _privateConstructorUsedError;
  @JsonKey(name: "kode_program")
  String get kodeProgram => throw _privateConstructorUsedError;
  @JsonKey(name: "lembar_tagihan")
  int get lembarTagihan => throw _privateConstructorUsedError;
  @JsonKey(name: "luas_gedung")
  String get luasGedung => throw _privateConstructorUsedError;
  @JsonKey(name: "luas_tanah")
  String get luasTanah => throw _privateConstructorUsedError;
  @JsonKey(name: "merek_kb")
  String get merekKb => throw _privateConstructorUsedError;
  @JsonKey(name: "milik_kenama")
  String get milikKenama => throw _privateConstructorUsedError;
  @JsonKey(name: "model_kb")
  String get modelKb => throw _privateConstructorUsedError;
  @JsonKey(name: "no_pol")
  String get noPol => throw _privateConstructorUsedError;
  @JsonKey(name: "no_rangka")
  String get noRangka => throw _privateConstructorUsedError;
  @JsonKey(name: "no_registrasi")
  String get noRegistrasi => throw _privateConstructorUsedError;
  @JsonKey(name: "nomor_identitas")
  String get nomorIdentitas => throw _privateConstructorUsedError;
  @JsonKey(name: "nomor_mesin")
  String get nomorMesin => throw _privateConstructorUsedError;
  @JsonKey(name: "nomor_polisi")
  String get nomorPolisi => throw _privateConstructorUsedError;
  @JsonKey(name: "nomor_rangka")
  String get nomorRangka => throw _privateConstructorUsedError;
  @JsonKey(name: "npp")
  String get npp => throw _privateConstructorUsedError;
  @JsonKey(name: "tahun_buatan")
  String get tahunBuatan => throw _privateConstructorUsedError;
  @JsonKey(name: "tahun_pajak")
  String get tahunPajak => throw _privateConstructorUsedError;
  @JsonKey(name: "tanggal_registrasi")
  String get tanggalRegistrasi => throw _privateConstructorUsedError;
  @JsonKey(name: "tarif")
  String get tarif => throw _privateConstructorUsedError;
  @JsonKey(name: "tenor")
  String get tenor => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_akhir_pajak_baru")
  String get tglAkhirPajakBaru => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_efektif")
  String get tglEfektif => throw _privateConstructorUsedError;
  @JsonKey(name: "tgl_expired")
  String get tglExpired => throw _privateConstructorUsedError;
  @JsonKey(name: "transaksi")
  String get transaksi => throw _privateConstructorUsedError;

  /// Serializes this PpobProductDesc to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobProductDesc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobProductDescCopyWith<PpobProductDesc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobProductDescCopyWith<$Res> {
  factory $PpobProductDescCopyWith(
          PpobProductDesc value, $Res Function(PpobProductDesc) then) =
      _$PpobProductDescCopyWithImpl<$Res, PpobProductDesc>;
  @useResult
  $Res call(
      {@JsonKey(name: "alamat") String alamat,
      @JsonKey(name: "biaya_admin_stnk") String biayaAdminStnk,
      @JsonKey(name: "biaya_admin_tnkb") String biayaAdminTnkb,
      @JsonKey(name: "biaya_denda_bbn") String biayaDendaBbn,
      @JsonKey(name: "biaya_denda_pkb") String biayaDendaPkb,
      @JsonKey(name: "biaya_denda_swd") String biayaDendaSwd,
      @JsonKey(name: "biaya_pajak_progresif") String biayaPajakProgresif,
      @JsonKey(name: "biaya_parkir_pokok") String biayaParkirPokok,
      @JsonKey(name: "biaya_pokok_bbn") String biayaPokokBbn,
      @JsonKey(name: "biaya_pokok_pkb") String biayaPokokPkb,
      @JsonKey(name: "biaya_pokok_swd") String biayaPokokSwd,
      @JsonKey(name: "daya") int daya,
      @JsonKey(name: "detail") dynamic detail,
      @JsonKey(name: "item_name") String itemName,
      @JsonKey(name: "jatuh_temp") String jatuhTemp,
      @JsonKey(name: "jht") int jht,
      @JsonKey(name: "jkk") int jkk,
      @JsonKey(name: "jkm") int jkm,
      @JsonKey(name: "jpk") int jpk,
      @JsonKey(name: "jpn") int jpn,
      @JsonKey(name: "jumlah_peserta") String jumlahPeserta,
      @JsonKey(name: "kab_kota") String kabKota,
      @JsonKey(name: "kantor_cabang") String kantorCabang,
      @JsonKey(name: "kecamatan") String kecamatan,
      @JsonKey(name: "kelurahan") String kelurahan,
      @JsonKey(name: "kode_divisi") String kodeDivisi,
      @JsonKey(name: "kode_iuran") String kodeIuran,
      @JsonKey(name: "kode_kab_kota") String kodeKabKota,
      @JsonKey(name: "kode_program") String kodeProgram,
      @JsonKey(name: "lembar_tagihan") int lembarTagihan,
      @JsonKey(name: "luas_gedung") String luasGedung,
      @JsonKey(name: "luas_tanah") String luasTanah,
      @JsonKey(name: "merek_kb") String merekKb,
      @JsonKey(name: "milik_kenama") String milikKenama,
      @JsonKey(name: "model_kb") String modelKb,
      @JsonKey(name: "no_pol") String noPol,
      @JsonKey(name: "no_rangka") String noRangka,
      @JsonKey(name: "no_registrasi") String noRegistrasi,
      @JsonKey(name: "nomor_identitas") String nomorIdentitas,
      @JsonKey(name: "nomor_mesin") String nomorMesin,
      @JsonKey(name: "nomor_polisi") String nomorPolisi,
      @JsonKey(name: "nomor_rangka") String nomorRangka,
      @JsonKey(name: "npp") String npp,
      @JsonKey(name: "tahun_buatan") String tahunBuatan,
      @JsonKey(name: "tahun_pajak") String tahunPajak,
      @JsonKey(name: "tanggal_registrasi") String tanggalRegistrasi,
      @JsonKey(name: "tarif") String tarif,
      @JsonKey(name: "tenor") String tenor,
      @JsonKey(name: "tgl_akhir_pajak_baru") String tglAkhirPajakBaru,
      @JsonKey(name: "tgl_efektif") String tglEfektif,
      @JsonKey(name: "tgl_expired") String tglExpired,
      @JsonKey(name: "transaksi") String transaksi});
}

/// @nodoc
class _$PpobProductDescCopyWithImpl<$Res, $Val extends PpobProductDesc>
    implements $PpobProductDescCopyWith<$Res> {
  _$PpobProductDescCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobProductDesc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alamat = null,
    Object? biayaAdminStnk = null,
    Object? biayaAdminTnkb = null,
    Object? biayaDendaBbn = null,
    Object? biayaDendaPkb = null,
    Object? biayaDendaSwd = null,
    Object? biayaPajakProgresif = null,
    Object? biayaParkirPokok = null,
    Object? biayaPokokBbn = null,
    Object? biayaPokokPkb = null,
    Object? biayaPokokSwd = null,
    Object? daya = null,
    Object? detail = freezed,
    Object? itemName = null,
    Object? jatuhTemp = null,
    Object? jht = null,
    Object? jkk = null,
    Object? jkm = null,
    Object? jpk = null,
    Object? jpn = null,
    Object? jumlahPeserta = null,
    Object? kabKota = null,
    Object? kantorCabang = null,
    Object? kecamatan = null,
    Object? kelurahan = null,
    Object? kodeDivisi = null,
    Object? kodeIuran = null,
    Object? kodeKabKota = null,
    Object? kodeProgram = null,
    Object? lembarTagihan = null,
    Object? luasGedung = null,
    Object? luasTanah = null,
    Object? merekKb = null,
    Object? milikKenama = null,
    Object? modelKb = null,
    Object? noPol = null,
    Object? noRangka = null,
    Object? noRegistrasi = null,
    Object? nomorIdentitas = null,
    Object? nomorMesin = null,
    Object? nomorPolisi = null,
    Object? nomorRangka = null,
    Object? npp = null,
    Object? tahunBuatan = null,
    Object? tahunPajak = null,
    Object? tanggalRegistrasi = null,
    Object? tarif = null,
    Object? tenor = null,
    Object? tglAkhirPajakBaru = null,
    Object? tglEfektif = null,
    Object? tglExpired = null,
    Object? transaksi = null,
  }) {
    return _then(_value.copyWith(
      alamat: null == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String,
      biayaAdminStnk: null == biayaAdminStnk
          ? _value.biayaAdminStnk
          : biayaAdminStnk // ignore: cast_nullable_to_non_nullable
              as String,
      biayaAdminTnkb: null == biayaAdminTnkb
          ? _value.biayaAdminTnkb
          : biayaAdminTnkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaBbn: null == biayaDendaBbn
          ? _value.biayaDendaBbn
          : biayaDendaBbn // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaPkb: null == biayaDendaPkb
          ? _value.biayaDendaPkb
          : biayaDendaPkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaSwd: null == biayaDendaSwd
          ? _value.biayaDendaSwd
          : biayaDendaSwd // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPajakProgresif: null == biayaPajakProgresif
          ? _value.biayaPajakProgresif
          : biayaPajakProgresif // ignore: cast_nullable_to_non_nullable
              as String,
      biayaParkirPokok: null == biayaParkirPokok
          ? _value.biayaParkirPokok
          : biayaParkirPokok // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokBbn: null == biayaPokokBbn
          ? _value.biayaPokokBbn
          : biayaPokokBbn // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokPkb: null == biayaPokokPkb
          ? _value.biayaPokokPkb
          : biayaPokokPkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokSwd: null == biayaPokokSwd
          ? _value.biayaPokokSwd
          : biayaPokokSwd // ignore: cast_nullable_to_non_nullable
              as String,
      daya: null == daya
          ? _value.daya
          : daya // ignore: cast_nullable_to_non_nullable
              as int,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      jatuhTemp: null == jatuhTemp
          ? _value.jatuhTemp
          : jatuhTemp // ignore: cast_nullable_to_non_nullable
              as String,
      jht: null == jht
          ? _value.jht
          : jht // ignore: cast_nullable_to_non_nullable
              as int,
      jkk: null == jkk
          ? _value.jkk
          : jkk // ignore: cast_nullable_to_non_nullable
              as int,
      jkm: null == jkm
          ? _value.jkm
          : jkm // ignore: cast_nullable_to_non_nullable
              as int,
      jpk: null == jpk
          ? _value.jpk
          : jpk // ignore: cast_nullable_to_non_nullable
              as int,
      jpn: null == jpn
          ? _value.jpn
          : jpn // ignore: cast_nullable_to_non_nullable
              as int,
      jumlahPeserta: null == jumlahPeserta
          ? _value.jumlahPeserta
          : jumlahPeserta // ignore: cast_nullable_to_non_nullable
              as String,
      kabKota: null == kabKota
          ? _value.kabKota
          : kabKota // ignore: cast_nullable_to_non_nullable
              as String,
      kantorCabang: null == kantorCabang
          ? _value.kantorCabang
          : kantorCabang // ignore: cast_nullable_to_non_nullable
              as String,
      kecamatan: null == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String,
      kelurahan: null == kelurahan
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as String,
      kodeDivisi: null == kodeDivisi
          ? _value.kodeDivisi
          : kodeDivisi // ignore: cast_nullable_to_non_nullable
              as String,
      kodeIuran: null == kodeIuran
          ? _value.kodeIuran
          : kodeIuran // ignore: cast_nullable_to_non_nullable
              as String,
      kodeKabKota: null == kodeKabKota
          ? _value.kodeKabKota
          : kodeKabKota // ignore: cast_nullable_to_non_nullable
              as String,
      kodeProgram: null == kodeProgram
          ? _value.kodeProgram
          : kodeProgram // ignore: cast_nullable_to_non_nullable
              as String,
      lembarTagihan: null == lembarTagihan
          ? _value.lembarTagihan
          : lembarTagihan // ignore: cast_nullable_to_non_nullable
              as int,
      luasGedung: null == luasGedung
          ? _value.luasGedung
          : luasGedung // ignore: cast_nullable_to_non_nullable
              as String,
      luasTanah: null == luasTanah
          ? _value.luasTanah
          : luasTanah // ignore: cast_nullable_to_non_nullable
              as String,
      merekKb: null == merekKb
          ? _value.merekKb
          : merekKb // ignore: cast_nullable_to_non_nullable
              as String,
      milikKenama: null == milikKenama
          ? _value.milikKenama
          : milikKenama // ignore: cast_nullable_to_non_nullable
              as String,
      modelKb: null == modelKb
          ? _value.modelKb
          : modelKb // ignore: cast_nullable_to_non_nullable
              as String,
      noPol: null == noPol
          ? _value.noPol
          : noPol // ignore: cast_nullable_to_non_nullable
              as String,
      noRangka: null == noRangka
          ? _value.noRangka
          : noRangka // ignore: cast_nullable_to_non_nullable
              as String,
      noRegistrasi: null == noRegistrasi
          ? _value.noRegistrasi
          : noRegistrasi // ignore: cast_nullable_to_non_nullable
              as String,
      nomorIdentitas: null == nomorIdentitas
          ? _value.nomorIdentitas
          : nomorIdentitas // ignore: cast_nullable_to_non_nullable
              as String,
      nomorMesin: null == nomorMesin
          ? _value.nomorMesin
          : nomorMesin // ignore: cast_nullable_to_non_nullable
              as String,
      nomorPolisi: null == nomorPolisi
          ? _value.nomorPolisi
          : nomorPolisi // ignore: cast_nullable_to_non_nullable
              as String,
      nomorRangka: null == nomorRangka
          ? _value.nomorRangka
          : nomorRangka // ignore: cast_nullable_to_non_nullable
              as String,
      npp: null == npp
          ? _value.npp
          : npp // ignore: cast_nullable_to_non_nullable
              as String,
      tahunBuatan: null == tahunBuatan
          ? _value.tahunBuatan
          : tahunBuatan // ignore: cast_nullable_to_non_nullable
              as String,
      tahunPajak: null == tahunPajak
          ? _value.tahunPajak
          : tahunPajak // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalRegistrasi: null == tanggalRegistrasi
          ? _value.tanggalRegistrasi
          : tanggalRegistrasi // ignore: cast_nullable_to_non_nullable
              as String,
      tarif: null == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as String,
      tenor: null == tenor
          ? _value.tenor
          : tenor // ignore: cast_nullable_to_non_nullable
              as String,
      tglAkhirPajakBaru: null == tglAkhirPajakBaru
          ? _value.tglAkhirPajakBaru
          : tglAkhirPajakBaru // ignore: cast_nullable_to_non_nullable
              as String,
      tglEfektif: null == tglEfektif
          ? _value.tglEfektif
          : tglEfektif // ignore: cast_nullable_to_non_nullable
              as String,
      tglExpired: null == tglExpired
          ? _value.tglExpired
          : tglExpired // ignore: cast_nullable_to_non_nullable
              as String,
      transaksi: null == transaksi
          ? _value.transaksi
          : transaksi // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobProductDescImplCopyWith<$Res>
    implements $PpobProductDescCopyWith<$Res> {
  factory _$$PpobProductDescImplCopyWith(_$PpobProductDescImpl value,
          $Res Function(_$PpobProductDescImpl) then) =
      __$$PpobProductDescImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "alamat") String alamat,
      @JsonKey(name: "biaya_admin_stnk") String biayaAdminStnk,
      @JsonKey(name: "biaya_admin_tnkb") String biayaAdminTnkb,
      @JsonKey(name: "biaya_denda_bbn") String biayaDendaBbn,
      @JsonKey(name: "biaya_denda_pkb") String biayaDendaPkb,
      @JsonKey(name: "biaya_denda_swd") String biayaDendaSwd,
      @JsonKey(name: "biaya_pajak_progresif") String biayaPajakProgresif,
      @JsonKey(name: "biaya_parkir_pokok") String biayaParkirPokok,
      @JsonKey(name: "biaya_pokok_bbn") String biayaPokokBbn,
      @JsonKey(name: "biaya_pokok_pkb") String biayaPokokPkb,
      @JsonKey(name: "biaya_pokok_swd") String biayaPokokSwd,
      @JsonKey(name: "daya") int daya,
      @JsonKey(name: "detail") dynamic detail,
      @JsonKey(name: "item_name") String itemName,
      @JsonKey(name: "jatuh_temp") String jatuhTemp,
      @JsonKey(name: "jht") int jht,
      @JsonKey(name: "jkk") int jkk,
      @JsonKey(name: "jkm") int jkm,
      @JsonKey(name: "jpk") int jpk,
      @JsonKey(name: "jpn") int jpn,
      @JsonKey(name: "jumlah_peserta") String jumlahPeserta,
      @JsonKey(name: "kab_kota") String kabKota,
      @JsonKey(name: "kantor_cabang") String kantorCabang,
      @JsonKey(name: "kecamatan") String kecamatan,
      @JsonKey(name: "kelurahan") String kelurahan,
      @JsonKey(name: "kode_divisi") String kodeDivisi,
      @JsonKey(name: "kode_iuran") String kodeIuran,
      @JsonKey(name: "kode_kab_kota") String kodeKabKota,
      @JsonKey(name: "kode_program") String kodeProgram,
      @JsonKey(name: "lembar_tagihan") int lembarTagihan,
      @JsonKey(name: "luas_gedung") String luasGedung,
      @JsonKey(name: "luas_tanah") String luasTanah,
      @JsonKey(name: "merek_kb") String merekKb,
      @JsonKey(name: "milik_kenama") String milikKenama,
      @JsonKey(name: "model_kb") String modelKb,
      @JsonKey(name: "no_pol") String noPol,
      @JsonKey(name: "no_rangka") String noRangka,
      @JsonKey(name: "no_registrasi") String noRegistrasi,
      @JsonKey(name: "nomor_identitas") String nomorIdentitas,
      @JsonKey(name: "nomor_mesin") String nomorMesin,
      @JsonKey(name: "nomor_polisi") String nomorPolisi,
      @JsonKey(name: "nomor_rangka") String nomorRangka,
      @JsonKey(name: "npp") String npp,
      @JsonKey(name: "tahun_buatan") String tahunBuatan,
      @JsonKey(name: "tahun_pajak") String tahunPajak,
      @JsonKey(name: "tanggal_registrasi") String tanggalRegistrasi,
      @JsonKey(name: "tarif") String tarif,
      @JsonKey(name: "tenor") String tenor,
      @JsonKey(name: "tgl_akhir_pajak_baru") String tglAkhirPajakBaru,
      @JsonKey(name: "tgl_efektif") String tglEfektif,
      @JsonKey(name: "tgl_expired") String tglExpired,
      @JsonKey(name: "transaksi") String transaksi});
}

/// @nodoc
class __$$PpobProductDescImplCopyWithImpl<$Res>
    extends _$PpobProductDescCopyWithImpl<$Res, _$PpobProductDescImpl>
    implements _$$PpobProductDescImplCopyWith<$Res> {
  __$$PpobProductDescImplCopyWithImpl(
      _$PpobProductDescImpl _value, $Res Function(_$PpobProductDescImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobProductDesc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alamat = null,
    Object? biayaAdminStnk = null,
    Object? biayaAdminTnkb = null,
    Object? biayaDendaBbn = null,
    Object? biayaDendaPkb = null,
    Object? biayaDendaSwd = null,
    Object? biayaPajakProgresif = null,
    Object? biayaParkirPokok = null,
    Object? biayaPokokBbn = null,
    Object? biayaPokokPkb = null,
    Object? biayaPokokSwd = null,
    Object? daya = null,
    Object? detail = freezed,
    Object? itemName = null,
    Object? jatuhTemp = null,
    Object? jht = null,
    Object? jkk = null,
    Object? jkm = null,
    Object? jpk = null,
    Object? jpn = null,
    Object? jumlahPeserta = null,
    Object? kabKota = null,
    Object? kantorCabang = null,
    Object? kecamatan = null,
    Object? kelurahan = null,
    Object? kodeDivisi = null,
    Object? kodeIuran = null,
    Object? kodeKabKota = null,
    Object? kodeProgram = null,
    Object? lembarTagihan = null,
    Object? luasGedung = null,
    Object? luasTanah = null,
    Object? merekKb = null,
    Object? milikKenama = null,
    Object? modelKb = null,
    Object? noPol = null,
    Object? noRangka = null,
    Object? noRegistrasi = null,
    Object? nomorIdentitas = null,
    Object? nomorMesin = null,
    Object? nomorPolisi = null,
    Object? nomorRangka = null,
    Object? npp = null,
    Object? tahunBuatan = null,
    Object? tahunPajak = null,
    Object? tanggalRegistrasi = null,
    Object? tarif = null,
    Object? tenor = null,
    Object? tglAkhirPajakBaru = null,
    Object? tglEfektif = null,
    Object? tglExpired = null,
    Object? transaksi = null,
  }) {
    return _then(_$PpobProductDescImpl(
      alamat: null == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String,
      biayaAdminStnk: null == biayaAdminStnk
          ? _value.biayaAdminStnk
          : biayaAdminStnk // ignore: cast_nullable_to_non_nullable
              as String,
      biayaAdminTnkb: null == biayaAdminTnkb
          ? _value.biayaAdminTnkb
          : biayaAdminTnkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaBbn: null == biayaDendaBbn
          ? _value.biayaDendaBbn
          : biayaDendaBbn // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaPkb: null == biayaDendaPkb
          ? _value.biayaDendaPkb
          : biayaDendaPkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaSwd: null == biayaDendaSwd
          ? _value.biayaDendaSwd
          : biayaDendaSwd // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPajakProgresif: null == biayaPajakProgresif
          ? _value.biayaPajakProgresif
          : biayaPajakProgresif // ignore: cast_nullable_to_non_nullable
              as String,
      biayaParkirPokok: null == biayaParkirPokok
          ? _value.biayaParkirPokok
          : biayaParkirPokok // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokBbn: null == biayaPokokBbn
          ? _value.biayaPokokBbn
          : biayaPokokBbn // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokPkb: null == biayaPokokPkb
          ? _value.biayaPokokPkb
          : biayaPokokPkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokSwd: null == biayaPokokSwd
          ? _value.biayaPokokSwd
          : biayaPokokSwd // ignore: cast_nullable_to_non_nullable
              as String,
      daya: null == daya
          ? _value.daya
          : daya // ignore: cast_nullable_to_non_nullable
              as int,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as dynamic,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      jatuhTemp: null == jatuhTemp
          ? _value.jatuhTemp
          : jatuhTemp // ignore: cast_nullable_to_non_nullable
              as String,
      jht: null == jht
          ? _value.jht
          : jht // ignore: cast_nullable_to_non_nullable
              as int,
      jkk: null == jkk
          ? _value.jkk
          : jkk // ignore: cast_nullable_to_non_nullable
              as int,
      jkm: null == jkm
          ? _value.jkm
          : jkm // ignore: cast_nullable_to_non_nullable
              as int,
      jpk: null == jpk
          ? _value.jpk
          : jpk // ignore: cast_nullable_to_non_nullable
              as int,
      jpn: null == jpn
          ? _value.jpn
          : jpn // ignore: cast_nullable_to_non_nullable
              as int,
      jumlahPeserta: null == jumlahPeserta
          ? _value.jumlahPeserta
          : jumlahPeserta // ignore: cast_nullable_to_non_nullable
              as String,
      kabKota: null == kabKota
          ? _value.kabKota
          : kabKota // ignore: cast_nullable_to_non_nullable
              as String,
      kantorCabang: null == kantorCabang
          ? _value.kantorCabang
          : kantorCabang // ignore: cast_nullable_to_non_nullable
              as String,
      kecamatan: null == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String,
      kelurahan: null == kelurahan
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as String,
      kodeDivisi: null == kodeDivisi
          ? _value.kodeDivisi
          : kodeDivisi // ignore: cast_nullable_to_non_nullable
              as String,
      kodeIuran: null == kodeIuran
          ? _value.kodeIuran
          : kodeIuran // ignore: cast_nullable_to_non_nullable
              as String,
      kodeKabKota: null == kodeKabKota
          ? _value.kodeKabKota
          : kodeKabKota // ignore: cast_nullable_to_non_nullable
              as String,
      kodeProgram: null == kodeProgram
          ? _value.kodeProgram
          : kodeProgram // ignore: cast_nullable_to_non_nullable
              as String,
      lembarTagihan: null == lembarTagihan
          ? _value.lembarTagihan
          : lembarTagihan // ignore: cast_nullable_to_non_nullable
              as int,
      luasGedung: null == luasGedung
          ? _value.luasGedung
          : luasGedung // ignore: cast_nullable_to_non_nullable
              as String,
      luasTanah: null == luasTanah
          ? _value.luasTanah
          : luasTanah // ignore: cast_nullable_to_non_nullable
              as String,
      merekKb: null == merekKb
          ? _value.merekKb
          : merekKb // ignore: cast_nullable_to_non_nullable
              as String,
      milikKenama: null == milikKenama
          ? _value.milikKenama
          : milikKenama // ignore: cast_nullable_to_non_nullable
              as String,
      modelKb: null == modelKb
          ? _value.modelKb
          : modelKb // ignore: cast_nullable_to_non_nullable
              as String,
      noPol: null == noPol
          ? _value.noPol
          : noPol // ignore: cast_nullable_to_non_nullable
              as String,
      noRangka: null == noRangka
          ? _value.noRangka
          : noRangka // ignore: cast_nullable_to_non_nullable
              as String,
      noRegistrasi: null == noRegistrasi
          ? _value.noRegistrasi
          : noRegistrasi // ignore: cast_nullable_to_non_nullable
              as String,
      nomorIdentitas: null == nomorIdentitas
          ? _value.nomorIdentitas
          : nomorIdentitas // ignore: cast_nullable_to_non_nullable
              as String,
      nomorMesin: null == nomorMesin
          ? _value.nomorMesin
          : nomorMesin // ignore: cast_nullable_to_non_nullable
              as String,
      nomorPolisi: null == nomorPolisi
          ? _value.nomorPolisi
          : nomorPolisi // ignore: cast_nullable_to_non_nullable
              as String,
      nomorRangka: null == nomorRangka
          ? _value.nomorRangka
          : nomorRangka // ignore: cast_nullable_to_non_nullable
              as String,
      npp: null == npp
          ? _value.npp
          : npp // ignore: cast_nullable_to_non_nullable
              as String,
      tahunBuatan: null == tahunBuatan
          ? _value.tahunBuatan
          : tahunBuatan // ignore: cast_nullable_to_non_nullable
              as String,
      tahunPajak: null == tahunPajak
          ? _value.tahunPajak
          : tahunPajak // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalRegistrasi: null == tanggalRegistrasi
          ? _value.tanggalRegistrasi
          : tanggalRegistrasi // ignore: cast_nullable_to_non_nullable
              as String,
      tarif: null == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as String,
      tenor: null == tenor
          ? _value.tenor
          : tenor // ignore: cast_nullable_to_non_nullable
              as String,
      tglAkhirPajakBaru: null == tglAkhirPajakBaru
          ? _value.tglAkhirPajakBaru
          : tglAkhirPajakBaru // ignore: cast_nullable_to_non_nullable
              as String,
      tglEfektif: null == tglEfektif
          ? _value.tglEfektif
          : tglEfektif // ignore: cast_nullable_to_non_nullable
              as String,
      tglExpired: null == tglExpired
          ? _value.tglExpired
          : tglExpired // ignore: cast_nullable_to_non_nullable
              as String,
      transaksi: null == transaksi
          ? _value.transaksi
          : transaksi // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobProductDescImpl implements _PpobProductDesc {
  const _$PpobProductDescImpl(
      {@JsonKey(name: "alamat") required this.alamat,
      @JsonKey(name: "biaya_admin_stnk") required this.biayaAdminStnk,
      @JsonKey(name: "biaya_admin_tnkb") required this.biayaAdminTnkb,
      @JsonKey(name: "biaya_denda_bbn") required this.biayaDendaBbn,
      @JsonKey(name: "biaya_denda_pkb") required this.biayaDendaPkb,
      @JsonKey(name: "biaya_denda_swd") required this.biayaDendaSwd,
      @JsonKey(name: "biaya_pajak_progresif") required this.biayaPajakProgresif,
      @JsonKey(name: "biaya_parkir_pokok") required this.biayaParkirPokok,
      @JsonKey(name: "biaya_pokok_bbn") required this.biayaPokokBbn,
      @JsonKey(name: "biaya_pokok_pkb") required this.biayaPokokPkb,
      @JsonKey(name: "biaya_pokok_swd") required this.biayaPokokSwd,
      @JsonKey(name: "daya") required this.daya,
      @JsonKey(name: "detail") required this.detail,
      @JsonKey(name: "item_name") required this.itemName,
      @JsonKey(name: "jatuh_temp") required this.jatuhTemp,
      @JsonKey(name: "jht") required this.jht,
      @JsonKey(name: "jkk") required this.jkk,
      @JsonKey(name: "jkm") required this.jkm,
      @JsonKey(name: "jpk") required this.jpk,
      @JsonKey(name: "jpn") required this.jpn,
      @JsonKey(name: "jumlah_peserta") required this.jumlahPeserta,
      @JsonKey(name: "kab_kota") required this.kabKota,
      @JsonKey(name: "kantor_cabang") required this.kantorCabang,
      @JsonKey(name: "kecamatan") required this.kecamatan,
      @JsonKey(name: "kelurahan") required this.kelurahan,
      @JsonKey(name: "kode_divisi") required this.kodeDivisi,
      @JsonKey(name: "kode_iuran") required this.kodeIuran,
      @JsonKey(name: "kode_kab_kota") required this.kodeKabKota,
      @JsonKey(name: "kode_program") required this.kodeProgram,
      @JsonKey(name: "lembar_tagihan") required this.lembarTagihan,
      @JsonKey(name: "luas_gedung") required this.luasGedung,
      @JsonKey(name: "luas_tanah") required this.luasTanah,
      @JsonKey(name: "merek_kb") required this.merekKb,
      @JsonKey(name: "milik_kenama") required this.milikKenama,
      @JsonKey(name: "model_kb") required this.modelKb,
      @JsonKey(name: "no_pol") required this.noPol,
      @JsonKey(name: "no_rangka") required this.noRangka,
      @JsonKey(name: "no_registrasi") required this.noRegistrasi,
      @JsonKey(name: "nomor_identitas") required this.nomorIdentitas,
      @JsonKey(name: "nomor_mesin") required this.nomorMesin,
      @JsonKey(name: "nomor_polisi") required this.nomorPolisi,
      @JsonKey(name: "nomor_rangka") required this.nomorRangka,
      @JsonKey(name: "npp") required this.npp,
      @JsonKey(name: "tahun_buatan") required this.tahunBuatan,
      @JsonKey(name: "tahun_pajak") required this.tahunPajak,
      @JsonKey(name: "tanggal_registrasi") required this.tanggalRegistrasi,
      @JsonKey(name: "tarif") required this.tarif,
      @JsonKey(name: "tenor") required this.tenor,
      @JsonKey(name: "tgl_akhir_pajak_baru") required this.tglAkhirPajakBaru,
      @JsonKey(name: "tgl_efektif") required this.tglEfektif,
      @JsonKey(name: "tgl_expired") required this.tglExpired,
      @JsonKey(name: "transaksi") required this.transaksi});

  factory _$PpobProductDescImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobProductDescImplFromJson(json);

  @override
  @JsonKey(name: "alamat")
  final String alamat;
  @override
  @JsonKey(name: "biaya_admin_stnk")
  final String biayaAdminStnk;
  @override
  @JsonKey(name: "biaya_admin_tnkb")
  final String biayaAdminTnkb;
  @override
  @JsonKey(name: "biaya_denda_bbn")
  final String biayaDendaBbn;
  @override
  @JsonKey(name: "biaya_denda_pkb")
  final String biayaDendaPkb;
  @override
  @JsonKey(name: "biaya_denda_swd")
  final String biayaDendaSwd;
  @override
  @JsonKey(name: "biaya_pajak_progresif")
  final String biayaPajakProgresif;
  @override
  @JsonKey(name: "biaya_parkir_pokok")
  final String biayaParkirPokok;
  @override
  @JsonKey(name: "biaya_pokok_bbn")
  final String biayaPokokBbn;
  @override
  @JsonKey(name: "biaya_pokok_pkb")
  final String biayaPokokPkb;
  @override
  @JsonKey(name: "biaya_pokok_swd")
  final String biayaPokokSwd;
  @override
  @JsonKey(name: "daya")
  final int daya;
  @override
  @JsonKey(name: "detail")
  final dynamic detail;
  @override
  @JsonKey(name: "item_name")
  final String itemName;
  @override
  @JsonKey(name: "jatuh_temp")
  final String jatuhTemp;
  @override
  @JsonKey(name: "jht")
  final int jht;
  @override
  @JsonKey(name: "jkk")
  final int jkk;
  @override
  @JsonKey(name: "jkm")
  final int jkm;
  @override
  @JsonKey(name: "jpk")
  final int jpk;
  @override
  @JsonKey(name: "jpn")
  final int jpn;
  @override
  @JsonKey(name: "jumlah_peserta")
  final String jumlahPeserta;
  @override
  @JsonKey(name: "kab_kota")
  final String kabKota;
  @override
  @JsonKey(name: "kantor_cabang")
  final String kantorCabang;
  @override
  @JsonKey(name: "kecamatan")
  final String kecamatan;
  @override
  @JsonKey(name: "kelurahan")
  final String kelurahan;
  @override
  @JsonKey(name: "kode_divisi")
  final String kodeDivisi;
  @override
  @JsonKey(name: "kode_iuran")
  final String kodeIuran;
  @override
  @JsonKey(name: "kode_kab_kota")
  final String kodeKabKota;
  @override
  @JsonKey(name: "kode_program")
  final String kodeProgram;
  @override
  @JsonKey(name: "lembar_tagihan")
  final int lembarTagihan;
  @override
  @JsonKey(name: "luas_gedung")
  final String luasGedung;
  @override
  @JsonKey(name: "luas_tanah")
  final String luasTanah;
  @override
  @JsonKey(name: "merek_kb")
  final String merekKb;
  @override
  @JsonKey(name: "milik_kenama")
  final String milikKenama;
  @override
  @JsonKey(name: "model_kb")
  final String modelKb;
  @override
  @JsonKey(name: "no_pol")
  final String noPol;
  @override
  @JsonKey(name: "no_rangka")
  final String noRangka;
  @override
  @JsonKey(name: "no_registrasi")
  final String noRegistrasi;
  @override
  @JsonKey(name: "nomor_identitas")
  final String nomorIdentitas;
  @override
  @JsonKey(name: "nomor_mesin")
  final String nomorMesin;
  @override
  @JsonKey(name: "nomor_polisi")
  final String nomorPolisi;
  @override
  @JsonKey(name: "nomor_rangka")
  final String nomorRangka;
  @override
  @JsonKey(name: "npp")
  final String npp;
  @override
  @JsonKey(name: "tahun_buatan")
  final String tahunBuatan;
  @override
  @JsonKey(name: "tahun_pajak")
  final String tahunPajak;
  @override
  @JsonKey(name: "tanggal_registrasi")
  final String tanggalRegistrasi;
  @override
  @JsonKey(name: "tarif")
  final String tarif;
  @override
  @JsonKey(name: "tenor")
  final String tenor;
  @override
  @JsonKey(name: "tgl_akhir_pajak_baru")
  final String tglAkhirPajakBaru;
  @override
  @JsonKey(name: "tgl_efektif")
  final String tglEfektif;
  @override
  @JsonKey(name: "tgl_expired")
  final String tglExpired;
  @override
  @JsonKey(name: "transaksi")
  final String transaksi;

  @override
  String toString() {
    return 'PpobProductDesc(alamat: $alamat, biayaAdminStnk: $biayaAdminStnk, biayaAdminTnkb: $biayaAdminTnkb, biayaDendaBbn: $biayaDendaBbn, biayaDendaPkb: $biayaDendaPkb, biayaDendaSwd: $biayaDendaSwd, biayaPajakProgresif: $biayaPajakProgresif, biayaParkirPokok: $biayaParkirPokok, biayaPokokBbn: $biayaPokokBbn, biayaPokokPkb: $biayaPokokPkb, biayaPokokSwd: $biayaPokokSwd, daya: $daya, detail: $detail, itemName: $itemName, jatuhTemp: $jatuhTemp, jht: $jht, jkk: $jkk, jkm: $jkm, jpk: $jpk, jpn: $jpn, jumlahPeserta: $jumlahPeserta, kabKota: $kabKota, kantorCabang: $kantorCabang, kecamatan: $kecamatan, kelurahan: $kelurahan, kodeDivisi: $kodeDivisi, kodeIuran: $kodeIuran, kodeKabKota: $kodeKabKota, kodeProgram: $kodeProgram, lembarTagihan: $lembarTagihan, luasGedung: $luasGedung, luasTanah: $luasTanah, merekKb: $merekKb, milikKenama: $milikKenama, modelKb: $modelKb, noPol: $noPol, noRangka: $noRangka, noRegistrasi: $noRegistrasi, nomorIdentitas: $nomorIdentitas, nomorMesin: $nomorMesin, nomorPolisi: $nomorPolisi, nomorRangka: $nomorRangka, npp: $npp, tahunBuatan: $tahunBuatan, tahunPajak: $tahunPajak, tanggalRegistrasi: $tanggalRegistrasi, tarif: $tarif, tenor: $tenor, tglAkhirPajakBaru: $tglAkhirPajakBaru, tglEfektif: $tglEfektif, tglExpired: $tglExpired, transaksi: $transaksi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobProductDescImpl &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.biayaAdminStnk, biayaAdminStnk) ||
                other.biayaAdminStnk == biayaAdminStnk) &&
            (identical(other.biayaAdminTnkb, biayaAdminTnkb) ||
                other.biayaAdminTnkb == biayaAdminTnkb) &&
            (identical(other.biayaDendaBbn, biayaDendaBbn) ||
                other.biayaDendaBbn == biayaDendaBbn) &&
            (identical(other.biayaDendaPkb, biayaDendaPkb) ||
                other.biayaDendaPkb == biayaDendaPkb) &&
            (identical(other.biayaDendaSwd, biayaDendaSwd) ||
                other.biayaDendaSwd == biayaDendaSwd) &&
            (identical(other.biayaPajakProgresif, biayaPajakProgresif) ||
                other.biayaPajakProgresif == biayaPajakProgresif) &&
            (identical(other.biayaParkirPokok, biayaParkirPokok) ||
                other.biayaParkirPokok == biayaParkirPokok) &&
            (identical(other.biayaPokokBbn, biayaPokokBbn) ||
                other.biayaPokokBbn == biayaPokokBbn) &&
            (identical(other.biayaPokokPkb, biayaPokokPkb) ||
                other.biayaPokokPkb == biayaPokokPkb) &&
            (identical(other.biayaPokokSwd, biayaPokokSwd) ||
                other.biayaPokokSwd == biayaPokokSwd) &&
            (identical(other.daya, daya) || other.daya == daya) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.jatuhTemp, jatuhTemp) ||
                other.jatuhTemp == jatuhTemp) &&
            (identical(other.jht, jht) || other.jht == jht) &&
            (identical(other.jkk, jkk) || other.jkk == jkk) &&
            (identical(other.jkm, jkm) || other.jkm == jkm) &&
            (identical(other.jpk, jpk) || other.jpk == jpk) &&
            (identical(other.jpn, jpn) || other.jpn == jpn) &&
            (identical(other.jumlahPeserta, jumlahPeserta) ||
                other.jumlahPeserta == jumlahPeserta) &&
            (identical(other.kabKota, kabKota) || other.kabKota == kabKota) &&
            (identical(other.kantorCabang, kantorCabang) ||
                other.kantorCabang == kantorCabang) &&
            (identical(other.kecamatan, kecamatan) ||
                other.kecamatan == kecamatan) &&
            (identical(other.kelurahan, kelurahan) ||
                other.kelurahan == kelurahan) &&
            (identical(other.kodeDivisi, kodeDivisi) ||
                other.kodeDivisi == kodeDivisi) &&
            (identical(other.kodeIuran, kodeIuran) ||
                other.kodeIuran == kodeIuran) &&
            (identical(other.kodeKabKota, kodeKabKota) ||
                other.kodeKabKota == kodeKabKota) &&
            (identical(other.kodeProgram, kodeProgram) ||
                other.kodeProgram == kodeProgram) &&
            (identical(other.lembarTagihan, lembarTagihan) ||
                other.lembarTagihan == lembarTagihan) &&
            (identical(other.luasGedung, luasGedung) ||
                other.luasGedung == luasGedung) &&
            (identical(other.luasTanah, luasTanah) ||
                other.luasTanah == luasTanah) &&
            (identical(other.merekKb, merekKb) || other.merekKb == merekKb) &&
            (identical(other.milikKenama, milikKenama) ||
                other.milikKenama == milikKenama) &&
            (identical(other.modelKb, modelKb) || other.modelKb == modelKb) &&
            (identical(other.noPol, noPol) || other.noPol == noPol) &&
            (identical(other.noRangka, noRangka) ||
                other.noRangka == noRangka) &&
            (identical(other.noRegistrasi, noRegistrasi) ||
                other.noRegistrasi == noRegistrasi) &&
            (identical(other.nomorIdentitas, nomorIdentitas) ||
                other.nomorIdentitas == nomorIdentitas) &&
            (identical(other.nomorMesin, nomorMesin) ||
                other.nomorMesin == nomorMesin) &&
            (identical(other.nomorPolisi, nomorPolisi) ||
                other.nomorPolisi == nomorPolisi) &&
            (identical(other.nomorRangka, nomorRangka) ||
                other.nomorRangka == nomorRangka) &&
            (identical(other.npp, npp) || other.npp == npp) &&
            (identical(other.tahunBuatan, tahunBuatan) ||
                other.tahunBuatan == tahunBuatan) &&
            (identical(other.tahunPajak, tahunPajak) ||
                other.tahunPajak == tahunPajak) &&
            (identical(other.tanggalRegistrasi, tanggalRegistrasi) ||
                other.tanggalRegistrasi == tanggalRegistrasi) &&
            (identical(other.tarif, tarif) || other.tarif == tarif) &&
            (identical(other.tenor, tenor) || other.tenor == tenor) &&
            (identical(other.tglAkhirPajakBaru, tglAkhirPajakBaru) ||
                other.tglAkhirPajakBaru == tglAkhirPajakBaru) &&
            (identical(other.tglEfektif, tglEfektif) ||
                other.tglEfektif == tglEfektif) &&
            (identical(other.tglExpired, tglExpired) ||
                other.tglExpired == tglExpired) &&
            (identical(other.transaksi, transaksi) ||
                other.transaksi == transaksi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        alamat,
        biayaAdminStnk,
        biayaAdminTnkb,
        biayaDendaBbn,
        biayaDendaPkb,
        biayaDendaSwd,
        biayaPajakProgresif,
        biayaParkirPokok,
        biayaPokokBbn,
        biayaPokokPkb,
        biayaPokokSwd,
        daya,
        const DeepCollectionEquality().hash(detail),
        itemName,
        jatuhTemp,
        jht,
        jkk,
        jkm,
        jpk,
        jpn,
        jumlahPeserta,
        kabKota,
        kantorCabang,
        kecamatan,
        kelurahan,
        kodeDivisi,
        kodeIuran,
        kodeKabKota,
        kodeProgram,
        lembarTagihan,
        luasGedung,
        luasTanah,
        merekKb,
        milikKenama,
        modelKb,
        noPol,
        noRangka,
        noRegistrasi,
        nomorIdentitas,
        nomorMesin,
        nomorPolisi,
        nomorRangka,
        npp,
        tahunBuatan,
        tahunPajak,
        tanggalRegistrasi,
        tarif,
        tenor,
        tglAkhirPajakBaru,
        tglEfektif,
        tglExpired,
        transaksi
      ]);

  /// Create a copy of PpobProductDesc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobProductDescImplCopyWith<_$PpobProductDescImpl> get copyWith =>
      __$$PpobProductDescImplCopyWithImpl<_$PpobProductDescImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobProductDescImplToJson(
      this,
    );
  }
}

abstract class _PpobProductDesc implements PpobProductDesc {
  const factory _PpobProductDesc(
      {@JsonKey(name: "alamat") required final String alamat,
      @JsonKey(name: "biaya_admin_stnk") required final String biayaAdminStnk,
      @JsonKey(name: "biaya_admin_tnkb") required final String biayaAdminTnkb,
      @JsonKey(name: "biaya_denda_bbn") required final String biayaDendaBbn,
      @JsonKey(name: "biaya_denda_pkb") required final String biayaDendaPkb,
      @JsonKey(name: "biaya_denda_swd") required final String biayaDendaSwd,
      @JsonKey(name: "biaya_pajak_progresif")
      required final String biayaPajakProgresif,
      @JsonKey(name: "biaya_parkir_pokok")
      required final String biayaParkirPokok,
      @JsonKey(name: "biaya_pokok_bbn") required final String biayaPokokBbn,
      @JsonKey(name: "biaya_pokok_pkb") required final String biayaPokokPkb,
      @JsonKey(name: "biaya_pokok_swd") required final String biayaPokokSwd,
      @JsonKey(name: "daya") required final int daya,
      @JsonKey(name: "detail") required final dynamic detail,
      @JsonKey(name: "item_name") required final String itemName,
      @JsonKey(name: "jatuh_temp") required final String jatuhTemp,
      @JsonKey(name: "jht") required final int jht,
      @JsonKey(name: "jkk") required final int jkk,
      @JsonKey(name: "jkm") required final int jkm,
      @JsonKey(name: "jpk") required final int jpk,
      @JsonKey(name: "jpn") required final int jpn,
      @JsonKey(name: "jumlah_peserta") required final String jumlahPeserta,
      @JsonKey(name: "kab_kota") required final String kabKota,
      @JsonKey(name: "kantor_cabang") required final String kantorCabang,
      @JsonKey(name: "kecamatan") required final String kecamatan,
      @JsonKey(name: "kelurahan") required final String kelurahan,
      @JsonKey(name: "kode_divisi") required final String kodeDivisi,
      @JsonKey(name: "kode_iuran") required final String kodeIuran,
      @JsonKey(name: "kode_kab_kota") required final String kodeKabKota,
      @JsonKey(name: "kode_program") required final String kodeProgram,
      @JsonKey(name: "lembar_tagihan") required final int lembarTagihan,
      @JsonKey(name: "luas_gedung") required final String luasGedung,
      @JsonKey(name: "luas_tanah") required final String luasTanah,
      @JsonKey(name: "merek_kb") required final String merekKb,
      @JsonKey(name: "milik_kenama") required final String milikKenama,
      @JsonKey(name: "model_kb") required final String modelKb,
      @JsonKey(name: "no_pol") required final String noPol,
      @JsonKey(name: "no_rangka") required final String noRangka,
      @JsonKey(name: "no_registrasi") required final String noRegistrasi,
      @JsonKey(name: "nomor_identitas") required final String nomorIdentitas,
      @JsonKey(name: "nomor_mesin") required final String nomorMesin,
      @JsonKey(name: "nomor_polisi") required final String nomorPolisi,
      @JsonKey(name: "nomor_rangka") required final String nomorRangka,
      @JsonKey(name: "npp") required final String npp,
      @JsonKey(name: "tahun_buatan") required final String tahunBuatan,
      @JsonKey(name: "tahun_pajak") required final String tahunPajak,
      @JsonKey(name: "tanggal_registrasi")
      required final String tanggalRegistrasi,
      @JsonKey(name: "tarif") required final String tarif,
      @JsonKey(name: "tenor") required final String tenor,
      @JsonKey(name: "tgl_akhir_pajak_baru")
      required final String tglAkhirPajakBaru,
      @JsonKey(name: "tgl_efektif") required final String tglEfektif,
      @JsonKey(name: "tgl_expired") required final String tglExpired,
      @JsonKey(name: "transaksi")
      required final String transaksi}) = _$PpobProductDescImpl;

  factory _PpobProductDesc.fromJson(Map<String, dynamic> json) =
      _$PpobProductDescImpl.fromJson;

  @override
  @JsonKey(name: "alamat")
  String get alamat;
  @override
  @JsonKey(name: "biaya_admin_stnk")
  String get biayaAdminStnk;
  @override
  @JsonKey(name: "biaya_admin_tnkb")
  String get biayaAdminTnkb;
  @override
  @JsonKey(name: "biaya_denda_bbn")
  String get biayaDendaBbn;
  @override
  @JsonKey(name: "biaya_denda_pkb")
  String get biayaDendaPkb;
  @override
  @JsonKey(name: "biaya_denda_swd")
  String get biayaDendaSwd;
  @override
  @JsonKey(name: "biaya_pajak_progresif")
  String get biayaPajakProgresif;
  @override
  @JsonKey(name: "biaya_parkir_pokok")
  String get biayaParkirPokok;
  @override
  @JsonKey(name: "biaya_pokok_bbn")
  String get biayaPokokBbn;
  @override
  @JsonKey(name: "biaya_pokok_pkb")
  String get biayaPokokPkb;
  @override
  @JsonKey(name: "biaya_pokok_swd")
  String get biayaPokokSwd;
  @override
  @JsonKey(name: "daya")
  int get daya;
  @override
  @JsonKey(name: "detail")
  dynamic get detail;
  @override
  @JsonKey(name: "item_name")
  String get itemName;
  @override
  @JsonKey(name: "jatuh_temp")
  String get jatuhTemp;
  @override
  @JsonKey(name: "jht")
  int get jht;
  @override
  @JsonKey(name: "jkk")
  int get jkk;
  @override
  @JsonKey(name: "jkm")
  int get jkm;
  @override
  @JsonKey(name: "jpk")
  int get jpk;
  @override
  @JsonKey(name: "jpn")
  int get jpn;
  @override
  @JsonKey(name: "jumlah_peserta")
  String get jumlahPeserta;
  @override
  @JsonKey(name: "kab_kota")
  String get kabKota;
  @override
  @JsonKey(name: "kantor_cabang")
  String get kantorCabang;
  @override
  @JsonKey(name: "kecamatan")
  String get kecamatan;
  @override
  @JsonKey(name: "kelurahan")
  String get kelurahan;
  @override
  @JsonKey(name: "kode_divisi")
  String get kodeDivisi;
  @override
  @JsonKey(name: "kode_iuran")
  String get kodeIuran;
  @override
  @JsonKey(name: "kode_kab_kota")
  String get kodeKabKota;
  @override
  @JsonKey(name: "kode_program")
  String get kodeProgram;
  @override
  @JsonKey(name: "lembar_tagihan")
  int get lembarTagihan;
  @override
  @JsonKey(name: "luas_gedung")
  String get luasGedung;
  @override
  @JsonKey(name: "luas_tanah")
  String get luasTanah;
  @override
  @JsonKey(name: "merek_kb")
  String get merekKb;
  @override
  @JsonKey(name: "milik_kenama")
  String get milikKenama;
  @override
  @JsonKey(name: "model_kb")
  String get modelKb;
  @override
  @JsonKey(name: "no_pol")
  String get noPol;
  @override
  @JsonKey(name: "no_rangka")
  String get noRangka;
  @override
  @JsonKey(name: "no_registrasi")
  String get noRegistrasi;
  @override
  @JsonKey(name: "nomor_identitas")
  String get nomorIdentitas;
  @override
  @JsonKey(name: "nomor_mesin")
  String get nomorMesin;
  @override
  @JsonKey(name: "nomor_polisi")
  String get nomorPolisi;
  @override
  @JsonKey(name: "nomor_rangka")
  String get nomorRangka;
  @override
  @JsonKey(name: "npp")
  String get npp;
  @override
  @JsonKey(name: "tahun_buatan")
  String get tahunBuatan;
  @override
  @JsonKey(name: "tahun_pajak")
  String get tahunPajak;
  @override
  @JsonKey(name: "tanggal_registrasi")
  String get tanggalRegistrasi;
  @override
  @JsonKey(name: "tarif")
  String get tarif;
  @override
  @JsonKey(name: "tenor")
  String get tenor;
  @override
  @JsonKey(name: "tgl_akhir_pajak_baru")
  String get tglAkhirPajakBaru;
  @override
  @JsonKey(name: "tgl_efektif")
  String get tglEfektif;
  @override
  @JsonKey(name: "tgl_expired")
  String get tglExpired;
  @override
  @JsonKey(name: "transaksi")
  String get transaksi;

  /// Create a copy of PpobProductDesc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobProductDescImplCopyWith<_$PpobProductDescImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PpobTransactionDetailDataRate _$PpobTransactionDetailDataRateFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionDetailDataRate.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionDetailDataRate {
  @JsonKey(name: "formatted")
  dynamic get formatted => throw _privateConstructorUsedError;
  @JsonKey(name: "fx_rate")
  int get fxPpobTransactionDetailDataRate => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionDetailDataRate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionDetailDataRateCopyWith<PpobTransactionDetailDataRate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionDetailDataRateCopyWith<$Res> {
  factory $PpobTransactionDetailDataRateCopyWith(
          PpobTransactionDetailDataRate value,
          $Res Function(PpobTransactionDetailDataRate) then) =
      _$PpobTransactionDetailDataRateCopyWithImpl<$Res,
          PpobTransactionDetailDataRate>;
  @useResult
  $Res call(
      {@JsonKey(name: "formatted") dynamic formatted,
      @JsonKey(name: "fx_rate") int fxPpobTransactionDetailDataRate});
}

/// @nodoc
class _$PpobTransactionDetailDataRateCopyWithImpl<$Res,
        $Val extends PpobTransactionDetailDataRate>
    implements $PpobTransactionDetailDataRateCopyWith<$Res> {
  _$PpobTransactionDetailDataRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = freezed,
    Object? fxPpobTransactionDetailDataRate = null,
  }) {
    return _then(_value.copyWith(
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fxPpobTransactionDetailDataRate: null == fxPpobTransactionDetailDataRate
          ? _value.fxPpobTransactionDetailDataRate
          : fxPpobTransactionDetailDataRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobTransactionDetailDataRateImplCopyWith<$Res>
    implements $PpobTransactionDetailDataRateCopyWith<$Res> {
  factory _$$PpobTransactionDetailDataRateImplCopyWith(
          _$PpobTransactionDetailDataRateImpl value,
          $Res Function(_$PpobTransactionDetailDataRateImpl) then) =
      __$$PpobTransactionDetailDataRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "formatted") dynamic formatted,
      @JsonKey(name: "fx_rate") int fxPpobTransactionDetailDataRate});
}

/// @nodoc
class __$$PpobTransactionDetailDataRateImplCopyWithImpl<$Res>
    extends _$PpobTransactionDetailDataRateCopyWithImpl<$Res,
        _$PpobTransactionDetailDataRateImpl>
    implements _$$PpobTransactionDetailDataRateImplCopyWith<$Res> {
  __$$PpobTransactionDetailDataRateImplCopyWithImpl(
      _$PpobTransactionDetailDataRateImpl _value,
      $Res Function(_$PpobTransactionDetailDataRateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = freezed,
    Object? fxPpobTransactionDetailDataRate = null,
  }) {
    return _then(_$PpobTransactionDetailDataRateImpl(
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fxPpobTransactionDetailDataRate: null == fxPpobTransactionDetailDataRate
          ? _value.fxPpobTransactionDetailDataRate
          : fxPpobTransactionDetailDataRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobTransactionDetailDataRateImpl
    implements _PpobTransactionDetailDataRate {
  const _$PpobTransactionDetailDataRateImpl(
      {@JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "fx_rate") required this.fxPpobTransactionDetailDataRate});

  factory _$PpobTransactionDetailDataRateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionDetailDataRateImplFromJson(json);

  @override
  @JsonKey(name: "formatted")
  final dynamic formatted;
  @override
  @JsonKey(name: "fx_rate")
  final int fxPpobTransactionDetailDataRate;

  @override
  String toString() {
    return 'PpobTransactionDetailDataRate(formatted: $formatted, fxPpobTransactionDetailDataRate: $fxPpobTransactionDetailDataRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionDetailDataRateImpl &&
            const DeepCollectionEquality().equals(other.formatted, formatted) &&
            (identical(other.fxPpobTransactionDetailDataRate,
                    fxPpobTransactionDetailDataRate) ||
                other.fxPpobTransactionDetailDataRate ==
                    fxPpobTransactionDetailDataRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(formatted),
      fxPpobTransactionDetailDataRate);

  /// Create a copy of PpobTransactionDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionDetailDataRateImplCopyWith<
          _$PpobTransactionDetailDataRateImpl>
      get copyWith => __$$PpobTransactionDetailDataRateImplCopyWithImpl<
          _$PpobTransactionDetailDataRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionDetailDataRateImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionDetailDataRate
    implements PpobTransactionDetailDataRate {
  const factory _PpobTransactionDetailDataRate(
          {@JsonKey(name: "formatted") required final dynamic formatted,
          @JsonKey(name: "fx_rate")
          required final int fxPpobTransactionDetailDataRate}) =
      _$PpobTransactionDetailDataRateImpl;

  factory _PpobTransactionDetailDataRate.fromJson(Map<String, dynamic> json) =
      _$PpobTransactionDetailDataRateImpl.fromJson;

  @override
  @JsonKey(name: "formatted")
  dynamic get formatted;
  @override
  @JsonKey(name: "fx_rate")
  int get fxPpobTransactionDetailDataRate;

  /// Create a copy of PpobTransactionDetailDataRate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionDetailDataRateImplCopyWith<
          _$PpobTransactionDetailDataRateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobTransactionDetailDataRecipient _$PpobTransactionDetailDataRecipientFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionDetailDataRecipient.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionDetailDataRecipient {
  @JsonKey(name: "account_code")
  String get accountCode => throw _privateConstructorUsedError;
  @JsonKey(name: "account_name")
  String get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_code")
  String get bankCode => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_name")
  String get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_type")
  String get currencyType => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted")
  dynamic get formatted => throw _privateConstructorUsedError;
  @JsonKey(name: "icon_url")
  String get iconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "nominal")
  int get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String get note => throw _privateConstructorUsedError;
  @JsonKey(name: "receive_currency_type")
  String get receiveCurrencyType => throw _privateConstructorUsedError;
  @JsonKey(name: "receive_nominal")
  int get receiveNominal => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionDetailDataRecipient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionDetailDataRecipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionDetailDataRecipientCopyWith<
          PpobTransactionDetailDataRecipient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionDetailDataRecipientCopyWith<$Res> {
  factory $PpobTransactionDetailDataRecipientCopyWith(
          PpobTransactionDetailDataRecipient value,
          $Res Function(PpobTransactionDetailDataRecipient) then) =
      _$PpobTransactionDetailDataRecipientCopyWithImpl<$Res,
          PpobTransactionDetailDataRecipient>;
  @useResult
  $Res call(
      {@JsonKey(name: "account_code") String accountCode,
      @JsonKey(name: "account_name") String accountName,
      @JsonKey(name: "bank_code") String bankCode,
      @JsonKey(name: "bank_name") String bankName,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "formatted") dynamic formatted,
      @JsonKey(name: "icon_url") String iconUrl,
      @JsonKey(name: "nominal") int nominal,
      @JsonKey(name: "note") String note,
      @JsonKey(name: "receive_currency_type") String receiveCurrencyType,
      @JsonKey(name: "receive_nominal") int receiveNominal});
}

/// @nodoc
class _$PpobTransactionDetailDataRecipientCopyWithImpl<$Res,
        $Val extends PpobTransactionDetailDataRecipient>
    implements $PpobTransactionDetailDataRecipientCopyWith<$Res> {
  _$PpobTransactionDetailDataRecipientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionDetailDataRecipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountCode = null,
    Object? accountName = null,
    Object? bankCode = null,
    Object? bankName = null,
    Object? currencyType = null,
    Object? formatted = freezed,
    Object? iconUrl = null,
    Object? nominal = null,
    Object? note = null,
    Object? receiveCurrencyType = null,
    Object? receiveNominal = null,
  }) {
    return _then(_value.copyWith(
      accountCode: null == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      receiveCurrencyType: null == receiveCurrencyType
          ? _value.receiveCurrencyType
          : receiveCurrencyType // ignore: cast_nullable_to_non_nullable
              as String,
      receiveNominal: null == receiveNominal
          ? _value.receiveNominal
          : receiveNominal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobTransactionDetailDataRecipientImplCopyWith<$Res>
    implements $PpobTransactionDetailDataRecipientCopyWith<$Res> {
  factory _$$PpobTransactionDetailDataRecipientImplCopyWith(
          _$PpobTransactionDetailDataRecipientImpl value,
          $Res Function(_$PpobTransactionDetailDataRecipientImpl) then) =
      __$$PpobTransactionDetailDataRecipientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "account_code") String accountCode,
      @JsonKey(name: "account_name") String accountName,
      @JsonKey(name: "bank_code") String bankCode,
      @JsonKey(name: "bank_name") String bankName,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "formatted") dynamic formatted,
      @JsonKey(name: "icon_url") String iconUrl,
      @JsonKey(name: "nominal") int nominal,
      @JsonKey(name: "note") String note,
      @JsonKey(name: "receive_currency_type") String receiveCurrencyType,
      @JsonKey(name: "receive_nominal") int receiveNominal});
}

/// @nodoc
class __$$PpobTransactionDetailDataRecipientImplCopyWithImpl<$Res>
    extends _$PpobTransactionDetailDataRecipientCopyWithImpl<$Res,
        _$PpobTransactionDetailDataRecipientImpl>
    implements _$$PpobTransactionDetailDataRecipientImplCopyWith<$Res> {
  __$$PpobTransactionDetailDataRecipientImplCopyWithImpl(
      _$PpobTransactionDetailDataRecipientImpl _value,
      $Res Function(_$PpobTransactionDetailDataRecipientImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionDetailDataRecipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountCode = null,
    Object? accountName = null,
    Object? bankCode = null,
    Object? bankName = null,
    Object? currencyType = null,
    Object? formatted = freezed,
    Object? iconUrl = null,
    Object? nominal = null,
    Object? note = null,
    Object? receiveCurrencyType = null,
    Object? receiveNominal = null,
  }) {
    return _then(_$PpobTransactionDetailDataRecipientImpl(
      accountCode: null == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      receiveCurrencyType: null == receiveCurrencyType
          ? _value.receiveCurrencyType
          : receiveCurrencyType // ignore: cast_nullable_to_non_nullable
              as String,
      receiveNominal: null == receiveNominal
          ? _value.receiveNominal
          : receiveNominal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobTransactionDetailDataRecipientImpl
    implements _PpobTransactionDetailDataRecipient {
  const _$PpobTransactionDetailDataRecipientImpl(
      {@JsonKey(name: "account_code") required this.accountCode,
      @JsonKey(name: "account_name") required this.accountName,
      @JsonKey(name: "bank_code") required this.bankCode,
      @JsonKey(name: "bank_name") required this.bankName,
      @JsonKey(name: "currency_type") required this.currencyType,
      @JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "icon_url") required this.iconUrl,
      @JsonKey(name: "nominal") required this.nominal,
      @JsonKey(name: "note") required this.note,
      @JsonKey(name: "receive_currency_type") required this.receiveCurrencyType,
      @JsonKey(name: "receive_nominal") required this.receiveNominal});

  factory _$PpobTransactionDetailDataRecipientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionDetailDataRecipientImplFromJson(json);

  @override
  @JsonKey(name: "account_code")
  final String accountCode;
  @override
  @JsonKey(name: "account_name")
  final String accountName;
  @override
  @JsonKey(name: "bank_code")
  final String bankCode;
  @override
  @JsonKey(name: "bank_name")
  final String bankName;
  @override
  @JsonKey(name: "currency_type")
  final String currencyType;
  @override
  @JsonKey(name: "formatted")
  final dynamic formatted;
  @override
  @JsonKey(name: "icon_url")
  final String iconUrl;
  @override
  @JsonKey(name: "nominal")
  final int nominal;
  @override
  @JsonKey(name: "note")
  final String note;
  @override
  @JsonKey(name: "receive_currency_type")
  final String receiveCurrencyType;
  @override
  @JsonKey(name: "receive_nominal")
  final int receiveNominal;

  @override
  String toString() {
    return 'PpobTransactionDetailDataRecipient(accountCode: $accountCode, accountName: $accountName, bankCode: $bankCode, bankName: $bankName, currencyType: $currencyType, formatted: $formatted, iconUrl: $iconUrl, nominal: $nominal, note: $note, receiveCurrencyType: $receiveCurrencyType, receiveNominal: $receiveNominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionDetailDataRecipientImpl &&
            (identical(other.accountCode, accountCode) ||
                other.accountCode == accountCode) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            const DeepCollectionEquality().equals(other.formatted, formatted) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.receiveCurrencyType, receiveCurrencyType) ||
                other.receiveCurrencyType == receiveCurrencyType) &&
            (identical(other.receiveNominal, receiveNominal) ||
                other.receiveNominal == receiveNominal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountCode,
      accountName,
      bankCode,
      bankName,
      currencyType,
      const DeepCollectionEquality().hash(formatted),
      iconUrl,
      nominal,
      note,
      receiveCurrencyType,
      receiveNominal);

  /// Create a copy of PpobTransactionDetailDataRecipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionDetailDataRecipientImplCopyWith<
          _$PpobTransactionDetailDataRecipientImpl>
      get copyWith => __$$PpobTransactionDetailDataRecipientImplCopyWithImpl<
          _$PpobTransactionDetailDataRecipientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionDetailDataRecipientImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionDetailDataRecipient
    implements PpobTransactionDetailDataRecipient {
  const factory _PpobTransactionDetailDataRecipient(
          {@JsonKey(name: "account_code") required final String accountCode,
          @JsonKey(name: "account_name") required final String accountName,
          @JsonKey(name: "bank_code") required final String bankCode,
          @JsonKey(name: "bank_name") required final String bankName,
          @JsonKey(name: "currency_type") required final String currencyType,
          @JsonKey(name: "formatted") required final dynamic formatted,
          @JsonKey(name: "icon_url") required final String iconUrl,
          @JsonKey(name: "nominal") required final int nominal,
          @JsonKey(name: "note") required final String note,
          @JsonKey(name: "receive_currency_type")
          required final String receiveCurrencyType,
          @JsonKey(name: "receive_nominal")
          required final int receiveNominal}) =
      _$PpobTransactionDetailDataRecipientImpl;

  factory _PpobTransactionDetailDataRecipient.fromJson(
          Map<String, dynamic> json) =
      _$PpobTransactionDetailDataRecipientImpl.fromJson;

  @override
  @JsonKey(name: "account_code")
  String get accountCode;
  @override
  @JsonKey(name: "account_name")
  String get accountName;
  @override
  @JsonKey(name: "bank_code")
  String get bankCode;
  @override
  @JsonKey(name: "bank_name")
  String get bankName;
  @override
  @JsonKey(name: "currency_type")
  String get currencyType;
  @override
  @JsonKey(name: "formatted")
  dynamic get formatted;
  @override
  @JsonKey(name: "icon_url")
  String get iconUrl;
  @override
  @JsonKey(name: "nominal")
  int get nominal;
  @override
  @JsonKey(name: "note")
  String get note;
  @override
  @JsonKey(name: "receive_currency_type")
  String get receiveCurrencyType;
  @override
  @JsonKey(name: "receive_nominal")
  int get receiveNominal;

  /// Create a copy of PpobTransactionDetailDataRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionDetailDataRecipientImplCopyWith<
          _$PpobTransactionDetailDataRecipientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobTransactionDetailDataTotalFee _$PpobTransactionDetailDataTotalFeeFromJson(
    Map<String, dynamic> json) {
  return _PpobTransactionDetailDataTotalFee.fromJson(json);
}

/// @nodoc
mixin _$PpobTransactionDetailDataTotalFee {
  @JsonKey(name: "amount")
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "feature_fee")
  int get featureFee => throw _privateConstructorUsedError;
  @JsonKey(name: "is_feature_free")
  bool get isFeatureFree => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free")
  bool get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: "is_payment_channel_free")
  bool get isPaymentChannelFree => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_channel_fee")
  int get paymentChannelFee => throw _privateConstructorUsedError;

  /// Serializes this PpobTransactionDetailDataTotalFee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobTransactionDetailDataTotalFee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobTransactionDetailDataTotalFeeCopyWith<PpobTransactionDetailDataTotalFee>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobTransactionDetailDataTotalFeeCopyWith<$Res> {
  factory $PpobTransactionDetailDataTotalFeeCopyWith(
          PpobTransactionDetailDataTotalFee value,
          $Res Function(PpobTransactionDetailDataTotalFee) then) =
      _$PpobTransactionDetailDataTotalFeeCopyWithImpl<$Res,
          PpobTransactionDetailDataTotalFee>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") int amount,
      @JsonKey(name: "feature_fee") int featureFee,
      @JsonKey(name: "is_feature_free") bool isFeatureFree,
      @JsonKey(name: "is_free") bool isFree,
      @JsonKey(name: "is_payment_channel_free") bool isPaymentChannelFree,
      @JsonKey(name: "payment_channel_fee") int paymentChannelFee});
}

/// @nodoc
class _$PpobTransactionDetailDataTotalFeeCopyWithImpl<$Res,
        $Val extends PpobTransactionDetailDataTotalFee>
    implements $PpobTransactionDetailDataTotalFeeCopyWith<$Res> {
  _$PpobTransactionDetailDataTotalFeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobTransactionDetailDataTotalFee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? featureFee = null,
    Object? isFeatureFree = null,
    Object? isFree = null,
    Object? isPaymentChannelFree = null,
    Object? paymentChannelFee = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      featureFee: null == featureFee
          ? _value.featureFee
          : featureFee // ignore: cast_nullable_to_non_nullable
              as int,
      isFeatureFree: null == isFeatureFree
          ? _value.isFeatureFree
          : isFeatureFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentChannelFree: null == isPaymentChannelFree
          ? _value.isPaymentChannelFree
          : isPaymentChannelFree // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentChannelFee: null == paymentChannelFee
          ? _value.paymentChannelFee
          : paymentChannelFee // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobTransactionDetailDataTotalFeeImplCopyWith<$Res>
    implements $PpobTransactionDetailDataTotalFeeCopyWith<$Res> {
  factory _$$PpobTransactionDetailDataTotalFeeImplCopyWith(
          _$PpobTransactionDetailDataTotalFeeImpl value,
          $Res Function(_$PpobTransactionDetailDataTotalFeeImpl) then) =
      __$$PpobTransactionDetailDataTotalFeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") int amount,
      @JsonKey(name: "feature_fee") int featureFee,
      @JsonKey(name: "is_feature_free") bool isFeatureFree,
      @JsonKey(name: "is_free") bool isFree,
      @JsonKey(name: "is_payment_channel_free") bool isPaymentChannelFree,
      @JsonKey(name: "payment_channel_fee") int paymentChannelFee});
}

/// @nodoc
class __$$PpobTransactionDetailDataTotalFeeImplCopyWithImpl<$Res>
    extends _$PpobTransactionDetailDataTotalFeeCopyWithImpl<$Res,
        _$PpobTransactionDetailDataTotalFeeImpl>
    implements _$$PpobTransactionDetailDataTotalFeeImplCopyWith<$Res> {
  __$$PpobTransactionDetailDataTotalFeeImplCopyWithImpl(
      _$PpobTransactionDetailDataTotalFeeImpl _value,
      $Res Function(_$PpobTransactionDetailDataTotalFeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobTransactionDetailDataTotalFee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? featureFee = null,
    Object? isFeatureFree = null,
    Object? isFree = null,
    Object? isPaymentChannelFree = null,
    Object? paymentChannelFee = null,
  }) {
    return _then(_$PpobTransactionDetailDataTotalFeeImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      featureFee: null == featureFee
          ? _value.featureFee
          : featureFee // ignore: cast_nullable_to_non_nullable
              as int,
      isFeatureFree: null == isFeatureFree
          ? _value.isFeatureFree
          : isFeatureFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentChannelFree: null == isPaymentChannelFree
          ? _value.isPaymentChannelFree
          : isPaymentChannelFree // ignore: cast_nullable_to_non_nullable
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
class _$PpobTransactionDetailDataTotalFeeImpl
    implements _PpobTransactionDetailDataTotalFee {
  const _$PpobTransactionDetailDataTotalFeeImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "feature_fee") required this.featureFee,
      @JsonKey(name: "is_feature_free") required this.isFeatureFree,
      @JsonKey(name: "is_free") required this.isFree,
      @JsonKey(name: "is_payment_channel_free")
      required this.isPaymentChannelFree,
      @JsonKey(name: "payment_channel_fee") required this.paymentChannelFee});

  factory _$PpobTransactionDetailDataTotalFeeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobTransactionDetailDataTotalFeeImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  final int amount;
  @override
  @JsonKey(name: "feature_fee")
  final int featureFee;
  @override
  @JsonKey(name: "is_feature_free")
  final bool isFeatureFree;
  @override
  @JsonKey(name: "is_free")
  final bool isFree;
  @override
  @JsonKey(name: "is_payment_channel_free")
  final bool isPaymentChannelFree;
  @override
  @JsonKey(name: "payment_channel_fee")
  final int paymentChannelFee;

  @override
  String toString() {
    return 'PpobTransactionDetailDataTotalFee(amount: $amount, featureFee: $featureFee, isFeatureFree: $isFeatureFree, isFree: $isFree, isPaymentChannelFree: $isPaymentChannelFree, paymentChannelFee: $paymentChannelFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobTransactionDetailDataTotalFeeImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.featureFee, featureFee) ||
                other.featureFee == featureFee) &&
            (identical(other.isFeatureFree, isFeatureFree) ||
                other.isFeatureFree == isFeatureFree) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.isPaymentChannelFree, isPaymentChannelFree) ||
                other.isPaymentChannelFree == isPaymentChannelFree) &&
            (identical(other.paymentChannelFee, paymentChannelFee) ||
                other.paymentChannelFee == paymentChannelFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, featureFee,
      isFeatureFree, isFree, isPaymentChannelFree, paymentChannelFee);

  /// Create a copy of PpobTransactionDetailDataTotalFee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobTransactionDetailDataTotalFeeImplCopyWith<
          _$PpobTransactionDetailDataTotalFeeImpl>
      get copyWith => __$$PpobTransactionDetailDataTotalFeeImplCopyWithImpl<
          _$PpobTransactionDetailDataTotalFeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobTransactionDetailDataTotalFeeImplToJson(
      this,
    );
  }
}

abstract class _PpobTransactionDetailDataTotalFee
    implements PpobTransactionDetailDataTotalFee {
  const factory _PpobTransactionDetailDataTotalFee(
          {@JsonKey(name: "amount") required final int amount,
          @JsonKey(name: "feature_fee") required final int featureFee,
          @JsonKey(name: "is_feature_free") required final bool isFeatureFree,
          @JsonKey(name: "is_free") required final bool isFree,
          @JsonKey(name: "is_payment_channel_free")
          required final bool isPaymentChannelFree,
          @JsonKey(name: "payment_channel_fee")
          required final int paymentChannelFee}) =
      _$PpobTransactionDetailDataTotalFeeImpl;

  factory _PpobTransactionDetailDataTotalFee.fromJson(
          Map<String, dynamic> json) =
      _$PpobTransactionDetailDataTotalFeeImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  int get amount;
  @override
  @JsonKey(name: "feature_fee")
  int get featureFee;
  @override
  @JsonKey(name: "is_feature_free")
  bool get isFeatureFree;
  @override
  @JsonKey(name: "is_free")
  bool get isFree;
  @override
  @JsonKey(name: "is_payment_channel_free")
  bool get isPaymentChannelFree;
  @override
  @JsonKey(name: "payment_channel_fee")
  int get paymentChannelFee;

  /// Create a copy of PpobTransactionDetailDataTotalFee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobTransactionDetailDataTotalFeeImplCopyWith<
          _$PpobTransactionDetailDataTotalFeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
