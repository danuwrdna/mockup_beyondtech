// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remittance_transaction_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemittanceTransactionResponseModel _$RemittanceTransactionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RemittanceTransactionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RemittanceTransactionResponseModel {
  @JsonKey(name: "data")
  RemittanceTransactionData get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this RemittanceTransactionResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceTransactionResponseModelCopyWith<
          RemittanceTransactionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionResponseModelCopyWith<$Res> {
  factory $RemittanceTransactionResponseModelCopyWith(
          RemittanceTransactionResponseModel value,
          $Res Function(RemittanceTransactionResponseModel) then) =
      _$RemittanceTransactionResponseModelCopyWithImpl<$Res,
          RemittanceTransactionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") RemittanceTransactionData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  $RemittanceTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RemittanceTransactionResponseModelCopyWithImpl<$Res,
        $Val extends RemittanceTransactionResponseModel>
    implements $RemittanceTransactionResponseModelCopyWith<$Res> {
  _$RemittanceTransactionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionResponseModel
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
              as RemittanceTransactionData,
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

  /// Create a copy of RemittanceTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataCopyWith<$Res> get data {
    return $RemittanceTransactionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceTransactionResponseModelImplCopyWith<$Res>
    implements $RemittanceTransactionResponseModelCopyWith<$Res> {
  factory _$$RemittanceTransactionResponseModelImplCopyWith(
          _$RemittanceTransactionResponseModelImpl value,
          $Res Function(_$RemittanceTransactionResponseModelImpl) then) =
      __$$RemittanceTransactionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") RemittanceTransactionData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});

  @override
  $RemittanceTransactionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RemittanceTransactionResponseModelImplCopyWithImpl<$Res>
    extends _$RemittanceTransactionResponseModelCopyWithImpl<$Res,
        _$RemittanceTransactionResponseModelImpl>
    implements _$$RemittanceTransactionResponseModelImplCopyWith<$Res> {
  __$$RemittanceTransactionResponseModelImplCopyWithImpl(
      _$RemittanceTransactionResponseModelImpl _value,
      $Res Function(_$RemittanceTransactionResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$RemittanceTransactionResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionData,
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
class _$RemittanceTransactionResponseModelImpl
    implements _RemittanceTransactionResponseModel {
  const _$RemittanceTransactionResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status_code") required this.statusCode});

  factory _$RemittanceTransactionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceTransactionResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final RemittanceTransactionData data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "status_code")
  final String statusCode;

  @override
  String toString() {
    return 'RemittanceTransactionResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceTransactionResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of RemittanceTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceTransactionResponseModelImplCopyWith<
          _$RemittanceTransactionResponseModelImpl>
      get copyWith => __$$RemittanceTransactionResponseModelImplCopyWithImpl<
          _$RemittanceTransactionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceTransactionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RemittanceTransactionResponseModel
    implements RemittanceTransactionResponseModel {
  const factory _RemittanceTransactionResponseModel(
          {@JsonKey(name: "data") required final RemittanceTransactionData data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "status_code") required final String statusCode}) =
      _$RemittanceTransactionResponseModelImpl;

  factory _RemittanceTransactionResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceTransactionResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  RemittanceTransactionData get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "status_code")
  String get statusCode;

  /// Create a copy of RemittanceTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceTransactionResponseModelImplCopyWith<
          _$RemittanceTransactionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceTransactionData _$RemittanceTransactionDataFromJson(
    Map<String, dynamic> json) {
  return _RemittanceTransactionData.fromJson(json);
}

/// @nodoc
mixin _$RemittanceTransactionData {
  @JsonKey(name: "created_at")
  int get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_payment_transfer")
  RemittanceTransactionDataPaymentTransfer get customerPaymentTransfer =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "expected_payout_date")
  int get expectedPayoutDate => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_at")
  int get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted")
  RemittanceTransactionDataFormatted get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "instructions")
  RemittanceTransactionDataInstructions get instructions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_at")
  int get paidAt => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_code")
  String get payCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_code")
  String get paymentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_fee")
  RemittanceTransactionDataPaymentFee get paymentFee =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payment_name")
  String get paymentName => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_content")
  String get qrContent => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_image")
  String get qrImage => throw _privateConstructorUsedError;
  @JsonKey(name: "rate")
  RemittanceTransactionDataRate get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "recepient_payment_transfer")
  RemittanceTransactionDataPaymentTransfer get recipientPaymentTransfer =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "ref_id")
  String get refId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_transaction")
  String get statusTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_status_transaction")
  String get subStatusTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: "total_payment")
  RemittanceTransactionDataPaymentFee get totalPayment =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "trx_id")
  String get trxId => throw _privateConstructorUsedError;
  @JsonKey(name: "unique_code")
  int get uniqueCode => throw _privateConstructorUsedError;

  /// Serializes this RemittanceTransactionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceTransactionDataCopyWith<RemittanceTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionDataCopyWith<$Res> {
  factory $RemittanceTransactionDataCopyWith(RemittanceTransactionData value,
          $Res Function(RemittanceTransactionData) then) =
      _$RemittanceTransactionDataCopyWithImpl<$Res, RemittanceTransactionData>;
  @useResult
  $Res call(
      {@JsonKey(name: "created_at") int createdAt,
      @JsonKey(name: "customer_payment_transfer")
      RemittanceTransactionDataPaymentTransfer customerPaymentTransfer,
      @JsonKey(name: "expected_payout_date") int expectedPayoutDate,
      @JsonKey(name: "expired_at") int expiredAt,
      @JsonKey(name: "formatted") RemittanceTransactionDataFormatted formatted,
      @JsonKey(name: "instructions")
      RemittanceTransactionDataInstructions instructions,
      @JsonKey(name: "notes") String notes,
      @JsonKey(name: "paid_at") int paidAt,
      @JsonKey(name: "pay_code") String payCode,
      @JsonKey(name: "payment_code") String paymentCode,
      @JsonKey(name: "payment_fee")
      RemittanceTransactionDataPaymentFee paymentFee,
      @JsonKey(name: "payment_name") String paymentName,
      @JsonKey(name: "qr_content") String qrContent,
      @JsonKey(name: "qr_image") String qrImage,
      @JsonKey(name: "rate") RemittanceTransactionDataRate rate,
      @JsonKey(name: "recepient_payment_transfer")
      RemittanceTransactionDataPaymentTransfer recipientPaymentTransfer,
      @JsonKey(name: "ref_id") String refId,
      @JsonKey(name: "status_transaction") String statusTransaction,
      @JsonKey(name: "sub_status_transaction") String subStatusTransaction,
      @JsonKey(name: "total_payment")
      RemittanceTransactionDataPaymentFee totalPayment,
      @JsonKey(name: "trx_id") String trxId,
      @JsonKey(name: "unique_code") int uniqueCode});

  $RemittanceTransactionDataPaymentTransferCopyWith<$Res>
      get customerPaymentTransfer;
  $RemittanceTransactionDataFormattedCopyWith<$Res> get formatted;
  $RemittanceTransactionDataInstructionsCopyWith<$Res> get instructions;
  $RemittanceTransactionDataPaymentFeeCopyWith<$Res> get paymentFee;
  $RemittanceTransactionDataRateCopyWith<$Res> get rate;
  $RemittanceTransactionDataPaymentTransferCopyWith<$Res>
      get recipientPaymentTransfer;
  $RemittanceTransactionDataPaymentFeeCopyWith<$Res> get totalPayment;
}

/// @nodoc
class _$RemittanceTransactionDataCopyWithImpl<$Res,
        $Val extends RemittanceTransactionData>
    implements $RemittanceTransactionDataCopyWith<$Res> {
  _$RemittanceTransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? customerPaymentTransfer = null,
    Object? expectedPayoutDate = null,
    Object? expiredAt = null,
    Object? formatted = null,
    Object? instructions = null,
    Object? notes = null,
    Object? paidAt = null,
    Object? payCode = null,
    Object? paymentCode = null,
    Object? paymentFee = null,
    Object? paymentName = null,
    Object? qrContent = null,
    Object? qrImage = null,
    Object? rate = null,
    Object? recipientPaymentTransfer = null,
    Object? refId = null,
    Object? statusTransaction = null,
    Object? subStatusTransaction = null,
    Object? totalPayment = null,
    Object? trxId = null,
    Object? uniqueCode = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      customerPaymentTransfer: null == customerPaymentTransfer
          ? _value.customerPaymentTransfer
          : customerPaymentTransfer // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransfer,
      expectedPayoutDate: null == expectedPayoutDate
          ? _value.expectedPayoutDate
          : expectedPayoutDate // ignore: cast_nullable_to_non_nullable
              as int,
      expiredAt: null == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataFormatted,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataInstructions,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      paidAt: null == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as int,
      payCode: null == payCode
          ? _value.payCode
          : payCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentFee: null == paymentFee
          ? _value.paymentFee
          : paymentFee // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentFee,
      paymentName: null == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String,
      qrContent: null == qrContent
          ? _value.qrContent
          : qrContent // ignore: cast_nullable_to_non_nullable
              as String,
      qrImage: null == qrImage
          ? _value.qrImage
          : qrImage // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataRate,
      recipientPaymentTransfer: null == recipientPaymentTransfer
          ? _value.recipientPaymentTransfer
          : recipientPaymentTransfer // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransfer,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      statusTransaction: null == statusTransaction
          ? _value.statusTransaction
          : statusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      subStatusTransaction: null == subStatusTransaction
          ? _value.subStatusTransaction
          : subStatusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      totalPayment: null == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentFee,
      trxId: null == trxId
          ? _value.trxId
          : trxId // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataPaymentTransferCopyWith<$Res>
      get customerPaymentTransfer {
    return $RemittanceTransactionDataPaymentTransferCopyWith<$Res>(
        _value.customerPaymentTransfer, (value) {
      return _then(_value.copyWith(customerPaymentTransfer: value) as $Val);
    });
  }

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataFormattedCopyWith<$Res> get formatted {
    return $RemittanceTransactionDataFormattedCopyWith<$Res>(_value.formatted,
        (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataInstructionsCopyWith<$Res> get instructions {
    return $RemittanceTransactionDataInstructionsCopyWith<$Res>(
        _value.instructions, (value) {
      return _then(_value.copyWith(instructions: value) as $Val);
    });
  }

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataPaymentFeeCopyWith<$Res> get paymentFee {
    return $RemittanceTransactionDataPaymentFeeCopyWith<$Res>(_value.paymentFee,
        (value) {
      return _then(_value.copyWith(paymentFee: value) as $Val);
    });
  }

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataRateCopyWith<$Res> get rate {
    return $RemittanceTransactionDataRateCopyWith<$Res>(_value.rate, (value) {
      return _then(_value.copyWith(rate: value) as $Val);
    });
  }

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataPaymentTransferCopyWith<$Res>
      get recipientPaymentTransfer {
    return $RemittanceTransactionDataPaymentTransferCopyWith<$Res>(
        _value.recipientPaymentTransfer, (value) {
      return _then(_value.copyWith(recipientPaymentTransfer: value) as $Val);
    });
  }

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataPaymentFeeCopyWith<$Res> get totalPayment {
    return $RemittanceTransactionDataPaymentFeeCopyWith<$Res>(
        _value.totalPayment, (value) {
      return _then(_value.copyWith(totalPayment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceTransactionDataImplCopyWith<$Res>
    implements $RemittanceTransactionDataCopyWith<$Res> {
  factory _$$RemittanceTransactionDataImplCopyWith(
          _$RemittanceTransactionDataImpl value,
          $Res Function(_$RemittanceTransactionDataImpl) then) =
      __$$RemittanceTransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "created_at") int createdAt,
      @JsonKey(name: "customer_payment_transfer")
      RemittanceTransactionDataPaymentTransfer customerPaymentTransfer,
      @JsonKey(name: "expected_payout_date") int expectedPayoutDate,
      @JsonKey(name: "expired_at") int expiredAt,
      @JsonKey(name: "formatted") RemittanceTransactionDataFormatted formatted,
      @JsonKey(name: "instructions")
      RemittanceTransactionDataInstructions instructions,
      @JsonKey(name: "notes") String notes,
      @JsonKey(name: "paid_at") int paidAt,
      @JsonKey(name: "pay_code") String payCode,
      @JsonKey(name: "payment_code") String paymentCode,
      @JsonKey(name: "payment_fee")
      RemittanceTransactionDataPaymentFee paymentFee,
      @JsonKey(name: "payment_name") String paymentName,
      @JsonKey(name: "qr_content") String qrContent,
      @JsonKey(name: "qr_image") String qrImage,
      @JsonKey(name: "rate") RemittanceTransactionDataRate rate,
      @JsonKey(name: "recepient_payment_transfer")
      RemittanceTransactionDataPaymentTransfer recipientPaymentTransfer,
      @JsonKey(name: "ref_id") String refId,
      @JsonKey(name: "status_transaction") String statusTransaction,
      @JsonKey(name: "sub_status_transaction") String subStatusTransaction,
      @JsonKey(name: "total_payment")
      RemittanceTransactionDataPaymentFee totalPayment,
      @JsonKey(name: "trx_id") String trxId,
      @JsonKey(name: "unique_code") int uniqueCode});

  @override
  $RemittanceTransactionDataPaymentTransferCopyWith<$Res>
      get customerPaymentTransfer;
  @override
  $RemittanceTransactionDataFormattedCopyWith<$Res> get formatted;
  @override
  $RemittanceTransactionDataInstructionsCopyWith<$Res> get instructions;
  @override
  $RemittanceTransactionDataPaymentFeeCopyWith<$Res> get paymentFee;
  @override
  $RemittanceTransactionDataRateCopyWith<$Res> get rate;
  @override
  $RemittanceTransactionDataPaymentTransferCopyWith<$Res>
      get recipientPaymentTransfer;
  @override
  $RemittanceTransactionDataPaymentFeeCopyWith<$Res> get totalPayment;
}

/// @nodoc
class __$$RemittanceTransactionDataImplCopyWithImpl<$Res>
    extends _$RemittanceTransactionDataCopyWithImpl<$Res,
        _$RemittanceTransactionDataImpl>
    implements _$$RemittanceTransactionDataImplCopyWith<$Res> {
  __$$RemittanceTransactionDataImplCopyWithImpl(
      _$RemittanceTransactionDataImpl _value,
      $Res Function(_$RemittanceTransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? customerPaymentTransfer = null,
    Object? expectedPayoutDate = null,
    Object? expiredAt = null,
    Object? formatted = null,
    Object? instructions = null,
    Object? notes = null,
    Object? paidAt = null,
    Object? payCode = null,
    Object? paymentCode = null,
    Object? paymentFee = null,
    Object? paymentName = null,
    Object? qrContent = null,
    Object? qrImage = null,
    Object? rate = null,
    Object? recipientPaymentTransfer = null,
    Object? refId = null,
    Object? statusTransaction = null,
    Object? subStatusTransaction = null,
    Object? totalPayment = null,
    Object? trxId = null,
    Object? uniqueCode = null,
  }) {
    return _then(_$RemittanceTransactionDataImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      customerPaymentTransfer: null == customerPaymentTransfer
          ? _value.customerPaymentTransfer
          : customerPaymentTransfer // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransfer,
      expectedPayoutDate: null == expectedPayoutDate
          ? _value.expectedPayoutDate
          : expectedPayoutDate // ignore: cast_nullable_to_non_nullable
              as int,
      expiredAt: null == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataFormatted,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataInstructions,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      paidAt: null == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as int,
      payCode: null == payCode
          ? _value.payCode
          : payCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentFee: null == paymentFee
          ? _value.paymentFee
          : paymentFee // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentFee,
      paymentName: null == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String,
      qrContent: null == qrContent
          ? _value.qrContent
          : qrContent // ignore: cast_nullable_to_non_nullable
              as String,
      qrImage: null == qrImage
          ? _value.qrImage
          : qrImage // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataRate,
      recipientPaymentTransfer: null == recipientPaymentTransfer
          ? _value.recipientPaymentTransfer
          : recipientPaymentTransfer // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransfer,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      statusTransaction: null == statusTransaction
          ? _value.statusTransaction
          : statusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      subStatusTransaction: null == subStatusTransaction
          ? _value.subStatusTransaction
          : subStatusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      totalPayment: null == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentFee,
      trxId: null == trxId
          ? _value.trxId
          : trxId // ignore: cast_nullable_to_non_nullable
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
class _$RemittanceTransactionDataImpl implements _RemittanceTransactionData {
  const _$RemittanceTransactionDataImpl(
      {@JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "customer_payment_transfer")
      required this.customerPaymentTransfer,
      @JsonKey(name: "expected_payout_date") required this.expectedPayoutDate,
      @JsonKey(name: "expired_at") required this.expiredAt,
      @JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "instructions") required this.instructions,
      @JsonKey(name: "notes") required this.notes,
      @JsonKey(name: "paid_at") required this.paidAt,
      @JsonKey(name: "pay_code") required this.payCode,
      @JsonKey(name: "payment_code") required this.paymentCode,
      @JsonKey(name: "payment_fee") required this.paymentFee,
      @JsonKey(name: "payment_name") required this.paymentName,
      @JsonKey(name: "qr_content") required this.qrContent,
      @JsonKey(name: "qr_image") required this.qrImage,
      @JsonKey(name: "rate") required this.rate,
      @JsonKey(name: "recepient_payment_transfer")
      required this.recipientPaymentTransfer,
      @JsonKey(name: "ref_id") required this.refId,
      @JsonKey(name: "status_transaction") required this.statusTransaction,
      @JsonKey(name: "sub_status_transaction")
      required this.subStatusTransaction,
      @JsonKey(name: "total_payment") required this.totalPayment,
      @JsonKey(name: "trx_id") required this.trxId,
      @JsonKey(name: "unique_code") required this.uniqueCode});

  factory _$RemittanceTransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemittanceTransactionDataImplFromJson(json);

  @override
  @JsonKey(name: "created_at")
  final int createdAt;
  @override
  @JsonKey(name: "customer_payment_transfer")
  final RemittanceTransactionDataPaymentTransfer customerPaymentTransfer;
  @override
  @JsonKey(name: "expected_payout_date")
  final int expectedPayoutDate;
  @override
  @JsonKey(name: "expired_at")
  final int expiredAt;
  @override
  @JsonKey(name: "formatted")
  final RemittanceTransactionDataFormatted formatted;
  @override
  @JsonKey(name: "instructions")
  final RemittanceTransactionDataInstructions instructions;
  @override
  @JsonKey(name: "notes")
  final String notes;
  @override
  @JsonKey(name: "paid_at")
  final int paidAt;
  @override
  @JsonKey(name: "pay_code")
  final String payCode;
  @override
  @JsonKey(name: "payment_code")
  final String paymentCode;
  @override
  @JsonKey(name: "payment_fee")
  final RemittanceTransactionDataPaymentFee paymentFee;
  @override
  @JsonKey(name: "payment_name")
  final String paymentName;
  @override
  @JsonKey(name: "qr_content")
  final String qrContent;
  @override
  @JsonKey(name: "qr_image")
  final String qrImage;
  @override
  @JsonKey(name: "rate")
  final RemittanceTransactionDataRate rate;
  @override
  @JsonKey(name: "recepient_payment_transfer")
  final RemittanceTransactionDataPaymentTransfer recipientPaymentTransfer;
  @override
  @JsonKey(name: "ref_id")
  final String refId;
  @override
  @JsonKey(name: "status_transaction")
  final String statusTransaction;
  @override
  @JsonKey(name: "sub_status_transaction")
  final String subStatusTransaction;
  @override
  @JsonKey(name: "total_payment")
  final RemittanceTransactionDataPaymentFee totalPayment;
  @override
  @JsonKey(name: "trx_id")
  final String trxId;
  @override
  @JsonKey(name: "unique_code")
  final int uniqueCode;

  @override
  String toString() {
    return 'RemittanceTransactionData(createdAt: $createdAt, customerPaymentTransfer: $customerPaymentTransfer, expectedPayoutDate: $expectedPayoutDate, expiredAt: $expiredAt, formatted: $formatted, instructions: $instructions, notes: $notes, paidAt: $paidAt, payCode: $payCode, paymentCode: $paymentCode, paymentFee: $paymentFee, paymentName: $paymentName, qrContent: $qrContent, qrImage: $qrImage, rate: $rate, recipientPaymentTransfer: $recipientPaymentTransfer, refId: $refId, statusTransaction: $statusTransaction, subStatusTransaction: $subStatusTransaction, totalPayment: $totalPayment, trxId: $trxId, uniqueCode: $uniqueCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceTransactionDataImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(
                    other.customerPaymentTransfer, customerPaymentTransfer) ||
                other.customerPaymentTransfer == customerPaymentTransfer) &&
            (identical(other.expectedPayoutDate, expectedPayoutDate) ||
                other.expectedPayoutDate == expectedPayoutDate) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.payCode, payCode) || other.payCode == payCode) &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.paymentFee, paymentFee) ||
                other.paymentFee == paymentFee) &&
            (identical(other.paymentName, paymentName) ||
                other.paymentName == paymentName) &&
            (identical(other.qrContent, qrContent) ||
                other.qrContent == qrContent) &&
            (identical(other.qrImage, qrImage) || other.qrImage == qrImage) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(
                    other.recipientPaymentTransfer, recipientPaymentTransfer) ||
                other.recipientPaymentTransfer == recipientPaymentTransfer) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.statusTransaction, statusTransaction) ||
                other.statusTransaction == statusTransaction) &&
            (identical(other.subStatusTransaction, subStatusTransaction) ||
                other.subStatusTransaction == subStatusTransaction) &&
            (identical(other.totalPayment, totalPayment) ||
                other.totalPayment == totalPayment) &&
            (identical(other.trxId, trxId) || other.trxId == trxId) &&
            (identical(other.uniqueCode, uniqueCode) ||
                other.uniqueCode == uniqueCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        createdAt,
        customerPaymentTransfer,
        expectedPayoutDate,
        expiredAt,
        formatted,
        instructions,
        notes,
        paidAt,
        payCode,
        paymentCode,
        paymentFee,
        paymentName,
        qrContent,
        qrImage,
        rate,
        recipientPaymentTransfer,
        refId,
        statusTransaction,
        subStatusTransaction,
        totalPayment,
        trxId,
        uniqueCode
      ]);

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceTransactionDataImplCopyWith<_$RemittanceTransactionDataImpl>
      get copyWith => __$$RemittanceTransactionDataImplCopyWithImpl<
          _$RemittanceTransactionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceTransactionDataImplToJson(
      this,
    );
  }
}

abstract class _RemittanceTransactionData implements RemittanceTransactionData {
  const factory _RemittanceTransactionData(
      {@JsonKey(name: "created_at") required final int createdAt,
      @JsonKey(name: "customer_payment_transfer")
      required final RemittanceTransactionDataPaymentTransfer
          customerPaymentTransfer,
      @JsonKey(name: "expected_payout_date")
      required final int expectedPayoutDate,
      @JsonKey(name: "expired_at") required final int expiredAt,
      @JsonKey(name: "formatted")
      required final RemittanceTransactionDataFormatted formatted,
      @JsonKey(name: "instructions")
      required final RemittanceTransactionDataInstructions instructions,
      @JsonKey(name: "notes") required final String notes,
      @JsonKey(name: "paid_at") required final int paidAt,
      @JsonKey(name: "pay_code") required final String payCode,
      @JsonKey(name: "payment_code") required final String paymentCode,
      @JsonKey(name: "payment_fee")
      required final RemittanceTransactionDataPaymentFee paymentFee,
      @JsonKey(name: "payment_name") required final String paymentName,
      @JsonKey(name: "qr_content") required final String qrContent,
      @JsonKey(name: "qr_image") required final String qrImage,
      @JsonKey(name: "rate") required final RemittanceTransactionDataRate rate,
      @JsonKey(name: "recepient_payment_transfer")
      required final RemittanceTransactionDataPaymentTransfer
          recipientPaymentTransfer,
      @JsonKey(name: "ref_id") required final String refId,
      @JsonKey(name: "status_transaction")
      required final String statusTransaction,
      @JsonKey(name: "sub_status_transaction")
      required final String subStatusTransaction,
      @JsonKey(name: "total_payment")
      required final RemittanceTransactionDataPaymentFee totalPayment,
      @JsonKey(name: "trx_id") required final String trxId,
      @JsonKey(name: "unique_code")
      required final int uniqueCode}) = _$RemittanceTransactionDataImpl;

  factory _RemittanceTransactionData.fromJson(Map<String, dynamic> json) =
      _$RemittanceTransactionDataImpl.fromJson;

  @override
  @JsonKey(name: "created_at")
  int get createdAt;
  @override
  @JsonKey(name: "customer_payment_transfer")
  RemittanceTransactionDataPaymentTransfer get customerPaymentTransfer;
  @override
  @JsonKey(name: "expected_payout_date")
  int get expectedPayoutDate;
  @override
  @JsonKey(name: "expired_at")
  int get expiredAt;
  @override
  @JsonKey(name: "formatted")
  RemittanceTransactionDataFormatted get formatted;
  @override
  @JsonKey(name: "instructions")
  RemittanceTransactionDataInstructions get instructions;
  @override
  @JsonKey(name: "notes")
  String get notes;
  @override
  @JsonKey(name: "paid_at")
  int get paidAt;
  @override
  @JsonKey(name: "pay_code")
  String get payCode;
  @override
  @JsonKey(name: "payment_code")
  String get paymentCode;
  @override
  @JsonKey(name: "payment_fee")
  RemittanceTransactionDataPaymentFee get paymentFee;
  @override
  @JsonKey(name: "payment_name")
  String get paymentName;
  @override
  @JsonKey(name: "qr_content")
  String get qrContent;
  @override
  @JsonKey(name: "qr_image")
  String get qrImage;
  @override
  @JsonKey(name: "rate")
  RemittanceTransactionDataRate get rate;
  @override
  @JsonKey(name: "recepient_payment_transfer")
  RemittanceTransactionDataPaymentTransfer get recipientPaymentTransfer;
  @override
  @JsonKey(name: "ref_id")
  String get refId;
  @override
  @JsonKey(name: "status_transaction")
  String get statusTransaction;
  @override
  @JsonKey(name: "sub_status_transaction")
  String get subStatusTransaction;
  @override
  @JsonKey(name: "total_payment")
  RemittanceTransactionDataPaymentFee get totalPayment;
  @override
  @JsonKey(name: "trx_id")
  String get trxId;
  @override
  @JsonKey(name: "unique_code")
  int get uniqueCode;

  /// Create a copy of RemittanceTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceTransactionDataImplCopyWith<_$RemittanceTransactionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceTransactionDataPaymentTransfer
    _$RemittanceTransactionDataPaymentTransferFromJson(
        Map<String, dynamic> json) {
  return _RemittanceTransactionDataPaymentTransfer.fromJson(json);
}

/// @nodoc
mixin _$RemittanceTransactionDataPaymentTransfer {
  @JsonKey(name: "country_code")
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "receive_nominal")
  RemittanceTransactionDataPaymentTransferNominal get receiveNominal =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "send_nominal")
  RemittanceTransactionDataPaymentTransferNominal get sendNominal =>
      throw _privateConstructorUsedError;

  /// Serializes this RemittanceTransactionDataPaymentTransfer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceTransactionDataPaymentTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceTransactionDataPaymentTransferCopyWith<
          RemittanceTransactionDataPaymentTransfer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionDataPaymentTransferCopyWith<$Res> {
  factory $RemittanceTransactionDataPaymentTransferCopyWith(
          RemittanceTransactionDataPaymentTransfer value,
          $Res Function(RemittanceTransactionDataPaymentTransfer) then) =
      _$RemittanceTransactionDataPaymentTransferCopyWithImpl<$Res,
          RemittanceTransactionDataPaymentTransfer>;
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "customer_name") String customerName,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "receive_nominal")
      RemittanceTransactionDataPaymentTransferNominal receiveNominal,
      @JsonKey(name: "send_nominal")
      RemittanceTransactionDataPaymentTransferNominal sendNominal});

  $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res>
      get receiveNominal;
  $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res>
      get sendNominal;
}

/// @nodoc
class _$RemittanceTransactionDataPaymentTransferCopyWithImpl<$Res,
        $Val extends RemittanceTransactionDataPaymentTransfer>
    implements $RemittanceTransactionDataPaymentTransferCopyWith<$Res> {
  _$RemittanceTransactionDataPaymentTransferCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionDataPaymentTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? currencyCode = null,
    Object? customerName = null,
    Object? phoneNumber = null,
    Object? receiveNominal = null,
    Object? sendNominal = null,
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
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      receiveNominal: null == receiveNominal
          ? _value.receiveNominal
          : receiveNominal // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransferNominal,
      sendNominal: null == sendNominal
          ? _value.sendNominal
          : sendNominal // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransferNominal,
    ) as $Val);
  }

  /// Create a copy of RemittanceTransactionDataPaymentTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res>
      get receiveNominal {
    return $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res>(
        _value.receiveNominal, (value) {
      return _then(_value.copyWith(receiveNominal: value) as $Val);
    });
  }

  /// Create a copy of RemittanceTransactionDataPaymentTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res>
      get sendNominal {
    return $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res>(
        _value.sendNominal, (value) {
      return _then(_value.copyWith(sendNominal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceTransactionDataPaymentTransferImplCopyWith<$Res>
    implements $RemittanceTransactionDataPaymentTransferCopyWith<$Res> {
  factory _$$RemittanceTransactionDataPaymentTransferImplCopyWith(
          _$RemittanceTransactionDataPaymentTransferImpl value,
          $Res Function(_$RemittanceTransactionDataPaymentTransferImpl) then) =
      __$$RemittanceTransactionDataPaymentTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "country_code") String countryCode,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "customer_name") String customerName,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "receive_nominal")
      RemittanceTransactionDataPaymentTransferNominal receiveNominal,
      @JsonKey(name: "send_nominal")
      RemittanceTransactionDataPaymentTransferNominal sendNominal});

  @override
  $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res>
      get receiveNominal;
  @override
  $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res>
      get sendNominal;
}

/// @nodoc
class __$$RemittanceTransactionDataPaymentTransferImplCopyWithImpl<$Res>
    extends _$RemittanceTransactionDataPaymentTransferCopyWithImpl<$Res,
        _$RemittanceTransactionDataPaymentTransferImpl>
    implements _$$RemittanceTransactionDataPaymentTransferImplCopyWith<$Res> {
  __$$RemittanceTransactionDataPaymentTransferImplCopyWithImpl(
      _$RemittanceTransactionDataPaymentTransferImpl _value,
      $Res Function(_$RemittanceTransactionDataPaymentTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionDataPaymentTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? currencyCode = null,
    Object? customerName = null,
    Object? phoneNumber = null,
    Object? receiveNominal = null,
    Object? sendNominal = null,
  }) {
    return _then(_$RemittanceTransactionDataPaymentTransferImpl(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      receiveNominal: null == receiveNominal
          ? _value.receiveNominal
          : receiveNominal // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransferNominal,
      sendNominal: null == sendNominal
          ? _value.sendNominal
          : sendNominal // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransferNominal,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceTransactionDataPaymentTransferImpl
    implements _RemittanceTransactionDataPaymentTransfer {
  const _$RemittanceTransactionDataPaymentTransferImpl(
      {@JsonKey(name: "country_code") required this.countryCode,
      @JsonKey(name: "currency_code") required this.currencyCode,
      @JsonKey(name: "customer_name") required this.customerName,
      @JsonKey(name: "phone_number") required this.phoneNumber,
      @JsonKey(name: "receive_nominal") required this.receiveNominal,
      @JsonKey(name: "send_nominal") required this.sendNominal});

  factory _$RemittanceTransactionDataPaymentTransferImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceTransactionDataPaymentTransferImplFromJson(json);

  @override
  @JsonKey(name: "country_code")
  final String countryCode;
  @override
  @JsonKey(name: "currency_code")
  final String currencyCode;
  @override
  @JsonKey(name: "customer_name")
  final String customerName;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "receive_nominal")
  final RemittanceTransactionDataPaymentTransferNominal receiveNominal;
  @override
  @JsonKey(name: "send_nominal")
  final RemittanceTransactionDataPaymentTransferNominal sendNominal;

  @override
  String toString() {
    return 'RemittanceTransactionDataPaymentTransfer(countryCode: $countryCode, currencyCode: $currencyCode, customerName: $customerName, phoneNumber: $phoneNumber, receiveNominal: $receiveNominal, sendNominal: $sendNominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceTransactionDataPaymentTransferImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.receiveNominal, receiveNominal) ||
                other.receiveNominal == receiveNominal) &&
            (identical(other.sendNominal, sendNominal) ||
                other.sendNominal == sendNominal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode, currencyCode,
      customerName, phoneNumber, receiveNominal, sendNominal);

  /// Create a copy of RemittanceTransactionDataPaymentTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceTransactionDataPaymentTransferImplCopyWith<
          _$RemittanceTransactionDataPaymentTransferImpl>
      get copyWith =>
          __$$RemittanceTransactionDataPaymentTransferImplCopyWithImpl<
              _$RemittanceTransactionDataPaymentTransferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceTransactionDataPaymentTransferImplToJson(
      this,
    );
  }
}

abstract class _RemittanceTransactionDataPaymentTransfer
    implements RemittanceTransactionDataPaymentTransfer {
  const factory _RemittanceTransactionDataPaymentTransfer(
      {@JsonKey(name: "country_code") required final String countryCode,
      @JsonKey(name: "currency_code") required final String currencyCode,
      @JsonKey(name: "customer_name") required final String customerName,
      @JsonKey(name: "phone_number") required final String phoneNumber,
      @JsonKey(name: "receive_nominal")
      required final RemittanceTransactionDataPaymentTransferNominal
          receiveNominal,
      @JsonKey(name: "send_nominal")
      required final RemittanceTransactionDataPaymentTransferNominal
          sendNominal}) = _$RemittanceTransactionDataPaymentTransferImpl;

  factory _RemittanceTransactionDataPaymentTransfer.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceTransactionDataPaymentTransferImpl.fromJson;

  @override
  @JsonKey(name: "country_code")
  String get countryCode;
  @override
  @JsonKey(name: "currency_code")
  String get currencyCode;
  @override
  @JsonKey(name: "customer_name")
  String get customerName;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "receive_nominal")
  RemittanceTransactionDataPaymentTransferNominal get receiveNominal;
  @override
  @JsonKey(name: "send_nominal")
  RemittanceTransactionDataPaymentTransferNominal get sendNominal;

  /// Create a copy of RemittanceTransactionDataPaymentTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceTransactionDataPaymentTransferImplCopyWith<
          _$RemittanceTransactionDataPaymentTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceTransactionDataPaymentTransferNominal
    _$RemittanceTransactionDataPaymentTransferNominalFromJson(
        Map<String, dynamic> json) {
  return _RemittanceTransactionDataPaymentTransferNominal.fromJson(json);
}

/// @nodoc
mixin _$RemittanceTransactionDataPaymentTransferNominal {
  @JsonKey(name: "formatted")
  RemittanceTransactionDataPaymentTransferNominalFormatted? get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "nominal")
  int get nominal => throw _privateConstructorUsedError;

  /// Serializes this RemittanceTransactionDataPaymentTransferNominal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceTransactionDataPaymentTransferNominalCopyWith<
          RemittanceTransactionDataPaymentTransferNominal>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res> {
  factory $RemittanceTransactionDataPaymentTransferNominalCopyWith(
          RemittanceTransactionDataPaymentTransferNominal value,
          $Res Function(RemittanceTransactionDataPaymentTransferNominal) then) =
      _$RemittanceTransactionDataPaymentTransferNominalCopyWithImpl<$Res,
          RemittanceTransactionDataPaymentTransferNominal>;
  @useResult
  $Res call(
      {@JsonKey(name: "formatted")
      RemittanceTransactionDataPaymentTransferNominalFormatted? formatted,
      @JsonKey(name: "nominal") int nominal});

  $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<$Res>?
      get formatted;
}

/// @nodoc
class _$RemittanceTransactionDataPaymentTransferNominalCopyWithImpl<$Res,
        $Val extends RemittanceTransactionDataPaymentTransferNominal>
    implements $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res> {
  _$RemittanceTransactionDataPaymentTransferNominalCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = freezed,
    Object? nominal = null,
  }) {
    return _then(_value.copyWith(
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransferNominalFormatted?,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<$Res>?
      get formatted {
    if (_value.formatted == null) {
      return null;
    }

    return $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<
        $Res>(_value.formatted!, (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceTransactionDataPaymentTransferNominalImplCopyWith<
        $Res>
    implements $RemittanceTransactionDataPaymentTransferNominalCopyWith<$Res> {
  factory _$$RemittanceTransactionDataPaymentTransferNominalImplCopyWith(
          _$RemittanceTransactionDataPaymentTransferNominalImpl value,
          $Res Function(_$RemittanceTransactionDataPaymentTransferNominalImpl)
              then) =
      __$$RemittanceTransactionDataPaymentTransferNominalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "formatted")
      RemittanceTransactionDataPaymentTransferNominalFormatted? formatted,
      @JsonKey(name: "nominal") int nominal});

  @override
  $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<$Res>?
      get formatted;
}

/// @nodoc
class __$$RemittanceTransactionDataPaymentTransferNominalImplCopyWithImpl<$Res>
    extends _$RemittanceTransactionDataPaymentTransferNominalCopyWithImpl<$Res,
        _$RemittanceTransactionDataPaymentTransferNominalImpl>
    implements
        _$$RemittanceTransactionDataPaymentTransferNominalImplCopyWith<$Res> {
  __$$RemittanceTransactionDataPaymentTransferNominalImplCopyWithImpl(
      _$RemittanceTransactionDataPaymentTransferNominalImpl _value,
      $Res Function(_$RemittanceTransactionDataPaymentTransferNominalImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = freezed,
    Object? nominal = null,
  }) {
    return _then(_$RemittanceTransactionDataPaymentTransferNominalImpl(
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransferNominalFormatted?,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceTransactionDataPaymentTransferNominalImpl
    implements _RemittanceTransactionDataPaymentTransferNominal {
  const _$RemittanceTransactionDataPaymentTransferNominalImpl(
      {@JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "nominal") required this.nominal});

  factory _$RemittanceTransactionDataPaymentTransferNominalImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceTransactionDataPaymentTransferNominalImplFromJson(json);

  @override
  @JsonKey(name: "formatted")
  final RemittanceTransactionDataPaymentTransferNominalFormatted? formatted;
  @override
  @JsonKey(name: "nominal")
  final int nominal;

  @override
  String toString() {
    return 'RemittanceTransactionDataPaymentTransferNominal(formatted: $formatted, nominal: $nominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceTransactionDataPaymentTransferNominalImpl &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, formatted, nominal);

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceTransactionDataPaymentTransferNominalImplCopyWith<
          _$RemittanceTransactionDataPaymentTransferNominalImpl>
      get copyWith =>
          __$$RemittanceTransactionDataPaymentTransferNominalImplCopyWithImpl<
                  _$RemittanceTransactionDataPaymentTransferNominalImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceTransactionDataPaymentTransferNominalImplToJson(
      this,
    );
  }
}

abstract class _RemittanceTransactionDataPaymentTransferNominal
    implements RemittanceTransactionDataPaymentTransferNominal {
  const factory _RemittanceTransactionDataPaymentTransferNominal(
      {@JsonKey(name: "formatted")
      required final RemittanceTransactionDataPaymentTransferNominalFormatted?
          formatted,
      @JsonKey(name: "nominal")
      required final int
          nominal}) = _$RemittanceTransactionDataPaymentTransferNominalImpl;

  factory _RemittanceTransactionDataPaymentTransferNominal.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceTransactionDataPaymentTransferNominalImpl.fromJson;

  @override
  @JsonKey(name: "formatted")
  RemittanceTransactionDataPaymentTransferNominalFormatted? get formatted;
  @override
  @JsonKey(name: "nominal")
  int get nominal;

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceTransactionDataPaymentTransferNominalImplCopyWith<
          _$RemittanceTransactionDataPaymentTransferNominalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceTransactionDataPaymentTransferNominalFormatted
    _$RemittanceTransactionDataPaymentTransferNominalFormattedFromJson(
        Map<String, dynamic> json) {
  return _RemittanceTransactionDataPaymentTransferNominalFormatted.fromJson(
      json);
}

/// @nodoc
mixin _$RemittanceTransactionDataPaymentTransferNominalFormatted {
  @JsonKey(name: "nominal")
  String get nominal => throw _privateConstructorUsedError;

  /// Serializes this RemittanceTransactionDataPaymentTransferNominalFormatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominalFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<
          RemittanceTransactionDataPaymentTransferNominalFormatted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<
    $Res> {
  factory $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith(
          RemittanceTransactionDataPaymentTransferNominalFormatted value,
          $Res Function(
                  RemittanceTransactionDataPaymentTransferNominalFormatted)
              then) =
      _$RemittanceTransactionDataPaymentTransferNominalFormattedCopyWithImpl<
          $Res, RemittanceTransactionDataPaymentTransferNominalFormatted>;
  @useResult
  $Res call({@JsonKey(name: "nominal") String nominal});
}

/// @nodoc
class _$RemittanceTransactionDataPaymentTransferNominalFormattedCopyWithImpl<
        $Res,
        $Val extends RemittanceTransactionDataPaymentTransferNominalFormatted>
    implements
        $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<
            $Res> {
  _$RemittanceTransactionDataPaymentTransferNominalFormattedCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominalFormatted
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
abstract class _$$RemittanceTransactionDataPaymentTransferNominalFormattedImplCopyWith<
        $Res>
    implements
        $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<
            $Res> {
  factory _$$RemittanceTransactionDataPaymentTransferNominalFormattedImplCopyWith(
          _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl value,
          $Res Function(
                  _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl)
              then) =
      __$$RemittanceTransactionDataPaymentTransferNominalFormattedImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "nominal") String nominal});
}

/// @nodoc
class __$$RemittanceTransactionDataPaymentTransferNominalFormattedImplCopyWithImpl<
        $Res>
    extends _$RemittanceTransactionDataPaymentTransferNominalFormattedCopyWithImpl<
        $Res, _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl>
    implements
        _$$RemittanceTransactionDataPaymentTransferNominalFormattedImplCopyWith<
            $Res> {
  __$$RemittanceTransactionDataPaymentTransferNominalFormattedImplCopyWithImpl(
      _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl _value,
      $Res Function(
              _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominalFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nominal = null,
  }) {
    return _then(_$RemittanceTransactionDataPaymentTransferNominalFormattedImpl(
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl
    implements _RemittanceTransactionDataPaymentTransferNominalFormatted {
  const _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl(
      {@JsonKey(name: "nominal") required this.nominal});

  factory _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceTransactionDataPaymentTransferNominalFormattedImplFromJson(
          json);

  @override
  @JsonKey(name: "nominal")
  final String nominal;

  @override
  String toString() {
    return 'RemittanceTransactionDataPaymentTransferNominalFormatted(nominal: $nominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nominal);

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominalFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceTransactionDataPaymentTransferNominalFormattedImplCopyWith<
          _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl>
      get copyWith =>
          __$$RemittanceTransactionDataPaymentTransferNominalFormattedImplCopyWithImpl<
                  _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceTransactionDataPaymentTransferNominalFormattedImplToJson(
      this,
    );
  }
}

abstract class _RemittanceTransactionDataPaymentTransferNominalFormatted
    implements RemittanceTransactionDataPaymentTransferNominalFormatted {
  const factory _RemittanceTransactionDataPaymentTransferNominalFormatted(
          {@JsonKey(name: "nominal") required final String nominal}) =
      _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl;

  factory _RemittanceTransactionDataPaymentTransferNominalFormatted.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl.fromJson;

  @override
  @JsonKey(name: "nominal")
  String get nominal;

  /// Create a copy of RemittanceTransactionDataPaymentTransferNominalFormatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceTransactionDataPaymentTransferNominalFormattedImplCopyWith<
          _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceTransactionDataFormatted _$RemittanceTransactionDataFormattedFromJson(
    Map<String, dynamic> json) {
  return _RemittanceTransactionDataFormatted.fromJson(json);
}

/// @nodoc
mixin _$RemittanceTransactionDataFormatted {
  @JsonKey(name: "total_fee")
  String get totalFee => throw _privateConstructorUsedError;
  @JsonKey(name: "total_payment")
  String get totalPayment => throw _privateConstructorUsedError;
  @JsonKey(name: "unique_code")
  String get uniqueCode => throw _privateConstructorUsedError;

  /// Serializes this RemittanceTransactionDataFormatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceTransactionDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceTransactionDataFormattedCopyWith<
          RemittanceTransactionDataFormatted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionDataFormattedCopyWith<$Res> {
  factory $RemittanceTransactionDataFormattedCopyWith(
          RemittanceTransactionDataFormatted value,
          $Res Function(RemittanceTransactionDataFormatted) then) =
      _$RemittanceTransactionDataFormattedCopyWithImpl<$Res,
          RemittanceTransactionDataFormatted>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_fee") String totalFee,
      @JsonKey(name: "total_payment") String totalPayment,
      @JsonKey(name: "unique_code") String uniqueCode});
}

/// @nodoc
class _$RemittanceTransactionDataFormattedCopyWithImpl<$Res,
        $Val extends RemittanceTransactionDataFormatted>
    implements $RemittanceTransactionDataFormattedCopyWith<$Res> {
  _$RemittanceTransactionDataFormattedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalFee = null,
    Object? totalPayment = null,
    Object? uniqueCode = null,
  }) {
    return _then(_value.copyWith(
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String,
      totalPayment: null == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueCode: null == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemittanceTransactionDataFormattedImplCopyWith<$Res>
    implements $RemittanceTransactionDataFormattedCopyWith<$Res> {
  factory _$$RemittanceTransactionDataFormattedImplCopyWith(
          _$RemittanceTransactionDataFormattedImpl value,
          $Res Function(_$RemittanceTransactionDataFormattedImpl) then) =
      __$$RemittanceTransactionDataFormattedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_fee") String totalFee,
      @JsonKey(name: "total_payment") String totalPayment,
      @JsonKey(name: "unique_code") String uniqueCode});
}

/// @nodoc
class __$$RemittanceTransactionDataFormattedImplCopyWithImpl<$Res>
    extends _$RemittanceTransactionDataFormattedCopyWithImpl<$Res,
        _$RemittanceTransactionDataFormattedImpl>
    implements _$$RemittanceTransactionDataFormattedImplCopyWith<$Res> {
  __$$RemittanceTransactionDataFormattedImplCopyWithImpl(
      _$RemittanceTransactionDataFormattedImpl _value,
      $Res Function(_$RemittanceTransactionDataFormattedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalFee = null,
    Object? totalPayment = null,
    Object? uniqueCode = null,
  }) {
    return _then(_$RemittanceTransactionDataFormattedImpl(
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String,
      totalPayment: null == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
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
class _$RemittanceTransactionDataFormattedImpl
    implements _RemittanceTransactionDataFormatted {
  const _$RemittanceTransactionDataFormattedImpl(
      {@JsonKey(name: "total_fee") required this.totalFee,
      @JsonKey(name: "total_payment") required this.totalPayment,
      @JsonKey(name: "unique_code") required this.uniqueCode});

  factory _$RemittanceTransactionDataFormattedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceTransactionDataFormattedImplFromJson(json);

  @override
  @JsonKey(name: "total_fee")
  final String totalFee;
  @override
  @JsonKey(name: "total_payment")
  final String totalPayment;
  @override
  @JsonKey(name: "unique_code")
  final String uniqueCode;

  @override
  String toString() {
    return 'RemittanceTransactionDataFormatted(totalFee: $totalFee, totalPayment: $totalPayment, uniqueCode: $uniqueCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceTransactionDataFormattedImpl &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.totalPayment, totalPayment) ||
                other.totalPayment == totalPayment) &&
            (identical(other.uniqueCode, uniqueCode) ||
                other.uniqueCode == uniqueCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalFee, totalPayment, uniqueCode);

  /// Create a copy of RemittanceTransactionDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceTransactionDataFormattedImplCopyWith<
          _$RemittanceTransactionDataFormattedImpl>
      get copyWith => __$$RemittanceTransactionDataFormattedImplCopyWithImpl<
          _$RemittanceTransactionDataFormattedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceTransactionDataFormattedImplToJson(
      this,
    );
  }
}

abstract class _RemittanceTransactionDataFormatted
    implements RemittanceTransactionDataFormatted {
  const factory _RemittanceTransactionDataFormatted(
          {@JsonKey(name: "total_fee") required final String totalFee,
          @JsonKey(name: "total_payment") required final String totalPayment,
          @JsonKey(name: "unique_code") required final String uniqueCode}) =
      _$RemittanceTransactionDataFormattedImpl;

  factory _RemittanceTransactionDataFormatted.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceTransactionDataFormattedImpl.fromJson;

  @override
  @JsonKey(name: "total_fee")
  String get totalFee;
  @override
  @JsonKey(name: "total_payment")
  String get totalPayment;
  @override
  @JsonKey(name: "unique_code")
  String get uniqueCode;

  /// Create a copy of RemittanceTransactionDataFormatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceTransactionDataFormattedImplCopyWith<
          _$RemittanceTransactionDataFormattedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceTransactionDataInstructions
    _$RemittanceTransactionDataInstructionsFromJson(Map<String, dynamic> json) {
  return _RemittanceTransactionDataInstructions.fromJson(json);
}

/// @nodoc
mixin _$RemittanceTransactionDataInstructions {
  @JsonKey(name: "steps")
  dynamic get steps => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  /// Serializes this RemittanceTransactionDataInstructions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceTransactionDataInstructions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceTransactionDataInstructionsCopyWith<
          RemittanceTransactionDataInstructions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionDataInstructionsCopyWith<$Res> {
  factory $RemittanceTransactionDataInstructionsCopyWith(
          RemittanceTransactionDataInstructions value,
          $Res Function(RemittanceTransactionDataInstructions) then) =
      _$RemittanceTransactionDataInstructionsCopyWithImpl<$Res,
          RemittanceTransactionDataInstructions>;
  @useResult
  $Res call(
      {@JsonKey(name: "steps") dynamic steps,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class _$RemittanceTransactionDataInstructionsCopyWithImpl<$Res,
        $Val extends RemittanceTransactionDataInstructions>
    implements $RemittanceTransactionDataInstructionsCopyWith<$Res> {
  _$RemittanceTransactionDataInstructionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionDataInstructions
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
abstract class _$$RemittanceTransactionDataInstructionsImplCopyWith<$Res>
    implements $RemittanceTransactionDataInstructionsCopyWith<$Res> {
  factory _$$RemittanceTransactionDataInstructionsImplCopyWith(
          _$RemittanceTransactionDataInstructionsImpl value,
          $Res Function(_$RemittanceTransactionDataInstructionsImpl) then) =
      __$$RemittanceTransactionDataInstructionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "steps") dynamic steps,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class __$$RemittanceTransactionDataInstructionsImplCopyWithImpl<$Res>
    extends _$RemittanceTransactionDataInstructionsCopyWithImpl<$Res,
        _$RemittanceTransactionDataInstructionsImpl>
    implements _$$RemittanceTransactionDataInstructionsImplCopyWith<$Res> {
  __$$RemittanceTransactionDataInstructionsImplCopyWithImpl(
      _$RemittanceTransactionDataInstructionsImpl _value,
      $Res Function(_$RemittanceTransactionDataInstructionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionDataInstructions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = freezed,
    Object? title = null,
  }) {
    return _then(_$RemittanceTransactionDataInstructionsImpl(
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
class _$RemittanceTransactionDataInstructionsImpl
    implements _RemittanceTransactionDataInstructions {
  const _$RemittanceTransactionDataInstructionsImpl(
      {@JsonKey(name: "steps") required this.steps,
      @JsonKey(name: "title") required this.title});

  factory _$RemittanceTransactionDataInstructionsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceTransactionDataInstructionsImplFromJson(json);

  @override
  @JsonKey(name: "steps")
  final dynamic steps;
  @override
  @JsonKey(name: "title")
  final String title;

  @override
  String toString() {
    return 'RemittanceTransactionDataInstructions(steps: $steps, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceTransactionDataInstructionsImpl &&
            const DeepCollectionEquality().equals(other.steps, steps) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(steps), title);

  /// Create a copy of RemittanceTransactionDataInstructions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceTransactionDataInstructionsImplCopyWith<
          _$RemittanceTransactionDataInstructionsImpl>
      get copyWith => __$$RemittanceTransactionDataInstructionsImplCopyWithImpl<
          _$RemittanceTransactionDataInstructionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceTransactionDataInstructionsImplToJson(
      this,
    );
  }
}

abstract class _RemittanceTransactionDataInstructions
    implements RemittanceTransactionDataInstructions {
  const factory _RemittanceTransactionDataInstructions(
          {@JsonKey(name: "steps") required final dynamic steps,
          @JsonKey(name: "title") required final String title}) =
      _$RemittanceTransactionDataInstructionsImpl;

  factory _RemittanceTransactionDataInstructions.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceTransactionDataInstructionsImpl.fromJson;

  @override
  @JsonKey(name: "steps")
  dynamic get steps;
  @override
  @JsonKey(name: "title")
  String get title;

  /// Create a copy of RemittanceTransactionDataInstructions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceTransactionDataInstructionsImplCopyWith<
          _$RemittanceTransactionDataInstructionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceTransactionDataPaymentFee
    _$RemittanceTransactionDataPaymentFeeFromJson(Map<String, dynamic> json) {
  return _RemittanceTransactionDataPaymentFee.fromJson(json);
}

/// @nodoc
mixin _$RemittanceTransactionDataPaymentFee {
  @JsonKey(name: "Formatted")
  RemittanceTransactionDataPaymentTransferNominalFormatted get formatted =>
      throw _privateConstructorUsedError;
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

  /// Serializes this RemittanceTransactionDataPaymentFee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceTransactionDataPaymentFee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceTransactionDataPaymentFeeCopyWith<
          RemittanceTransactionDataPaymentFee>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionDataPaymentFeeCopyWith<$Res> {
  factory $RemittanceTransactionDataPaymentFeeCopyWith(
          RemittanceTransactionDataPaymentFee value,
          $Res Function(RemittanceTransactionDataPaymentFee) then) =
      _$RemittanceTransactionDataPaymentFeeCopyWithImpl<$Res,
          RemittanceTransactionDataPaymentFee>;
  @useResult
  $Res call(
      {@JsonKey(name: "Formatted")
      RemittanceTransactionDataPaymentTransferNominalFormatted formatted,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "currency_prefix") String currencyPrefix,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "feature_fee") int featureFee,
      @JsonKey(name: "is_feature_free") bool isFeatureFree,
      @JsonKey(name: "is_payment_free") bool isPaymentFree,
      @JsonKey(name: "payment_channel_fee") int paymentChannelFee});

  $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<$Res>
      get formatted;
}

/// @nodoc
class _$RemittanceTransactionDataPaymentFeeCopyWithImpl<$Res,
        $Val extends RemittanceTransactionDataPaymentFee>
    implements $RemittanceTransactionDataPaymentFeeCopyWith<$Res> {
  _$RemittanceTransactionDataPaymentFeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionDataPaymentFee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? amount = null,
    Object? currencyPrefix = null,
    Object? currencyType = null,
    Object? featureFee = null,
    Object? isFeatureFree = null,
    Object? isPaymentFree = null,
    Object? paymentChannelFee = null,
  }) {
    return _then(_value.copyWith(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransferNominalFormatted,
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

  /// Create a copy of RemittanceTransactionDataPaymentFee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<$Res>
      get formatted {
    return $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<
        $Res>(_value.formatted, (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceTransactionDataPaymentFeeImplCopyWith<$Res>
    implements $RemittanceTransactionDataPaymentFeeCopyWith<$Res> {
  factory _$$RemittanceTransactionDataPaymentFeeImplCopyWith(
          _$RemittanceTransactionDataPaymentFeeImpl value,
          $Res Function(_$RemittanceTransactionDataPaymentFeeImpl) then) =
      __$$RemittanceTransactionDataPaymentFeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Formatted")
      RemittanceTransactionDataPaymentTransferNominalFormatted formatted,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "currency_prefix") String currencyPrefix,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "feature_fee") int featureFee,
      @JsonKey(name: "is_feature_free") bool isFeatureFree,
      @JsonKey(name: "is_payment_free") bool isPaymentFree,
      @JsonKey(name: "payment_channel_fee") int paymentChannelFee});

  @override
  $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<$Res>
      get formatted;
}

/// @nodoc
class __$$RemittanceTransactionDataPaymentFeeImplCopyWithImpl<$Res>
    extends _$RemittanceTransactionDataPaymentFeeCopyWithImpl<$Res,
        _$RemittanceTransactionDataPaymentFeeImpl>
    implements _$$RemittanceTransactionDataPaymentFeeImplCopyWith<$Res> {
  __$$RemittanceTransactionDataPaymentFeeImplCopyWithImpl(
      _$RemittanceTransactionDataPaymentFeeImpl _value,
      $Res Function(_$RemittanceTransactionDataPaymentFeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionDataPaymentFee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? amount = null,
    Object? currencyPrefix = null,
    Object? currencyType = null,
    Object? featureFee = null,
    Object? isFeatureFree = null,
    Object? isPaymentFree = null,
    Object? paymentChannelFee = null,
  }) {
    return _then(_$RemittanceTransactionDataPaymentFeeImpl(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransferNominalFormatted,
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
class _$RemittanceTransactionDataPaymentFeeImpl
    implements _RemittanceTransactionDataPaymentFee {
  const _$RemittanceTransactionDataPaymentFeeImpl(
      {@JsonKey(name: "Formatted") required this.formatted,
      @JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "currency_prefix") required this.currencyPrefix,
      @JsonKey(name: "currency_type") required this.currencyType,
      @JsonKey(name: "feature_fee") required this.featureFee,
      @JsonKey(name: "is_feature_free") required this.isFeatureFree,
      @JsonKey(name: "is_payment_free") required this.isPaymentFree,
      @JsonKey(name: "payment_channel_fee") required this.paymentChannelFee});

  factory _$RemittanceTransactionDataPaymentFeeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceTransactionDataPaymentFeeImplFromJson(json);

  @override
  @JsonKey(name: "Formatted")
  final RemittanceTransactionDataPaymentTransferNominalFormatted formatted;
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
    return 'RemittanceTransactionDataPaymentFee(formatted: $formatted, amount: $amount, currencyPrefix: $currencyPrefix, currencyType: $currencyType, featureFee: $featureFee, isFeatureFree: $isFeatureFree, isPaymentFree: $isPaymentFree, paymentChannelFee: $paymentChannelFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceTransactionDataPaymentFeeImpl &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
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
      formatted,
      amount,
      currencyPrefix,
      currencyType,
      featureFee,
      isFeatureFree,
      isPaymentFree,
      paymentChannelFee);

  /// Create a copy of RemittanceTransactionDataPaymentFee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceTransactionDataPaymentFeeImplCopyWith<
          _$RemittanceTransactionDataPaymentFeeImpl>
      get copyWith => __$$RemittanceTransactionDataPaymentFeeImplCopyWithImpl<
          _$RemittanceTransactionDataPaymentFeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceTransactionDataPaymentFeeImplToJson(
      this,
    );
  }
}

abstract class _RemittanceTransactionDataPaymentFee
    implements RemittanceTransactionDataPaymentFee {
  const factory _RemittanceTransactionDataPaymentFee(
      {@JsonKey(name: "Formatted")
      required final RemittanceTransactionDataPaymentTransferNominalFormatted
          formatted,
      @JsonKey(name: "amount") required final int amount,
      @JsonKey(name: "currency_prefix") required final String currencyPrefix,
      @JsonKey(name: "currency_type") required final String currencyType,
      @JsonKey(name: "feature_fee") required final int featureFee,
      @JsonKey(name: "is_feature_free") required final bool isFeatureFree,
      @JsonKey(name: "is_payment_free") required final bool isPaymentFree,
      @JsonKey(name: "payment_channel_fee")
      required final int
          paymentChannelFee}) = _$RemittanceTransactionDataPaymentFeeImpl;

  factory _RemittanceTransactionDataPaymentFee.fromJson(
          Map<String, dynamic> json) =
      _$RemittanceTransactionDataPaymentFeeImpl.fromJson;

  @override
  @JsonKey(name: "Formatted")
  RemittanceTransactionDataPaymentTransferNominalFormatted get formatted;
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

  /// Create a copy of RemittanceTransactionDataPaymentFee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceTransactionDataPaymentFeeImplCopyWith<
          _$RemittanceTransactionDataPaymentFeeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RemittanceTransactionDataRate _$RemittanceTransactionDataRateFromJson(
    Map<String, dynamic> json) {
  return _RemittanceTransactionDataRate.fromJson(json);
}

/// @nodoc
mixin _$RemittanceTransactionDataRate {
  @JsonKey(name: "formatted")
  RemittanceTransactionDataPaymentTransferNominalFormatted get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "fx_rate")
  int get fxRate => throw _privateConstructorUsedError;

  /// Serializes this RemittanceTransactionDataRate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceTransactionDataRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceTransactionDataRateCopyWith<RemittanceTransactionDataRate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionDataRateCopyWith<$Res> {
  factory $RemittanceTransactionDataRateCopyWith(
          RemittanceTransactionDataRate value,
          $Res Function(RemittanceTransactionDataRate) then) =
      _$RemittanceTransactionDataRateCopyWithImpl<$Res,
          RemittanceTransactionDataRate>;
  @useResult
  $Res call(
      {@JsonKey(name: "formatted")
      RemittanceTransactionDataPaymentTransferNominalFormatted formatted,
      @JsonKey(name: "fx_rate") int fxRate});

  $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<$Res>
      get formatted;
}

/// @nodoc
class _$RemittanceTransactionDataRateCopyWithImpl<$Res,
        $Val extends RemittanceTransactionDataRate>
    implements $RemittanceTransactionDataRateCopyWith<$Res> {
  _$RemittanceTransactionDataRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionDataRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? fxRate = null,
  }) {
    return _then(_value.copyWith(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransferNominalFormatted,
      fxRate: null == fxRate
          ? _value.fxRate
          : fxRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RemittanceTransactionDataRate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<$Res>
      get formatted {
    return $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<
        $Res>(_value.formatted, (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemittanceTransactionDataRateImplCopyWith<$Res>
    implements $RemittanceTransactionDataRateCopyWith<$Res> {
  factory _$$RemittanceTransactionDataRateImplCopyWith(
          _$RemittanceTransactionDataRateImpl value,
          $Res Function(_$RemittanceTransactionDataRateImpl) then) =
      __$$RemittanceTransactionDataRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "formatted")
      RemittanceTransactionDataPaymentTransferNominalFormatted formatted,
      @JsonKey(name: "fx_rate") int fxRate});

  @override
  $RemittanceTransactionDataPaymentTransferNominalFormattedCopyWith<$Res>
      get formatted;
}

/// @nodoc
class __$$RemittanceTransactionDataRateImplCopyWithImpl<$Res>
    extends _$RemittanceTransactionDataRateCopyWithImpl<$Res,
        _$RemittanceTransactionDataRateImpl>
    implements _$$RemittanceTransactionDataRateImplCopyWith<$Res> {
  __$$RemittanceTransactionDataRateImplCopyWithImpl(
      _$RemittanceTransactionDataRateImpl _value,
      $Res Function(_$RemittanceTransactionDataRateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionDataRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? fxRate = null,
  }) {
    return _then(_$RemittanceTransactionDataRateImpl(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionDataPaymentTransferNominalFormatted,
      fxRate: null == fxRate
          ? _value.fxRate
          : fxRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceTransactionDataRateImpl
    implements _RemittanceTransactionDataRate {
  const _$RemittanceTransactionDataRateImpl(
      {@JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "fx_rate") required this.fxRate});

  factory _$RemittanceTransactionDataRateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemittanceTransactionDataRateImplFromJson(json);

  @override
  @JsonKey(name: "formatted")
  final RemittanceTransactionDataPaymentTransferNominalFormatted formatted;
  @override
  @JsonKey(name: "fx_rate")
  final int fxRate;

  @override
  String toString() {
    return 'RemittanceTransactionDataRate(formatted: $formatted, fxRate: $fxRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceTransactionDataRateImpl &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.fxRate, fxRate) || other.fxRate == fxRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, formatted, fxRate);

  /// Create a copy of RemittanceTransactionDataRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceTransactionDataRateImplCopyWith<
          _$RemittanceTransactionDataRateImpl>
      get copyWith => __$$RemittanceTransactionDataRateImplCopyWithImpl<
          _$RemittanceTransactionDataRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceTransactionDataRateImplToJson(
      this,
    );
  }
}

abstract class _RemittanceTransactionDataRate
    implements RemittanceTransactionDataRate {
  const factory _RemittanceTransactionDataRate(
      {@JsonKey(name: "formatted")
      required final RemittanceTransactionDataPaymentTransferNominalFormatted
          formatted,
      @JsonKey(name: "fx_rate")
      required final int fxRate}) = _$RemittanceTransactionDataRateImpl;

  factory _RemittanceTransactionDataRate.fromJson(Map<String, dynamic> json) =
      _$RemittanceTransactionDataRateImpl.fromJson;

  @override
  @JsonKey(name: "formatted")
  RemittanceTransactionDataPaymentTransferNominalFormatted get formatted;
  @override
  @JsonKey(name: "fx_rate")
  int get fxRate;

  /// Create a copy of RemittanceTransactionDataRate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceTransactionDataRateImplCopyWith<
          _$RemittanceTransactionDataRateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
