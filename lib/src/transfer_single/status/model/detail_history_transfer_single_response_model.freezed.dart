// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_history_transfer_single_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailHistoryTransferSingleResponse
    _$DetailHistoryTransferSingleResponseFromJson(Map<String, dynamic> json) {
  return _DetailHistoryTransferSingleResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailHistoryTransferSingleResponse {
  String get message => throw _privateConstructorUsedError;
  TransactionData? get data => throw _privateConstructorUsedError;
  String get status_code => throw _privateConstructorUsedError;

  /// Serializes this DetailHistoryTransferSingleResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailHistoryTransferSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailHistoryTransferSingleResponseCopyWith<
          DetailHistoryTransferSingleResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailHistoryTransferSingleResponseCopyWith<$Res> {
  factory $DetailHistoryTransferSingleResponseCopyWith(
          DetailHistoryTransferSingleResponse value,
          $Res Function(DetailHistoryTransferSingleResponse) then) =
      _$DetailHistoryTransferSingleResponseCopyWithImpl<$Res,
          DetailHistoryTransferSingleResponse>;
  @useResult
  $Res call({String message, TransactionData? data, String status_code});

  $TransactionDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DetailHistoryTransferSingleResponseCopyWithImpl<$Res,
        $Val extends DetailHistoryTransferSingleResponse>
    implements $DetailHistoryTransferSingleResponseCopyWith<$Res> {
  _$DetailHistoryTransferSingleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailHistoryTransferSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = freezed,
    Object? status_code = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionData?,
      status_code: null == status_code
          ? _value.status_code
          : status_code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of DetailHistoryTransferSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailHistoryTransferSingleResponseImplCopyWith<$Res>
    implements $DetailHistoryTransferSingleResponseCopyWith<$Res> {
  factory _$$DetailHistoryTransferSingleResponseImplCopyWith(
          _$DetailHistoryTransferSingleResponseImpl value,
          $Res Function(_$DetailHistoryTransferSingleResponseImpl) then) =
      __$$DetailHistoryTransferSingleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, TransactionData? data, String status_code});

  @override
  $TransactionDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DetailHistoryTransferSingleResponseImplCopyWithImpl<$Res>
    extends _$DetailHistoryTransferSingleResponseCopyWithImpl<$Res,
        _$DetailHistoryTransferSingleResponseImpl>
    implements _$$DetailHistoryTransferSingleResponseImplCopyWith<$Res> {
  __$$DetailHistoryTransferSingleResponseImplCopyWithImpl(
      _$DetailHistoryTransferSingleResponseImpl _value,
      $Res Function(_$DetailHistoryTransferSingleResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailHistoryTransferSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = freezed,
    Object? status_code = null,
  }) {
    return _then(_$DetailHistoryTransferSingleResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionData?,
      status_code: null == status_code
          ? _value.status_code
          : status_code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailHistoryTransferSingleResponseImpl
    implements _DetailHistoryTransferSingleResponse {
  const _$DetailHistoryTransferSingleResponseImpl(
      {required this.message, this.data, required this.status_code});

  factory _$DetailHistoryTransferSingleResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DetailHistoryTransferSingleResponseImplFromJson(json);

  @override
  final String message;
  @override
  final TransactionData? data;
  @override
  final String status_code;

  @override
  String toString() {
    return 'DetailHistoryTransferSingleResponse(message: $message, data: $data, status_code: $status_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailHistoryTransferSingleResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.status_code, status_code) ||
                other.status_code == status_code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data, status_code);

  /// Create a copy of DetailHistoryTransferSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailHistoryTransferSingleResponseImplCopyWith<
          _$DetailHistoryTransferSingleResponseImpl>
      get copyWith => __$$DetailHistoryTransferSingleResponseImplCopyWithImpl<
          _$DetailHistoryTransferSingleResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailHistoryTransferSingleResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailHistoryTransferSingleResponse
    implements DetailHistoryTransferSingleResponse {
  const factory _DetailHistoryTransferSingleResponse(
          {required final String message,
          final TransactionData? data,
          required final String status_code}) =
      _$DetailHistoryTransferSingleResponseImpl;

  factory _DetailHistoryTransferSingleResponse.fromJson(
          Map<String, dynamic> json) =
      _$DetailHistoryTransferSingleResponseImpl.fromJson;

  @override
  String get message;
  @override
  TransactionData? get data;
  @override
  String get status_code;

  /// Create a copy of DetailHistoryTransferSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailHistoryTransferSingleResponseImplCopyWith<
          _$DetailHistoryTransferSingleResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) {
  return _TransactionData.fromJson(json);
}

/// @nodoc
mixin _$TransactionData {
  String? get transaction_id => throw _privateConstructorUsedError;
  String? get transaction_ref_id => throw _privateConstructorUsedError;
  String? get transaction_title => throw _privateConstructorUsedError;
  String? get transaction_type => throw _privateConstructorUsedError;
  PaymentChannel? get payment_channel => throw _privateConstructorUsedError;
  String? get status_transaction => throw _privateConstructorUsedError;
  String? get boundary_type => throw _privateConstructorUsedError;
  List<Recepient>? get recepients => throw _privateConstructorUsedError;
  PpobProduct? get ppob_product => throw _privateConstructorUsedError;
  TotalFee? get total_fee => throw _privateConstructorUsedError;
  int? get unique_code => throw _privateConstructorUsedError;
  int? get total_amount => throw _privateConstructorUsedError;
  int? get expired_at => throw _privateConstructorUsedError;
  int? get paid_at => throw _privateConstructorUsedError;
  int? get created_at => throw _privateConstructorUsedError;
  int? get updated_at => throw _privateConstructorUsedError;
  Formatted? get formatted => throw _privateConstructorUsedError;
  Rate? get rate => throw _privateConstructorUsedError;
  String? get sub_status_transaction => throw _privateConstructorUsedError;

  /// Serializes this TransactionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDataCopyWith<TransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataCopyWith<$Res> {
  factory $TransactionDataCopyWith(
          TransactionData value, $Res Function(TransactionData) then) =
      _$TransactionDataCopyWithImpl<$Res, TransactionData>;
  @useResult
  $Res call(
      {String? transaction_id,
      String? transaction_ref_id,
      String? transaction_title,
      String? transaction_type,
      PaymentChannel? payment_channel,
      String? status_transaction,
      String? boundary_type,
      List<Recepient>? recepients,
      PpobProduct? ppob_product,
      TotalFee? total_fee,
      int? unique_code,
      int? total_amount,
      int? expired_at,
      int? paid_at,
      int? created_at,
      int? updated_at,
      Formatted? formatted,
      Rate? rate,
      String? sub_status_transaction});

  $PaymentChannelCopyWith<$Res>? get payment_channel;
  $PpobProductCopyWith<$Res>? get ppob_product;
  $TotalFeeCopyWith<$Res>? get total_fee;
  $FormattedCopyWith<$Res>? get formatted;
  $RateCopyWith<$Res>? get rate;
}

/// @nodoc
class _$TransactionDataCopyWithImpl<$Res, $Val extends TransactionData>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction_id = freezed,
    Object? transaction_ref_id = freezed,
    Object? transaction_title = freezed,
    Object? transaction_type = freezed,
    Object? payment_channel = freezed,
    Object? status_transaction = freezed,
    Object? boundary_type = freezed,
    Object? recepients = freezed,
    Object? ppob_product = freezed,
    Object? total_fee = freezed,
    Object? unique_code = freezed,
    Object? total_amount = freezed,
    Object? expired_at = freezed,
    Object? paid_at = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? formatted = freezed,
    Object? rate = freezed,
    Object? sub_status_transaction = freezed,
  }) {
    return _then(_value.copyWith(
      transaction_id: freezed == transaction_id
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_ref_id: freezed == transaction_ref_id
          ? _value.transaction_ref_id
          : transaction_ref_id // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_title: freezed == transaction_title
          ? _value.transaction_title
          : transaction_title // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_type: freezed == transaction_type
          ? _value.transaction_type
          : transaction_type // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_channel: freezed == payment_channel
          ? _value.payment_channel
          : payment_channel // ignore: cast_nullable_to_non_nullable
              as PaymentChannel?,
      status_transaction: freezed == status_transaction
          ? _value.status_transaction
          : status_transaction // ignore: cast_nullable_to_non_nullable
              as String?,
      boundary_type: freezed == boundary_type
          ? _value.boundary_type
          : boundary_type // ignore: cast_nullable_to_non_nullable
              as String?,
      recepients: freezed == recepients
          ? _value.recepients
          : recepients // ignore: cast_nullable_to_non_nullable
              as List<Recepient>?,
      ppob_product: freezed == ppob_product
          ? _value.ppob_product
          : ppob_product // ignore: cast_nullable_to_non_nullable
              as PpobProduct?,
      total_fee: freezed == total_fee
          ? _value.total_fee
          : total_fee // ignore: cast_nullable_to_non_nullable
              as TotalFee?,
      unique_code: freezed == unique_code
          ? _value.unique_code
          : unique_code // ignore: cast_nullable_to_non_nullable
              as int?,
      total_amount: freezed == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      expired_at: freezed == expired_at
          ? _value.expired_at
          : expired_at // ignore: cast_nullable_to_non_nullable
              as int?,
      paid_at: freezed == paid_at
          ? _value.paid_at
          : paid_at // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as int?,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Rate?,
      sub_status_transaction: freezed == sub_status_transaction
          ? _value.sub_status_transaction
          : sub_status_transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentChannelCopyWith<$Res>? get payment_channel {
    if (_value.payment_channel == null) {
      return null;
    }

    return $PaymentChannelCopyWith<$Res>(_value.payment_channel!, (value) {
      return _then(_value.copyWith(payment_channel: value) as $Val);
    });
  }

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobProductCopyWith<$Res>? get ppob_product {
    if (_value.ppob_product == null) {
      return null;
    }

    return $PpobProductCopyWith<$Res>(_value.ppob_product!, (value) {
      return _then(_value.copyWith(ppob_product: value) as $Val);
    });
  }

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalFeeCopyWith<$Res>? get total_fee {
    if (_value.total_fee == null) {
      return null;
    }

    return $TotalFeeCopyWith<$Res>(_value.total_fee!, (value) {
      return _then(_value.copyWith(total_fee: value) as $Val);
    });
  }

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormattedCopyWith<$Res>? get formatted {
    if (_value.formatted == null) {
      return null;
    }

    return $FormattedCopyWith<$Res>(_value.formatted!, (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RateCopyWith<$Res>? get rate {
    if (_value.rate == null) {
      return null;
    }

    return $RateCopyWith<$Res>(_value.rate!, (value) {
      return _then(_value.copyWith(rate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionDataImplCopyWith<$Res>
    implements $TransactionDataCopyWith<$Res> {
  factory _$$TransactionDataImplCopyWith(_$TransactionDataImpl value,
          $Res Function(_$TransactionDataImpl) then) =
      __$$TransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? transaction_id,
      String? transaction_ref_id,
      String? transaction_title,
      String? transaction_type,
      PaymentChannel? payment_channel,
      String? status_transaction,
      String? boundary_type,
      List<Recepient>? recepients,
      PpobProduct? ppob_product,
      TotalFee? total_fee,
      int? unique_code,
      int? total_amount,
      int? expired_at,
      int? paid_at,
      int? created_at,
      int? updated_at,
      Formatted? formatted,
      Rate? rate,
      String? sub_status_transaction});

  @override
  $PaymentChannelCopyWith<$Res>? get payment_channel;
  @override
  $PpobProductCopyWith<$Res>? get ppob_product;
  @override
  $TotalFeeCopyWith<$Res>? get total_fee;
  @override
  $FormattedCopyWith<$Res>? get formatted;
  @override
  $RateCopyWith<$Res>? get rate;
}

/// @nodoc
class __$$TransactionDataImplCopyWithImpl<$Res>
    extends _$TransactionDataCopyWithImpl<$Res, _$TransactionDataImpl>
    implements _$$TransactionDataImplCopyWith<$Res> {
  __$$TransactionDataImplCopyWithImpl(
      _$TransactionDataImpl _value, $Res Function(_$TransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction_id = freezed,
    Object? transaction_ref_id = freezed,
    Object? transaction_title = freezed,
    Object? transaction_type = freezed,
    Object? payment_channel = freezed,
    Object? status_transaction = freezed,
    Object? boundary_type = freezed,
    Object? recepients = freezed,
    Object? ppob_product = freezed,
    Object? total_fee = freezed,
    Object? unique_code = freezed,
    Object? total_amount = freezed,
    Object? expired_at = freezed,
    Object? paid_at = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? formatted = freezed,
    Object? rate = freezed,
    Object? sub_status_transaction = freezed,
  }) {
    return _then(_$TransactionDataImpl(
      transaction_id: freezed == transaction_id
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_ref_id: freezed == transaction_ref_id
          ? _value.transaction_ref_id
          : transaction_ref_id // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_title: freezed == transaction_title
          ? _value.transaction_title
          : transaction_title // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_type: freezed == transaction_type
          ? _value.transaction_type
          : transaction_type // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_channel: freezed == payment_channel
          ? _value.payment_channel
          : payment_channel // ignore: cast_nullable_to_non_nullable
              as PaymentChannel?,
      status_transaction: freezed == status_transaction
          ? _value.status_transaction
          : status_transaction // ignore: cast_nullable_to_non_nullable
              as String?,
      boundary_type: freezed == boundary_type
          ? _value.boundary_type
          : boundary_type // ignore: cast_nullable_to_non_nullable
              as String?,
      recepients: freezed == recepients
          ? _value._recepients
          : recepients // ignore: cast_nullable_to_non_nullable
              as List<Recepient>?,
      ppob_product: freezed == ppob_product
          ? _value.ppob_product
          : ppob_product // ignore: cast_nullable_to_non_nullable
              as PpobProduct?,
      total_fee: freezed == total_fee
          ? _value.total_fee
          : total_fee // ignore: cast_nullable_to_non_nullable
              as TotalFee?,
      unique_code: freezed == unique_code
          ? _value.unique_code
          : unique_code // ignore: cast_nullable_to_non_nullable
              as int?,
      total_amount: freezed == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as int?,
      expired_at: freezed == expired_at
          ? _value.expired_at
          : expired_at // ignore: cast_nullable_to_non_nullable
              as int?,
      paid_at: freezed == paid_at
          ? _value.paid_at
          : paid_at // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as int?,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Rate?,
      sub_status_transaction: freezed == sub_status_transaction
          ? _value.sub_status_transaction
          : sub_status_transaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDataImpl implements _TransactionData {
  const _$TransactionDataImpl(
      {this.transaction_id,
      this.transaction_ref_id,
      this.transaction_title,
      this.transaction_type,
      this.payment_channel,
      this.status_transaction,
      this.boundary_type,
      final List<Recepient>? recepients,
      this.ppob_product,
      this.total_fee,
      this.unique_code,
      this.total_amount,
      this.expired_at,
      this.paid_at,
      this.created_at,
      this.updated_at,
      this.formatted,
      this.rate,
      this.sub_status_transaction})
      : _recepients = recepients;

  factory _$TransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDataImplFromJson(json);

  @override
  final String? transaction_id;
  @override
  final String? transaction_ref_id;
  @override
  final String? transaction_title;
  @override
  final String? transaction_type;
  @override
  final PaymentChannel? payment_channel;
  @override
  final String? status_transaction;
  @override
  final String? boundary_type;
  final List<Recepient>? _recepients;
  @override
  List<Recepient>? get recepients {
    final value = _recepients;
    if (value == null) return null;
    if (_recepients is EqualUnmodifiableListView) return _recepients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PpobProduct? ppob_product;
  @override
  final TotalFee? total_fee;
  @override
  final int? unique_code;
  @override
  final int? total_amount;
  @override
  final int? expired_at;
  @override
  final int? paid_at;
  @override
  final int? created_at;
  @override
  final int? updated_at;
  @override
  final Formatted? formatted;
  @override
  final Rate? rate;
  @override
  final String? sub_status_transaction;

  @override
  String toString() {
    return 'TransactionData(transaction_id: $transaction_id, transaction_ref_id: $transaction_ref_id, transaction_title: $transaction_title, transaction_type: $transaction_type, payment_channel: $payment_channel, status_transaction: $status_transaction, boundary_type: $boundary_type, recepients: $recepients, ppob_product: $ppob_product, total_fee: $total_fee, unique_code: $unique_code, total_amount: $total_amount, expired_at: $expired_at, paid_at: $paid_at, created_at: $created_at, updated_at: $updated_at, formatted: $formatted, rate: $rate, sub_status_transaction: $sub_status_transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataImpl &&
            (identical(other.transaction_id, transaction_id) ||
                other.transaction_id == transaction_id) &&
            (identical(other.transaction_ref_id, transaction_ref_id) ||
                other.transaction_ref_id == transaction_ref_id) &&
            (identical(other.transaction_title, transaction_title) ||
                other.transaction_title == transaction_title) &&
            (identical(other.transaction_type, transaction_type) ||
                other.transaction_type == transaction_type) &&
            (identical(other.payment_channel, payment_channel) ||
                other.payment_channel == payment_channel) &&
            (identical(other.status_transaction, status_transaction) ||
                other.status_transaction == status_transaction) &&
            (identical(other.boundary_type, boundary_type) ||
                other.boundary_type == boundary_type) &&
            const DeepCollectionEquality()
                .equals(other._recepients, _recepients) &&
            (identical(other.ppob_product, ppob_product) ||
                other.ppob_product == ppob_product) &&
            (identical(other.total_fee, total_fee) ||
                other.total_fee == total_fee) &&
            (identical(other.unique_code, unique_code) ||
                other.unique_code == unique_code) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            (identical(other.expired_at, expired_at) ||
                other.expired_at == expired_at) &&
            (identical(other.paid_at, paid_at) || other.paid_at == paid_at) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.sub_status_transaction, sub_status_transaction) ||
                other.sub_status_transaction == sub_status_transaction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        transaction_id,
        transaction_ref_id,
        transaction_title,
        transaction_type,
        payment_channel,
        status_transaction,
        boundary_type,
        const DeepCollectionEquality().hash(_recepients),
        ppob_product,
        total_fee,
        unique_code,
        total_amount,
        expired_at,
        paid_at,
        created_at,
        updated_at,
        formatted,
        rate,
        sub_status_transaction
      ]);

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      __$$TransactionDataImplCopyWithImpl<_$TransactionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataImplToJson(
      this,
    );
  }
}

abstract class _TransactionData implements TransactionData {
  const factory _TransactionData(
      {final String? transaction_id,
      final String? transaction_ref_id,
      final String? transaction_title,
      final String? transaction_type,
      final PaymentChannel? payment_channel,
      final String? status_transaction,
      final String? boundary_type,
      final List<Recepient>? recepients,
      final PpobProduct? ppob_product,
      final TotalFee? total_fee,
      final int? unique_code,
      final int? total_amount,
      final int? expired_at,
      final int? paid_at,
      final int? created_at,
      final int? updated_at,
      final Formatted? formatted,
      final Rate? rate,
      final String? sub_status_transaction}) = _$TransactionDataImpl;

  factory _TransactionData.fromJson(Map<String, dynamic> json) =
      _$TransactionDataImpl.fromJson;

  @override
  String? get transaction_id;
  @override
  String? get transaction_ref_id;
  @override
  String? get transaction_title;
  @override
  String? get transaction_type;
  @override
  PaymentChannel? get payment_channel;
  @override
  String? get status_transaction;
  @override
  String? get boundary_type;
  @override
  List<Recepient>? get recepients;
  @override
  PpobProduct? get ppob_product;
  @override
  TotalFee? get total_fee;
  @override
  int? get unique_code;
  @override
  int? get total_amount;
  @override
  int? get expired_at;
  @override
  int? get paid_at;
  @override
  int? get created_at;
  @override
  int? get updated_at;
  @override
  Formatted? get formatted;
  @override
  Rate? get rate;
  @override
  String? get sub_status_transaction;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentChannel _$PaymentChannelFromJson(Map<String, dynamic> json) {
  return _PaymentChannel.fromJson(json);
}

/// @nodoc
mixin _$PaymentChannel {
  String? get method => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get currency_type => throw _privateConstructorUsedError;
  String? get pay_code => throw _privateConstructorUsedError;
  String? get qr_content => throw _privateConstructorUsedError;
  String? get qr_image => throw _privateConstructorUsedError;

  /// Serializes this PaymentChannel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentChannelCopyWith<PaymentChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentChannelCopyWith<$Res> {
  factory $PaymentChannelCopyWith(
          PaymentChannel value, $Res Function(PaymentChannel) then) =
      _$PaymentChannelCopyWithImpl<$Res, PaymentChannel>;
  @useResult
  $Res call(
      {String? method,
      String? name,
      String? currency_type,
      String? pay_code,
      String? qr_content,
      String? qr_image});
}

/// @nodoc
class _$PaymentChannelCopyWithImpl<$Res, $Val extends PaymentChannel>
    implements $PaymentChannelCopyWith<$Res> {
  _$PaymentChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = freezed,
    Object? name = freezed,
    Object? currency_type = freezed,
    Object? pay_code = freezed,
    Object? qr_content = freezed,
    Object? qr_image = freezed,
  }) {
    return _then(_value.copyWith(
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      currency_type: freezed == currency_type
          ? _value.currency_type
          : currency_type // ignore: cast_nullable_to_non_nullable
              as String?,
      pay_code: freezed == pay_code
          ? _value.pay_code
          : pay_code // ignore: cast_nullable_to_non_nullable
              as String?,
      qr_content: freezed == qr_content
          ? _value.qr_content
          : qr_content // ignore: cast_nullable_to_non_nullable
              as String?,
      qr_image: freezed == qr_image
          ? _value.qr_image
          : qr_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentChannelImplCopyWith<$Res>
    implements $PaymentChannelCopyWith<$Res> {
  factory _$$PaymentChannelImplCopyWith(_$PaymentChannelImpl value,
          $Res Function(_$PaymentChannelImpl) then) =
      __$$PaymentChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? method,
      String? name,
      String? currency_type,
      String? pay_code,
      String? qr_content,
      String? qr_image});
}

/// @nodoc
class __$$PaymentChannelImplCopyWithImpl<$Res>
    extends _$PaymentChannelCopyWithImpl<$Res, _$PaymentChannelImpl>
    implements _$$PaymentChannelImplCopyWith<$Res> {
  __$$PaymentChannelImplCopyWithImpl(
      _$PaymentChannelImpl _value, $Res Function(_$PaymentChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = freezed,
    Object? name = freezed,
    Object? currency_type = freezed,
    Object? pay_code = freezed,
    Object? qr_content = freezed,
    Object? qr_image = freezed,
  }) {
    return _then(_$PaymentChannelImpl(
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      currency_type: freezed == currency_type
          ? _value.currency_type
          : currency_type // ignore: cast_nullable_to_non_nullable
              as String?,
      pay_code: freezed == pay_code
          ? _value.pay_code
          : pay_code // ignore: cast_nullable_to_non_nullable
              as String?,
      qr_content: freezed == qr_content
          ? _value.qr_content
          : qr_content // ignore: cast_nullable_to_non_nullable
              as String?,
      qr_image: freezed == qr_image
          ? _value.qr_image
          : qr_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentChannelImpl implements _PaymentChannel {
  const _$PaymentChannelImpl(
      {this.method,
      this.name,
      this.currency_type,
      this.pay_code,
      this.qr_content,
      this.qr_image});

  factory _$PaymentChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentChannelImplFromJson(json);

  @override
  final String? method;
  @override
  final String? name;
  @override
  final String? currency_type;
  @override
  final String? pay_code;
  @override
  final String? qr_content;
  @override
  final String? qr_image;

  @override
  String toString() {
    return 'PaymentChannel(method: $method, name: $name, currency_type: $currency_type, pay_code: $pay_code, qr_content: $qr_content, qr_image: $qr_image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentChannelImpl &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currency_type, currency_type) ||
                other.currency_type == currency_type) &&
            (identical(other.pay_code, pay_code) ||
                other.pay_code == pay_code) &&
            (identical(other.qr_content, qr_content) ||
                other.qr_content == qr_content) &&
            (identical(other.qr_image, qr_image) ||
                other.qr_image == qr_image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, method, name, currency_type, pay_code, qr_content, qr_image);

  /// Create a copy of PaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentChannelImplCopyWith<_$PaymentChannelImpl> get copyWith =>
      __$$PaymentChannelImplCopyWithImpl<_$PaymentChannelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentChannelImplToJson(
      this,
    );
  }
}

abstract class _PaymentChannel implements PaymentChannel {
  const factory _PaymentChannel(
      {final String? method,
      final String? name,
      final String? currency_type,
      final String? pay_code,
      final String? qr_content,
      final String? qr_image}) = _$PaymentChannelImpl;

  factory _PaymentChannel.fromJson(Map<String, dynamic> json) =
      _$PaymentChannelImpl.fromJson;

  @override
  String? get method;
  @override
  String? get name;
  @override
  String? get currency_type;
  @override
  String? get pay_code;
  @override
  String? get qr_content;
  @override
  String? get qr_image;

  /// Create a copy of PaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentChannelImplCopyWith<_$PaymentChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Recepient _$RecepientFromJson(Map<String, dynamic> json) {
  return _Recepient.fromJson(json);
}

/// @nodoc
mixin _$Recepient {
  String? get bank_code => throw _privateConstructorUsedError;
  String? get bank_name => throw _privateConstructorUsedError;
  String? get account_name => throw _privateConstructorUsedError;
  String? get account_code => throw _privateConstructorUsedError;
  int? get nominal => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get currency_type => throw _privateConstructorUsedError;
  String? get icon_url => throw _privateConstructorUsedError;
  String? get receive_currency_type => throw _privateConstructorUsedError;
  int? get receive_nominal => throw _privateConstructorUsedError;

  /// Serializes this Recepient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Recepient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecepientCopyWith<Recepient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecepientCopyWith<$Res> {
  factory $RecepientCopyWith(Recepient value, $Res Function(Recepient) then) =
      _$RecepientCopyWithImpl<$Res, Recepient>;
  @useResult
  $Res call(
      {String? bank_code,
      String? bank_name,
      String? account_name,
      String? account_code,
      int? nominal,
      String? note,
      String? currency_type,
      String? icon_url,
      String? receive_currency_type,
      int? receive_nominal});
}

/// @nodoc
class _$RecepientCopyWithImpl<$Res, $Val extends Recepient>
    implements $RecepientCopyWith<$Res> {
  _$RecepientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recepient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bank_code = freezed,
    Object? bank_name = freezed,
    Object? account_name = freezed,
    Object? account_code = freezed,
    Object? nominal = freezed,
    Object? note = freezed,
    Object? currency_type = freezed,
    Object? icon_url = freezed,
    Object? receive_currency_type = freezed,
    Object? receive_nominal = freezed,
  }) {
    return _then(_value.copyWith(
      bank_code: freezed == bank_code
          ? _value.bank_code
          : bank_code // ignore: cast_nullable_to_non_nullable
              as String?,
      bank_name: freezed == bank_name
          ? _value.bank_name
          : bank_name // ignore: cast_nullable_to_non_nullable
              as String?,
      account_name: freezed == account_name
          ? _value.account_name
          : account_name // ignore: cast_nullable_to_non_nullable
              as String?,
      account_code: freezed == account_code
          ? _value.account_code
          : account_code // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      currency_type: freezed == currency_type
          ? _value.currency_type
          : currency_type // ignore: cast_nullable_to_non_nullable
              as String?,
      icon_url: freezed == icon_url
          ? _value.icon_url
          : icon_url // ignore: cast_nullable_to_non_nullable
              as String?,
      receive_currency_type: freezed == receive_currency_type
          ? _value.receive_currency_type
          : receive_currency_type // ignore: cast_nullable_to_non_nullable
              as String?,
      receive_nominal: freezed == receive_nominal
          ? _value.receive_nominal
          : receive_nominal // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecepientImplCopyWith<$Res>
    implements $RecepientCopyWith<$Res> {
  factory _$$RecepientImplCopyWith(
          _$RecepientImpl value, $Res Function(_$RecepientImpl) then) =
      __$$RecepientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? bank_code,
      String? bank_name,
      String? account_name,
      String? account_code,
      int? nominal,
      String? note,
      String? currency_type,
      String? icon_url,
      String? receive_currency_type,
      int? receive_nominal});
}

/// @nodoc
class __$$RecepientImplCopyWithImpl<$Res>
    extends _$RecepientCopyWithImpl<$Res, _$RecepientImpl>
    implements _$$RecepientImplCopyWith<$Res> {
  __$$RecepientImplCopyWithImpl(
      _$RecepientImpl _value, $Res Function(_$RecepientImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recepient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bank_code = freezed,
    Object? bank_name = freezed,
    Object? account_name = freezed,
    Object? account_code = freezed,
    Object? nominal = freezed,
    Object? note = freezed,
    Object? currency_type = freezed,
    Object? icon_url = freezed,
    Object? receive_currency_type = freezed,
    Object? receive_nominal = freezed,
  }) {
    return _then(_$RecepientImpl(
      bank_code: freezed == bank_code
          ? _value.bank_code
          : bank_code // ignore: cast_nullable_to_non_nullable
              as String?,
      bank_name: freezed == bank_name
          ? _value.bank_name
          : bank_name // ignore: cast_nullable_to_non_nullable
              as String?,
      account_name: freezed == account_name
          ? _value.account_name
          : account_name // ignore: cast_nullable_to_non_nullable
              as String?,
      account_code: freezed == account_code
          ? _value.account_code
          : account_code // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      currency_type: freezed == currency_type
          ? _value.currency_type
          : currency_type // ignore: cast_nullable_to_non_nullable
              as String?,
      icon_url: freezed == icon_url
          ? _value.icon_url
          : icon_url // ignore: cast_nullable_to_non_nullable
              as String?,
      receive_currency_type: freezed == receive_currency_type
          ? _value.receive_currency_type
          : receive_currency_type // ignore: cast_nullable_to_non_nullable
              as String?,
      receive_nominal: freezed == receive_nominal
          ? _value.receive_nominal
          : receive_nominal // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecepientImpl implements _Recepient {
  const _$RecepientImpl(
      {this.bank_code,
      this.bank_name,
      this.account_name,
      this.account_code,
      this.nominal,
      this.note,
      this.currency_type,
      this.icon_url,
      this.receive_currency_type,
      this.receive_nominal});

  factory _$RecepientImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecepientImplFromJson(json);

  @override
  final String? bank_code;
  @override
  final String? bank_name;
  @override
  final String? account_name;
  @override
  final String? account_code;
  @override
  final int? nominal;
  @override
  final String? note;
  @override
  final String? currency_type;
  @override
  final String? icon_url;
  @override
  final String? receive_currency_type;
  @override
  final int? receive_nominal;

  @override
  String toString() {
    return 'Recepient(bank_code: $bank_code, bank_name: $bank_name, account_name: $account_name, account_code: $account_code, nominal: $nominal, note: $note, currency_type: $currency_type, icon_url: $icon_url, receive_currency_type: $receive_currency_type, receive_nominal: $receive_nominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecepientImpl &&
            (identical(other.bank_code, bank_code) ||
                other.bank_code == bank_code) &&
            (identical(other.bank_name, bank_name) ||
                other.bank_name == bank_name) &&
            (identical(other.account_name, account_name) ||
                other.account_name == account_name) &&
            (identical(other.account_code, account_code) ||
                other.account_code == account_code) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.currency_type, currency_type) ||
                other.currency_type == currency_type) &&
            (identical(other.icon_url, icon_url) ||
                other.icon_url == icon_url) &&
            (identical(other.receive_currency_type, receive_currency_type) ||
                other.receive_currency_type == receive_currency_type) &&
            (identical(other.receive_nominal, receive_nominal) ||
                other.receive_nominal == receive_nominal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bank_code,
      bank_name,
      account_name,
      account_code,
      nominal,
      note,
      currency_type,
      icon_url,
      receive_currency_type,
      receive_nominal);

  /// Create a copy of Recepient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecepientImplCopyWith<_$RecepientImpl> get copyWith =>
      __$$RecepientImplCopyWithImpl<_$RecepientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecepientImplToJson(
      this,
    );
  }
}

abstract class _Recepient implements Recepient {
  const factory _Recepient(
      {final String? bank_code,
      final String? bank_name,
      final String? account_name,
      final String? account_code,
      final int? nominal,
      final String? note,
      final String? currency_type,
      final String? icon_url,
      final String? receive_currency_type,
      final int? receive_nominal}) = _$RecepientImpl;

  factory _Recepient.fromJson(Map<String, dynamic> json) =
      _$RecepientImpl.fromJson;

  @override
  String? get bank_code;
  @override
  String? get bank_name;
  @override
  String? get account_name;
  @override
  String? get account_code;
  @override
  int? get nominal;
  @override
  String? get note;
  @override
  String? get currency_type;
  @override
  String? get icon_url;
  @override
  String? get receive_currency_type;
  @override
  int? get receive_nominal;

  /// Create a copy of Recepient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecepientImplCopyWith<_$RecepientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PpobProduct _$PpobProductFromJson(Map<String, dynamic> json) {
  return _PpobProduct.fromJson(json);
}

/// @nodoc
mixin _$PpobProduct {
  String? get product_name => throw _privateConstructorUsedError;
  String? get product_number => throw _privateConstructorUsedError;
  int? get selling_price => throw _privateConstructorUsedError;
  String? get serial_number => throw _privateConstructorUsedError;
  PpobProductDescription? get desc => throw _privateConstructorUsedError;
  Formatted? get formatted => throw _privateConstructorUsedError;

  /// Serializes this PpobProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobProductCopyWith<PpobProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobProductCopyWith<$Res> {
  factory $PpobProductCopyWith(
          PpobProduct value, $Res Function(PpobProduct) then) =
      _$PpobProductCopyWithImpl<$Res, PpobProduct>;
  @useResult
  $Res call(
      {String? product_name,
      String? product_number,
      int? selling_price,
      String? serial_number,
      PpobProductDescription? desc,
      Formatted? formatted});

  $PpobProductDescriptionCopyWith<$Res>? get desc;
  $FormattedCopyWith<$Res>? get formatted;
}

/// @nodoc
class _$PpobProductCopyWithImpl<$Res, $Val extends PpobProduct>
    implements $PpobProductCopyWith<$Res> {
  _$PpobProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_name = freezed,
    Object? product_number = freezed,
    Object? selling_price = freezed,
    Object? serial_number = freezed,
    Object? desc = freezed,
    Object? formatted = freezed,
  }) {
    return _then(_value.copyWith(
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      product_number: freezed == product_number
          ? _value.product_number
          : product_number // ignore: cast_nullable_to_non_nullable
              as String?,
      selling_price: freezed == selling_price
          ? _value.selling_price
          : selling_price // ignore: cast_nullable_to_non_nullable
              as int?,
      serial_number: freezed == serial_number
          ? _value.serial_number
          : serial_number // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as PpobProductDescription?,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted?,
    ) as $Val);
  }

  /// Create a copy of PpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobProductDescriptionCopyWith<$Res>? get desc {
    if (_value.desc == null) {
      return null;
    }

    return $PpobProductDescriptionCopyWith<$Res>(_value.desc!, (value) {
      return _then(_value.copyWith(desc: value) as $Val);
    });
  }

  /// Create a copy of PpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormattedCopyWith<$Res>? get formatted {
    if (_value.formatted == null) {
      return null;
    }

    return $FormattedCopyWith<$Res>(_value.formatted!, (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobProductImplCopyWith<$Res>
    implements $PpobProductCopyWith<$Res> {
  factory _$$PpobProductImplCopyWith(
          _$PpobProductImpl value, $Res Function(_$PpobProductImpl) then) =
      __$$PpobProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? product_name,
      String? product_number,
      int? selling_price,
      String? serial_number,
      PpobProductDescription? desc,
      Formatted? formatted});

  @override
  $PpobProductDescriptionCopyWith<$Res>? get desc;
  @override
  $FormattedCopyWith<$Res>? get formatted;
}

/// @nodoc
class __$$PpobProductImplCopyWithImpl<$Res>
    extends _$PpobProductCopyWithImpl<$Res, _$PpobProductImpl>
    implements _$$PpobProductImplCopyWith<$Res> {
  __$$PpobProductImplCopyWithImpl(
      _$PpobProductImpl _value, $Res Function(_$PpobProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_name = freezed,
    Object? product_number = freezed,
    Object? selling_price = freezed,
    Object? serial_number = freezed,
    Object? desc = freezed,
    Object? formatted = freezed,
  }) {
    return _then(_$PpobProductImpl(
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      product_number: freezed == product_number
          ? _value.product_number
          : product_number // ignore: cast_nullable_to_non_nullable
              as String?,
      selling_price: freezed == selling_price
          ? _value.selling_price
          : selling_price // ignore: cast_nullable_to_non_nullable
              as int?,
      serial_number: freezed == serial_number
          ? _value.serial_number
          : serial_number // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as PpobProductDescription?,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobProductImpl implements _PpobProduct {
  const _$PpobProductImpl(
      {this.product_name,
      this.product_number,
      this.selling_price,
      this.serial_number,
      this.desc,
      this.formatted});

  factory _$PpobProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobProductImplFromJson(json);

  @override
  final String? product_name;
  @override
  final String? product_number;
  @override
  final int? selling_price;
  @override
  final String? serial_number;
  @override
  final PpobProductDescription? desc;
  @override
  final Formatted? formatted;

  @override
  String toString() {
    return 'PpobProduct(product_name: $product_name, product_number: $product_number, selling_price: $selling_price, serial_number: $serial_number, desc: $desc, formatted: $formatted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobProductImpl &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.product_number, product_number) ||
                other.product_number == product_number) &&
            (identical(other.selling_price, selling_price) ||
                other.selling_price == selling_price) &&
            (identical(other.serial_number, serial_number) ||
                other.serial_number == serial_number) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, product_name, product_number,
      selling_price, serial_number, desc, formatted);

  /// Create a copy of PpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobProductImplCopyWith<_$PpobProductImpl> get copyWith =>
      __$$PpobProductImplCopyWithImpl<_$PpobProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobProductImplToJson(
      this,
    );
  }
}

abstract class _PpobProduct implements PpobProduct {
  const factory _PpobProduct(
      {final String? product_name,
      final String? product_number,
      final int? selling_price,
      final String? serial_number,
      final PpobProductDescription? desc,
      final Formatted? formatted}) = _$PpobProductImpl;

  factory _PpobProduct.fromJson(Map<String, dynamic> json) =
      _$PpobProductImpl.fromJson;

  @override
  String? get product_name;
  @override
  String? get product_number;
  @override
  int? get selling_price;
  @override
  String? get serial_number;
  @override
  PpobProductDescription? get desc;
  @override
  Formatted? get formatted;

  /// Create a copy of PpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobProductImplCopyWith<_$PpobProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PpobProductDescription _$PpobProductDescriptionFromJson(
    Map<String, dynamic> json) {
  return _PpobProductDescription.fromJson(json);
}

/// @nodoc
mixin _$PpobProductDescription {
  String? get tarif => throw _privateConstructorUsedError;
  String? get alamat => throw _privateConstructorUsedError;
  String? get jatuh_temp => throw _privateConstructorUsedError;
  int? get daya => throw _privateConstructorUsedError;
  int? get lembar_tagihan => throw _privateConstructorUsedError;
  String? get item_name => throw _privateConstructorUsedError;
  String? get jumlah_peserta => throw _privateConstructorUsedError;
  String? get no_rangka => throw _privateConstructorUsedError;
  String? get no_pol => throw _privateConstructorUsedError;
  String? get tenor => throw _privateConstructorUsedError;
  String? get tahun_pajak => throw _privateConstructorUsedError;
  String? get kelurahan => throw _privateConstructorUsedError;
  String? get kecamatan => throw _privateConstructorUsedError;
  String? get kode_kab_kota => throw _privateConstructorUsedError;
  String? get kab_kota => throw _privateConstructorUsedError;
  String? get luas_tanah => throw _privateConstructorUsedError;
  String? get luas_gedung => throw _privateConstructorUsedError;
  String? get kode_iuran => throw _privateConstructorUsedError;
  String? get kode_program => throw _privateConstructorUsedError;
  int? get jkk => throw _privateConstructorUsedError;
  int? get jkm => throw _privateConstructorUsedError;
  int? get jht => throw _privateConstructorUsedError;
  int? get jpk => throw _privateConstructorUsedError;
  int? get jpn => throw _privateConstructorUsedError;
  String? get npp => throw _privateConstructorUsedError;
  String? get kode_divisi => throw _privateConstructorUsedError;
  String? get kantor_cabang => throw _privateConstructorUsedError;
  String? get tgl_efektif => throw _privateConstructorUsedError;
  String? get tgl_expired => throw _privateConstructorUsedError;
  String? get no_registrasi => throw _privateConstructorUsedError;
  String? get transaksi => throw _privateConstructorUsedError;
  String? get tanggal_registrasi => throw _privateConstructorUsedError;
  String? get nomor_identitas => throw _privateConstructorUsedError;
  String? get nomor_rangka => throw _privateConstructorUsedError;
  String? get nomor_mesin => throw _privateConstructorUsedError;
  String? get nomor_polisi => throw _privateConstructorUsedError;
  String? get milik_kenama => throw _privateConstructorUsedError;
  String? get merek_kb => throw _privateConstructorUsedError;
  String? get model_kb => throw _privateConstructorUsedError;
  String? get tahun_buatan => throw _privateConstructorUsedError;
  String? get tgl_akhir_pajak_baru => throw _privateConstructorUsedError;
  String? get biaya_pokok_bbn => throw _privateConstructorUsedError;
  String? get biaya_pokok_swd => throw _privateConstructorUsedError;
  String? get biaya_pokok_pkb => throw _privateConstructorUsedError;
  String? get biaya_denda_swd => throw _privateConstructorUsedError;
  String? get biaya_denda_bbn => throw _privateConstructorUsedError;
  String? get biaya_denda_pkb => throw _privateConstructorUsedError;
  String? get biaya_admin_stnk => throw _privateConstructorUsedError;
  String? get biaya_admin_tnkb => throw _privateConstructorUsedError;
  String? get biaya_parkir_pokok => throw _privateConstructorUsedError;
  String? get biaya_pajak_progresif => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;

  /// Serializes this PpobProductDescription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobProductDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobProductDescriptionCopyWith<PpobProductDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobProductDescriptionCopyWith<$Res> {
  factory $PpobProductDescriptionCopyWith(PpobProductDescription value,
          $Res Function(PpobProductDescription) then) =
      _$PpobProductDescriptionCopyWithImpl<$Res, PpobProductDescription>;
  @useResult
  $Res call(
      {String? tarif,
      String? alamat,
      String? jatuh_temp,
      int? daya,
      int? lembar_tagihan,
      String? item_name,
      String? jumlah_peserta,
      String? no_rangka,
      String? no_pol,
      String? tenor,
      String? tahun_pajak,
      String? kelurahan,
      String? kecamatan,
      String? kode_kab_kota,
      String? kab_kota,
      String? luas_tanah,
      String? luas_gedung,
      String? kode_iuran,
      String? kode_program,
      int? jkk,
      int? jkm,
      int? jht,
      int? jpk,
      int? jpn,
      String? npp,
      String? kode_divisi,
      String? kantor_cabang,
      String? tgl_efektif,
      String? tgl_expired,
      String? no_registrasi,
      String? transaksi,
      String? tanggal_registrasi,
      String? nomor_identitas,
      String? nomor_rangka,
      String? nomor_mesin,
      String? nomor_polisi,
      String? milik_kenama,
      String? merek_kb,
      String? model_kb,
      String? tahun_buatan,
      String? tgl_akhir_pajak_baru,
      String? biaya_pokok_bbn,
      String? biaya_pokok_swd,
      String? biaya_pokok_pkb,
      String? biaya_denda_swd,
      String? biaya_denda_bbn,
      String? biaya_denda_pkb,
      String? biaya_admin_stnk,
      String? biaya_admin_tnkb,
      String? biaya_parkir_pokok,
      String? biaya_pajak_progresif,
      String? detail});
}

/// @nodoc
class _$PpobProductDescriptionCopyWithImpl<$Res,
        $Val extends PpobProductDescription>
    implements $PpobProductDescriptionCopyWith<$Res> {
  _$PpobProductDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobProductDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tarif = freezed,
    Object? alamat = freezed,
    Object? jatuh_temp = freezed,
    Object? daya = freezed,
    Object? lembar_tagihan = freezed,
    Object? item_name = freezed,
    Object? jumlah_peserta = freezed,
    Object? no_rangka = freezed,
    Object? no_pol = freezed,
    Object? tenor = freezed,
    Object? tahun_pajak = freezed,
    Object? kelurahan = freezed,
    Object? kecamatan = freezed,
    Object? kode_kab_kota = freezed,
    Object? kab_kota = freezed,
    Object? luas_tanah = freezed,
    Object? luas_gedung = freezed,
    Object? kode_iuran = freezed,
    Object? kode_program = freezed,
    Object? jkk = freezed,
    Object? jkm = freezed,
    Object? jht = freezed,
    Object? jpk = freezed,
    Object? jpn = freezed,
    Object? npp = freezed,
    Object? kode_divisi = freezed,
    Object? kantor_cabang = freezed,
    Object? tgl_efektif = freezed,
    Object? tgl_expired = freezed,
    Object? no_registrasi = freezed,
    Object? transaksi = freezed,
    Object? tanggal_registrasi = freezed,
    Object? nomor_identitas = freezed,
    Object? nomor_rangka = freezed,
    Object? nomor_mesin = freezed,
    Object? nomor_polisi = freezed,
    Object? milik_kenama = freezed,
    Object? merek_kb = freezed,
    Object? model_kb = freezed,
    Object? tahun_buatan = freezed,
    Object? tgl_akhir_pajak_baru = freezed,
    Object? biaya_pokok_bbn = freezed,
    Object? biaya_pokok_swd = freezed,
    Object? biaya_pokok_pkb = freezed,
    Object? biaya_denda_swd = freezed,
    Object? biaya_denda_bbn = freezed,
    Object? biaya_denda_pkb = freezed,
    Object? biaya_admin_stnk = freezed,
    Object? biaya_admin_tnkb = freezed,
    Object? biaya_parkir_pokok = freezed,
    Object? biaya_pajak_progresif = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      tarif: freezed == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      jatuh_temp: freezed == jatuh_temp
          ? _value.jatuh_temp
          : jatuh_temp // ignore: cast_nullable_to_non_nullable
              as String?,
      daya: freezed == daya
          ? _value.daya
          : daya // ignore: cast_nullable_to_non_nullable
              as int?,
      lembar_tagihan: freezed == lembar_tagihan
          ? _value.lembar_tagihan
          : lembar_tagihan // ignore: cast_nullable_to_non_nullable
              as int?,
      item_name: freezed == item_name
          ? _value.item_name
          : item_name // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah_peserta: freezed == jumlah_peserta
          ? _value.jumlah_peserta
          : jumlah_peserta // ignore: cast_nullable_to_non_nullable
              as String?,
      no_rangka: freezed == no_rangka
          ? _value.no_rangka
          : no_rangka // ignore: cast_nullable_to_non_nullable
              as String?,
      no_pol: freezed == no_pol
          ? _value.no_pol
          : no_pol // ignore: cast_nullable_to_non_nullable
              as String?,
      tenor: freezed == tenor
          ? _value.tenor
          : tenor // ignore: cast_nullable_to_non_nullable
              as String?,
      tahun_pajak: freezed == tahun_pajak
          ? _value.tahun_pajak
          : tahun_pajak // ignore: cast_nullable_to_non_nullable
              as String?,
      kelurahan: freezed == kelurahan
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatan: freezed == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String?,
      kode_kab_kota: freezed == kode_kab_kota
          ? _value.kode_kab_kota
          : kode_kab_kota // ignore: cast_nullable_to_non_nullable
              as String?,
      kab_kota: freezed == kab_kota
          ? _value.kab_kota
          : kab_kota // ignore: cast_nullable_to_non_nullable
              as String?,
      luas_tanah: freezed == luas_tanah
          ? _value.luas_tanah
          : luas_tanah // ignore: cast_nullable_to_non_nullable
              as String?,
      luas_gedung: freezed == luas_gedung
          ? _value.luas_gedung
          : luas_gedung // ignore: cast_nullable_to_non_nullable
              as String?,
      kode_iuran: freezed == kode_iuran
          ? _value.kode_iuran
          : kode_iuran // ignore: cast_nullable_to_non_nullable
              as String?,
      kode_program: freezed == kode_program
          ? _value.kode_program
          : kode_program // ignore: cast_nullable_to_non_nullable
              as String?,
      jkk: freezed == jkk
          ? _value.jkk
          : jkk // ignore: cast_nullable_to_non_nullable
              as int?,
      jkm: freezed == jkm
          ? _value.jkm
          : jkm // ignore: cast_nullable_to_non_nullable
              as int?,
      jht: freezed == jht
          ? _value.jht
          : jht // ignore: cast_nullable_to_non_nullable
              as int?,
      jpk: freezed == jpk
          ? _value.jpk
          : jpk // ignore: cast_nullable_to_non_nullable
              as int?,
      jpn: freezed == jpn
          ? _value.jpn
          : jpn // ignore: cast_nullable_to_non_nullable
              as int?,
      npp: freezed == npp
          ? _value.npp
          : npp // ignore: cast_nullable_to_non_nullable
              as String?,
      kode_divisi: freezed == kode_divisi
          ? _value.kode_divisi
          : kode_divisi // ignore: cast_nullable_to_non_nullable
              as String?,
      kantor_cabang: freezed == kantor_cabang
          ? _value.kantor_cabang
          : kantor_cabang // ignore: cast_nullable_to_non_nullable
              as String?,
      tgl_efektif: freezed == tgl_efektif
          ? _value.tgl_efektif
          : tgl_efektif // ignore: cast_nullable_to_non_nullable
              as String?,
      tgl_expired: freezed == tgl_expired
          ? _value.tgl_expired
          : tgl_expired // ignore: cast_nullable_to_non_nullable
              as String?,
      no_registrasi: freezed == no_registrasi
          ? _value.no_registrasi
          : no_registrasi // ignore: cast_nullable_to_non_nullable
              as String?,
      transaksi: freezed == transaksi
          ? _value.transaksi
          : transaksi // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal_registrasi: freezed == tanggal_registrasi
          ? _value.tanggal_registrasi
          : tanggal_registrasi // ignore: cast_nullable_to_non_nullable
              as String?,
      nomor_identitas: freezed == nomor_identitas
          ? _value.nomor_identitas
          : nomor_identitas // ignore: cast_nullable_to_non_nullable
              as String?,
      nomor_rangka: freezed == nomor_rangka
          ? _value.nomor_rangka
          : nomor_rangka // ignore: cast_nullable_to_non_nullable
              as String?,
      nomor_mesin: freezed == nomor_mesin
          ? _value.nomor_mesin
          : nomor_mesin // ignore: cast_nullable_to_non_nullable
              as String?,
      nomor_polisi: freezed == nomor_polisi
          ? _value.nomor_polisi
          : nomor_polisi // ignore: cast_nullable_to_non_nullable
              as String?,
      milik_kenama: freezed == milik_kenama
          ? _value.milik_kenama
          : milik_kenama // ignore: cast_nullable_to_non_nullable
              as String?,
      merek_kb: freezed == merek_kb
          ? _value.merek_kb
          : merek_kb // ignore: cast_nullable_to_non_nullable
              as String?,
      model_kb: freezed == model_kb
          ? _value.model_kb
          : model_kb // ignore: cast_nullable_to_non_nullable
              as String?,
      tahun_buatan: freezed == tahun_buatan
          ? _value.tahun_buatan
          : tahun_buatan // ignore: cast_nullable_to_non_nullable
              as String?,
      tgl_akhir_pajak_baru: freezed == tgl_akhir_pajak_baru
          ? _value.tgl_akhir_pajak_baru
          : tgl_akhir_pajak_baru // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_pokok_bbn: freezed == biaya_pokok_bbn
          ? _value.biaya_pokok_bbn
          : biaya_pokok_bbn // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_pokok_swd: freezed == biaya_pokok_swd
          ? _value.biaya_pokok_swd
          : biaya_pokok_swd // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_pokok_pkb: freezed == biaya_pokok_pkb
          ? _value.biaya_pokok_pkb
          : biaya_pokok_pkb // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_denda_swd: freezed == biaya_denda_swd
          ? _value.biaya_denda_swd
          : biaya_denda_swd // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_denda_bbn: freezed == biaya_denda_bbn
          ? _value.biaya_denda_bbn
          : biaya_denda_bbn // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_denda_pkb: freezed == biaya_denda_pkb
          ? _value.biaya_denda_pkb
          : biaya_denda_pkb // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_admin_stnk: freezed == biaya_admin_stnk
          ? _value.biaya_admin_stnk
          : biaya_admin_stnk // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_admin_tnkb: freezed == biaya_admin_tnkb
          ? _value.biaya_admin_tnkb
          : biaya_admin_tnkb // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_parkir_pokok: freezed == biaya_parkir_pokok
          ? _value.biaya_parkir_pokok
          : biaya_parkir_pokok // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_pajak_progresif: freezed == biaya_pajak_progresif
          ? _value.biaya_pajak_progresif
          : biaya_pajak_progresif // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobProductDescriptionImplCopyWith<$Res>
    implements $PpobProductDescriptionCopyWith<$Res> {
  factory _$$PpobProductDescriptionImplCopyWith(
          _$PpobProductDescriptionImpl value,
          $Res Function(_$PpobProductDescriptionImpl) then) =
      __$$PpobProductDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? tarif,
      String? alamat,
      String? jatuh_temp,
      int? daya,
      int? lembar_tagihan,
      String? item_name,
      String? jumlah_peserta,
      String? no_rangka,
      String? no_pol,
      String? tenor,
      String? tahun_pajak,
      String? kelurahan,
      String? kecamatan,
      String? kode_kab_kota,
      String? kab_kota,
      String? luas_tanah,
      String? luas_gedung,
      String? kode_iuran,
      String? kode_program,
      int? jkk,
      int? jkm,
      int? jht,
      int? jpk,
      int? jpn,
      String? npp,
      String? kode_divisi,
      String? kantor_cabang,
      String? tgl_efektif,
      String? tgl_expired,
      String? no_registrasi,
      String? transaksi,
      String? tanggal_registrasi,
      String? nomor_identitas,
      String? nomor_rangka,
      String? nomor_mesin,
      String? nomor_polisi,
      String? milik_kenama,
      String? merek_kb,
      String? model_kb,
      String? tahun_buatan,
      String? tgl_akhir_pajak_baru,
      String? biaya_pokok_bbn,
      String? biaya_pokok_swd,
      String? biaya_pokok_pkb,
      String? biaya_denda_swd,
      String? biaya_denda_bbn,
      String? biaya_denda_pkb,
      String? biaya_admin_stnk,
      String? biaya_admin_tnkb,
      String? biaya_parkir_pokok,
      String? biaya_pajak_progresif,
      String? detail});
}

/// @nodoc
class __$$PpobProductDescriptionImplCopyWithImpl<$Res>
    extends _$PpobProductDescriptionCopyWithImpl<$Res,
        _$PpobProductDescriptionImpl>
    implements _$$PpobProductDescriptionImplCopyWith<$Res> {
  __$$PpobProductDescriptionImplCopyWithImpl(
      _$PpobProductDescriptionImpl _value,
      $Res Function(_$PpobProductDescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobProductDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tarif = freezed,
    Object? alamat = freezed,
    Object? jatuh_temp = freezed,
    Object? daya = freezed,
    Object? lembar_tagihan = freezed,
    Object? item_name = freezed,
    Object? jumlah_peserta = freezed,
    Object? no_rangka = freezed,
    Object? no_pol = freezed,
    Object? tenor = freezed,
    Object? tahun_pajak = freezed,
    Object? kelurahan = freezed,
    Object? kecamatan = freezed,
    Object? kode_kab_kota = freezed,
    Object? kab_kota = freezed,
    Object? luas_tanah = freezed,
    Object? luas_gedung = freezed,
    Object? kode_iuran = freezed,
    Object? kode_program = freezed,
    Object? jkk = freezed,
    Object? jkm = freezed,
    Object? jht = freezed,
    Object? jpk = freezed,
    Object? jpn = freezed,
    Object? npp = freezed,
    Object? kode_divisi = freezed,
    Object? kantor_cabang = freezed,
    Object? tgl_efektif = freezed,
    Object? tgl_expired = freezed,
    Object? no_registrasi = freezed,
    Object? transaksi = freezed,
    Object? tanggal_registrasi = freezed,
    Object? nomor_identitas = freezed,
    Object? nomor_rangka = freezed,
    Object? nomor_mesin = freezed,
    Object? nomor_polisi = freezed,
    Object? milik_kenama = freezed,
    Object? merek_kb = freezed,
    Object? model_kb = freezed,
    Object? tahun_buatan = freezed,
    Object? tgl_akhir_pajak_baru = freezed,
    Object? biaya_pokok_bbn = freezed,
    Object? biaya_pokok_swd = freezed,
    Object? biaya_pokok_pkb = freezed,
    Object? biaya_denda_swd = freezed,
    Object? biaya_denda_bbn = freezed,
    Object? biaya_denda_pkb = freezed,
    Object? biaya_admin_stnk = freezed,
    Object? biaya_admin_tnkb = freezed,
    Object? biaya_parkir_pokok = freezed,
    Object? biaya_pajak_progresif = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$PpobProductDescriptionImpl(
      tarif: freezed == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      jatuh_temp: freezed == jatuh_temp
          ? _value.jatuh_temp
          : jatuh_temp // ignore: cast_nullable_to_non_nullable
              as String?,
      daya: freezed == daya
          ? _value.daya
          : daya // ignore: cast_nullable_to_non_nullable
              as int?,
      lembar_tagihan: freezed == lembar_tagihan
          ? _value.lembar_tagihan
          : lembar_tagihan // ignore: cast_nullable_to_non_nullable
              as int?,
      item_name: freezed == item_name
          ? _value.item_name
          : item_name // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah_peserta: freezed == jumlah_peserta
          ? _value.jumlah_peserta
          : jumlah_peserta // ignore: cast_nullable_to_non_nullable
              as String?,
      no_rangka: freezed == no_rangka
          ? _value.no_rangka
          : no_rangka // ignore: cast_nullable_to_non_nullable
              as String?,
      no_pol: freezed == no_pol
          ? _value.no_pol
          : no_pol // ignore: cast_nullable_to_non_nullable
              as String?,
      tenor: freezed == tenor
          ? _value.tenor
          : tenor // ignore: cast_nullable_to_non_nullable
              as String?,
      tahun_pajak: freezed == tahun_pajak
          ? _value.tahun_pajak
          : tahun_pajak // ignore: cast_nullable_to_non_nullable
              as String?,
      kelurahan: freezed == kelurahan
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatan: freezed == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String?,
      kode_kab_kota: freezed == kode_kab_kota
          ? _value.kode_kab_kota
          : kode_kab_kota // ignore: cast_nullable_to_non_nullable
              as String?,
      kab_kota: freezed == kab_kota
          ? _value.kab_kota
          : kab_kota // ignore: cast_nullable_to_non_nullable
              as String?,
      luas_tanah: freezed == luas_tanah
          ? _value.luas_tanah
          : luas_tanah // ignore: cast_nullable_to_non_nullable
              as String?,
      luas_gedung: freezed == luas_gedung
          ? _value.luas_gedung
          : luas_gedung // ignore: cast_nullable_to_non_nullable
              as String?,
      kode_iuran: freezed == kode_iuran
          ? _value.kode_iuran
          : kode_iuran // ignore: cast_nullable_to_non_nullable
              as String?,
      kode_program: freezed == kode_program
          ? _value.kode_program
          : kode_program // ignore: cast_nullable_to_non_nullable
              as String?,
      jkk: freezed == jkk
          ? _value.jkk
          : jkk // ignore: cast_nullable_to_non_nullable
              as int?,
      jkm: freezed == jkm
          ? _value.jkm
          : jkm // ignore: cast_nullable_to_non_nullable
              as int?,
      jht: freezed == jht
          ? _value.jht
          : jht // ignore: cast_nullable_to_non_nullable
              as int?,
      jpk: freezed == jpk
          ? _value.jpk
          : jpk // ignore: cast_nullable_to_non_nullable
              as int?,
      jpn: freezed == jpn
          ? _value.jpn
          : jpn // ignore: cast_nullable_to_non_nullable
              as int?,
      npp: freezed == npp
          ? _value.npp
          : npp // ignore: cast_nullable_to_non_nullable
              as String?,
      kode_divisi: freezed == kode_divisi
          ? _value.kode_divisi
          : kode_divisi // ignore: cast_nullable_to_non_nullable
              as String?,
      kantor_cabang: freezed == kantor_cabang
          ? _value.kantor_cabang
          : kantor_cabang // ignore: cast_nullable_to_non_nullable
              as String?,
      tgl_efektif: freezed == tgl_efektif
          ? _value.tgl_efektif
          : tgl_efektif // ignore: cast_nullable_to_non_nullable
              as String?,
      tgl_expired: freezed == tgl_expired
          ? _value.tgl_expired
          : tgl_expired // ignore: cast_nullable_to_non_nullable
              as String?,
      no_registrasi: freezed == no_registrasi
          ? _value.no_registrasi
          : no_registrasi // ignore: cast_nullable_to_non_nullable
              as String?,
      transaksi: freezed == transaksi
          ? _value.transaksi
          : transaksi // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal_registrasi: freezed == tanggal_registrasi
          ? _value.tanggal_registrasi
          : tanggal_registrasi // ignore: cast_nullable_to_non_nullable
              as String?,
      nomor_identitas: freezed == nomor_identitas
          ? _value.nomor_identitas
          : nomor_identitas // ignore: cast_nullable_to_non_nullable
              as String?,
      nomor_rangka: freezed == nomor_rangka
          ? _value.nomor_rangka
          : nomor_rangka // ignore: cast_nullable_to_non_nullable
              as String?,
      nomor_mesin: freezed == nomor_mesin
          ? _value.nomor_mesin
          : nomor_mesin // ignore: cast_nullable_to_non_nullable
              as String?,
      nomor_polisi: freezed == nomor_polisi
          ? _value.nomor_polisi
          : nomor_polisi // ignore: cast_nullable_to_non_nullable
              as String?,
      milik_kenama: freezed == milik_kenama
          ? _value.milik_kenama
          : milik_kenama // ignore: cast_nullable_to_non_nullable
              as String?,
      merek_kb: freezed == merek_kb
          ? _value.merek_kb
          : merek_kb // ignore: cast_nullable_to_non_nullable
              as String?,
      model_kb: freezed == model_kb
          ? _value.model_kb
          : model_kb // ignore: cast_nullable_to_non_nullable
              as String?,
      tahun_buatan: freezed == tahun_buatan
          ? _value.tahun_buatan
          : tahun_buatan // ignore: cast_nullable_to_non_nullable
              as String?,
      tgl_akhir_pajak_baru: freezed == tgl_akhir_pajak_baru
          ? _value.tgl_akhir_pajak_baru
          : tgl_akhir_pajak_baru // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_pokok_bbn: freezed == biaya_pokok_bbn
          ? _value.biaya_pokok_bbn
          : biaya_pokok_bbn // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_pokok_swd: freezed == biaya_pokok_swd
          ? _value.biaya_pokok_swd
          : biaya_pokok_swd // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_pokok_pkb: freezed == biaya_pokok_pkb
          ? _value.biaya_pokok_pkb
          : biaya_pokok_pkb // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_denda_swd: freezed == biaya_denda_swd
          ? _value.biaya_denda_swd
          : biaya_denda_swd // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_denda_bbn: freezed == biaya_denda_bbn
          ? _value.biaya_denda_bbn
          : biaya_denda_bbn // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_denda_pkb: freezed == biaya_denda_pkb
          ? _value.biaya_denda_pkb
          : biaya_denda_pkb // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_admin_stnk: freezed == biaya_admin_stnk
          ? _value.biaya_admin_stnk
          : biaya_admin_stnk // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_admin_tnkb: freezed == biaya_admin_tnkb
          ? _value.biaya_admin_tnkb
          : biaya_admin_tnkb // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_parkir_pokok: freezed == biaya_parkir_pokok
          ? _value.biaya_parkir_pokok
          : biaya_parkir_pokok // ignore: cast_nullable_to_non_nullable
              as String?,
      biaya_pajak_progresif: freezed == biaya_pajak_progresif
          ? _value.biaya_pajak_progresif
          : biaya_pajak_progresif // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobProductDescriptionImpl implements _PpobProductDescription {
  const _$PpobProductDescriptionImpl(
      {this.tarif,
      this.alamat,
      this.jatuh_temp,
      this.daya,
      this.lembar_tagihan,
      this.item_name,
      this.jumlah_peserta,
      this.no_rangka,
      this.no_pol,
      this.tenor,
      this.tahun_pajak,
      this.kelurahan,
      this.kecamatan,
      this.kode_kab_kota,
      this.kab_kota,
      this.luas_tanah,
      this.luas_gedung,
      this.kode_iuran,
      this.kode_program,
      this.jkk,
      this.jkm,
      this.jht,
      this.jpk,
      this.jpn,
      this.npp,
      this.kode_divisi,
      this.kantor_cabang,
      this.tgl_efektif,
      this.tgl_expired,
      this.no_registrasi,
      this.transaksi,
      this.tanggal_registrasi,
      this.nomor_identitas,
      this.nomor_rangka,
      this.nomor_mesin,
      this.nomor_polisi,
      this.milik_kenama,
      this.merek_kb,
      this.model_kb,
      this.tahun_buatan,
      this.tgl_akhir_pajak_baru,
      this.biaya_pokok_bbn,
      this.biaya_pokok_swd,
      this.biaya_pokok_pkb,
      this.biaya_denda_swd,
      this.biaya_denda_bbn,
      this.biaya_denda_pkb,
      this.biaya_admin_stnk,
      this.biaya_admin_tnkb,
      this.biaya_parkir_pokok,
      this.biaya_pajak_progresif,
      this.detail});

  factory _$PpobProductDescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobProductDescriptionImplFromJson(json);

  @override
  final String? tarif;
  @override
  final String? alamat;
  @override
  final String? jatuh_temp;
  @override
  final int? daya;
  @override
  final int? lembar_tagihan;
  @override
  final String? item_name;
  @override
  final String? jumlah_peserta;
  @override
  final String? no_rangka;
  @override
  final String? no_pol;
  @override
  final String? tenor;
  @override
  final String? tahun_pajak;
  @override
  final String? kelurahan;
  @override
  final String? kecamatan;
  @override
  final String? kode_kab_kota;
  @override
  final String? kab_kota;
  @override
  final String? luas_tanah;
  @override
  final String? luas_gedung;
  @override
  final String? kode_iuran;
  @override
  final String? kode_program;
  @override
  final int? jkk;
  @override
  final int? jkm;
  @override
  final int? jht;
  @override
  final int? jpk;
  @override
  final int? jpn;
  @override
  final String? npp;
  @override
  final String? kode_divisi;
  @override
  final String? kantor_cabang;
  @override
  final String? tgl_efektif;
  @override
  final String? tgl_expired;
  @override
  final String? no_registrasi;
  @override
  final String? transaksi;
  @override
  final String? tanggal_registrasi;
  @override
  final String? nomor_identitas;
  @override
  final String? nomor_rangka;
  @override
  final String? nomor_mesin;
  @override
  final String? nomor_polisi;
  @override
  final String? milik_kenama;
  @override
  final String? merek_kb;
  @override
  final String? model_kb;
  @override
  final String? tahun_buatan;
  @override
  final String? tgl_akhir_pajak_baru;
  @override
  final String? biaya_pokok_bbn;
  @override
  final String? biaya_pokok_swd;
  @override
  final String? biaya_pokok_pkb;
  @override
  final String? biaya_denda_swd;
  @override
  final String? biaya_denda_bbn;
  @override
  final String? biaya_denda_pkb;
  @override
  final String? biaya_admin_stnk;
  @override
  final String? biaya_admin_tnkb;
  @override
  final String? biaya_parkir_pokok;
  @override
  final String? biaya_pajak_progresif;
  @override
  final String? detail;

  @override
  String toString() {
    return 'PpobProductDescription(tarif: $tarif, alamat: $alamat, jatuh_temp: $jatuh_temp, daya: $daya, lembar_tagihan: $lembar_tagihan, item_name: $item_name, jumlah_peserta: $jumlah_peserta, no_rangka: $no_rangka, no_pol: $no_pol, tenor: $tenor, tahun_pajak: $tahun_pajak, kelurahan: $kelurahan, kecamatan: $kecamatan, kode_kab_kota: $kode_kab_kota, kab_kota: $kab_kota, luas_tanah: $luas_tanah, luas_gedung: $luas_gedung, kode_iuran: $kode_iuran, kode_program: $kode_program, jkk: $jkk, jkm: $jkm, jht: $jht, jpk: $jpk, jpn: $jpn, npp: $npp, kode_divisi: $kode_divisi, kantor_cabang: $kantor_cabang, tgl_efektif: $tgl_efektif, tgl_expired: $tgl_expired, no_registrasi: $no_registrasi, transaksi: $transaksi, tanggal_registrasi: $tanggal_registrasi, nomor_identitas: $nomor_identitas, nomor_rangka: $nomor_rangka, nomor_mesin: $nomor_mesin, nomor_polisi: $nomor_polisi, milik_kenama: $milik_kenama, merek_kb: $merek_kb, model_kb: $model_kb, tahun_buatan: $tahun_buatan, tgl_akhir_pajak_baru: $tgl_akhir_pajak_baru, biaya_pokok_bbn: $biaya_pokok_bbn, biaya_pokok_swd: $biaya_pokok_swd, biaya_pokok_pkb: $biaya_pokok_pkb, biaya_denda_swd: $biaya_denda_swd, biaya_denda_bbn: $biaya_denda_bbn, biaya_denda_pkb: $biaya_denda_pkb, biaya_admin_stnk: $biaya_admin_stnk, biaya_admin_tnkb: $biaya_admin_tnkb, biaya_parkir_pokok: $biaya_parkir_pokok, biaya_pajak_progresif: $biaya_pajak_progresif, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobProductDescriptionImpl &&
            (identical(other.tarif, tarif) || other.tarif == tarif) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.jatuh_temp, jatuh_temp) ||
                other.jatuh_temp == jatuh_temp) &&
            (identical(other.daya, daya) || other.daya == daya) &&
            (identical(other.lembar_tagihan, lembar_tagihan) ||
                other.lembar_tagihan == lembar_tagihan) &&
            (identical(other.item_name, item_name) ||
                other.item_name == item_name) &&
            (identical(other.jumlah_peserta, jumlah_peserta) ||
                other.jumlah_peserta == jumlah_peserta) &&
            (identical(other.no_rangka, no_rangka) ||
                other.no_rangka == no_rangka) &&
            (identical(other.no_pol, no_pol) || other.no_pol == no_pol) &&
            (identical(other.tenor, tenor) || other.tenor == tenor) &&
            (identical(other.tahun_pajak, tahun_pajak) ||
                other.tahun_pajak == tahun_pajak) &&
            (identical(other.kelurahan, kelurahan) ||
                other.kelurahan == kelurahan) &&
            (identical(other.kecamatan, kecamatan) ||
                other.kecamatan == kecamatan) &&
            (identical(other.kode_kab_kota, kode_kab_kota) ||
                other.kode_kab_kota == kode_kab_kota) &&
            (identical(other.kab_kota, kab_kota) ||
                other.kab_kota == kab_kota) &&
            (identical(other.luas_tanah, luas_tanah) ||
                other.luas_tanah == luas_tanah) &&
            (identical(other.luas_gedung, luas_gedung) ||
                other.luas_gedung == luas_gedung) &&
            (identical(other.kode_iuran, kode_iuran) ||
                other.kode_iuran == kode_iuran) &&
            (identical(other.kode_program, kode_program) ||
                other.kode_program == kode_program) &&
            (identical(other.jkk, jkk) || other.jkk == jkk) &&
            (identical(other.jkm, jkm) || other.jkm == jkm) &&
            (identical(other.jht, jht) || other.jht == jht) &&
            (identical(other.jpk, jpk) || other.jpk == jpk) &&
            (identical(other.jpn, jpn) || other.jpn == jpn) &&
            (identical(other.npp, npp) || other.npp == npp) &&
            (identical(other.kode_divisi, kode_divisi) ||
                other.kode_divisi == kode_divisi) &&
            (identical(other.kantor_cabang, kantor_cabang) ||
                other.kantor_cabang == kantor_cabang) &&
            (identical(other.tgl_efektif, tgl_efektif) ||
                other.tgl_efektif == tgl_efektif) &&
            (identical(other.tgl_expired, tgl_expired) ||
                other.tgl_expired == tgl_expired) &&
            (identical(other.no_registrasi, no_registrasi) ||
                other.no_registrasi == no_registrasi) &&
            (identical(other.transaksi, transaksi) ||
                other.transaksi == transaksi) &&
            (identical(other.tanggal_registrasi, tanggal_registrasi) ||
                other.tanggal_registrasi == tanggal_registrasi) &&
            (identical(other.nomor_identitas, nomor_identitas) ||
                other.nomor_identitas == nomor_identitas) &&
            (identical(other.nomor_rangka, nomor_rangka) ||
                other.nomor_rangka == nomor_rangka) &&
            (identical(other.nomor_mesin, nomor_mesin) ||
                other.nomor_mesin == nomor_mesin) &&
            (identical(other.nomor_polisi, nomor_polisi) ||
                other.nomor_polisi == nomor_polisi) &&
            (identical(other.milik_kenama, milik_kenama) ||
                other.milik_kenama == milik_kenama) &&
            (identical(other.merek_kb, merek_kb) ||
                other.merek_kb == merek_kb) &&
            (identical(other.model_kb, model_kb) ||
                other.model_kb == model_kb) &&
            (identical(other.tahun_buatan, tahun_buatan) ||
                other.tahun_buatan == tahun_buatan) &&
            (identical(other.tgl_akhir_pajak_baru, tgl_akhir_pajak_baru) ||
                other.tgl_akhir_pajak_baru == tgl_akhir_pajak_baru) &&
            (identical(other.biaya_pokok_bbn, biaya_pokok_bbn) ||
                other.biaya_pokok_bbn == biaya_pokok_bbn) &&
            (identical(other.biaya_pokok_swd, biaya_pokok_swd) ||
                other.biaya_pokok_swd == biaya_pokok_swd) &&
            (identical(other.biaya_pokok_pkb, biaya_pokok_pkb) ||
                other.biaya_pokok_pkb == biaya_pokok_pkb) &&
            (identical(other.biaya_denda_swd, biaya_denda_swd) ||
                other.biaya_denda_swd == biaya_denda_swd) &&
            (identical(other.biaya_denda_bbn, biaya_denda_bbn) ||
                other.biaya_denda_bbn == biaya_denda_bbn) &&
            (identical(other.biaya_denda_pkb, biaya_denda_pkb) ||
                other.biaya_denda_pkb == biaya_denda_pkb) &&
            (identical(other.biaya_admin_stnk, biaya_admin_stnk) ||
                other.biaya_admin_stnk == biaya_admin_stnk) &&
            (identical(other.biaya_admin_tnkb, biaya_admin_tnkb) ||
                other.biaya_admin_tnkb == biaya_admin_tnkb) &&
            (identical(other.biaya_parkir_pokok, biaya_parkir_pokok) ||
                other.biaya_parkir_pokok == biaya_parkir_pokok) &&
            (identical(other.biaya_pajak_progresif, biaya_pajak_progresif) ||
                other.biaya_pajak_progresif == biaya_pajak_progresif) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        tarif,
        alamat,
        jatuh_temp,
        daya,
        lembar_tagihan,
        item_name,
        jumlah_peserta,
        no_rangka,
        no_pol,
        tenor,
        tahun_pajak,
        kelurahan,
        kecamatan,
        kode_kab_kota,
        kab_kota,
        luas_tanah,
        luas_gedung,
        kode_iuran,
        kode_program,
        jkk,
        jkm,
        jht,
        jpk,
        jpn,
        npp,
        kode_divisi,
        kantor_cabang,
        tgl_efektif,
        tgl_expired,
        no_registrasi,
        transaksi,
        tanggal_registrasi,
        nomor_identitas,
        nomor_rangka,
        nomor_mesin,
        nomor_polisi,
        milik_kenama,
        merek_kb,
        model_kb,
        tahun_buatan,
        tgl_akhir_pajak_baru,
        biaya_pokok_bbn,
        biaya_pokok_swd,
        biaya_pokok_pkb,
        biaya_denda_swd,
        biaya_denda_bbn,
        biaya_denda_pkb,
        biaya_admin_stnk,
        biaya_admin_tnkb,
        biaya_parkir_pokok,
        biaya_pajak_progresif,
        detail
      ]);

  /// Create a copy of PpobProductDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobProductDescriptionImplCopyWith<_$PpobProductDescriptionImpl>
      get copyWith => __$$PpobProductDescriptionImplCopyWithImpl<
          _$PpobProductDescriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobProductDescriptionImplToJson(
      this,
    );
  }
}

abstract class _PpobProductDescription implements PpobProductDescription {
  const factory _PpobProductDescription(
      {final String? tarif,
      final String? alamat,
      final String? jatuh_temp,
      final int? daya,
      final int? lembar_tagihan,
      final String? item_name,
      final String? jumlah_peserta,
      final String? no_rangka,
      final String? no_pol,
      final String? tenor,
      final String? tahun_pajak,
      final String? kelurahan,
      final String? kecamatan,
      final String? kode_kab_kota,
      final String? kab_kota,
      final String? luas_tanah,
      final String? luas_gedung,
      final String? kode_iuran,
      final String? kode_program,
      final int? jkk,
      final int? jkm,
      final int? jht,
      final int? jpk,
      final int? jpn,
      final String? npp,
      final String? kode_divisi,
      final String? kantor_cabang,
      final String? tgl_efektif,
      final String? tgl_expired,
      final String? no_registrasi,
      final String? transaksi,
      final String? tanggal_registrasi,
      final String? nomor_identitas,
      final String? nomor_rangka,
      final String? nomor_mesin,
      final String? nomor_polisi,
      final String? milik_kenama,
      final String? merek_kb,
      final String? model_kb,
      final String? tahun_buatan,
      final String? tgl_akhir_pajak_baru,
      final String? biaya_pokok_bbn,
      final String? biaya_pokok_swd,
      final String? biaya_pokok_pkb,
      final String? biaya_denda_swd,
      final String? biaya_denda_bbn,
      final String? biaya_denda_pkb,
      final String? biaya_admin_stnk,
      final String? biaya_admin_tnkb,
      final String? biaya_parkir_pokok,
      final String? biaya_pajak_progresif,
      final String? detail}) = _$PpobProductDescriptionImpl;

  factory _PpobProductDescription.fromJson(Map<String, dynamic> json) =
      _$PpobProductDescriptionImpl.fromJson;

  @override
  String? get tarif;
  @override
  String? get alamat;
  @override
  String? get jatuh_temp;
  @override
  int? get daya;
  @override
  int? get lembar_tagihan;
  @override
  String? get item_name;
  @override
  String? get jumlah_peserta;
  @override
  String? get no_rangka;
  @override
  String? get no_pol;
  @override
  String? get tenor;
  @override
  String? get tahun_pajak;
  @override
  String? get kelurahan;
  @override
  String? get kecamatan;
  @override
  String? get kode_kab_kota;
  @override
  String? get kab_kota;
  @override
  String? get luas_tanah;
  @override
  String? get luas_gedung;
  @override
  String? get kode_iuran;
  @override
  String? get kode_program;
  @override
  int? get jkk;
  @override
  int? get jkm;
  @override
  int? get jht;
  @override
  int? get jpk;
  @override
  int? get jpn;
  @override
  String? get npp;
  @override
  String? get kode_divisi;
  @override
  String? get kantor_cabang;
  @override
  String? get tgl_efektif;
  @override
  String? get tgl_expired;
  @override
  String? get no_registrasi;
  @override
  String? get transaksi;
  @override
  String? get tanggal_registrasi;
  @override
  String? get nomor_identitas;
  @override
  String? get nomor_rangka;
  @override
  String? get nomor_mesin;
  @override
  String? get nomor_polisi;
  @override
  String? get milik_kenama;
  @override
  String? get merek_kb;
  @override
  String? get model_kb;
  @override
  String? get tahun_buatan;
  @override
  String? get tgl_akhir_pajak_baru;
  @override
  String? get biaya_pokok_bbn;
  @override
  String? get biaya_pokok_swd;
  @override
  String? get biaya_pokok_pkb;
  @override
  String? get biaya_denda_swd;
  @override
  String? get biaya_denda_bbn;
  @override
  String? get biaya_denda_pkb;
  @override
  String? get biaya_admin_stnk;
  @override
  String? get biaya_admin_tnkb;
  @override
  String? get biaya_parkir_pokok;
  @override
  String? get biaya_pajak_progresif;
  @override
  String? get detail;

  /// Create a copy of PpobProductDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobProductDescriptionImplCopyWith<_$PpobProductDescriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TotalFee _$TotalFeeFromJson(Map<String, dynamic> json) {
  return _TotalFee.fromJson(json);
}

/// @nodoc
mixin _$TotalFee {
  int? get amount => throw _privateConstructorUsedError;
  int? get feature_fee => throw _privateConstructorUsedError;
  bool? get is_feature_free => throw _privateConstructorUsedError;
  bool? get is_free => throw _privateConstructorUsedError;
  bool? get is_payment_channel_free => throw _privateConstructorUsedError;
  int? get payment_channel_fee => throw _privateConstructorUsedError;

  /// Serializes this TotalFee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TotalFee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TotalFeeCopyWith<TotalFee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalFeeCopyWith<$Res> {
  factory $TotalFeeCopyWith(TotalFee value, $Res Function(TotalFee) then) =
      _$TotalFeeCopyWithImpl<$Res, TotalFee>;
  @useResult
  $Res call(
      {int? amount,
      int? feature_fee,
      bool? is_feature_free,
      bool? is_free,
      bool? is_payment_channel_free,
      int? payment_channel_fee});
}

/// @nodoc
class _$TotalFeeCopyWithImpl<$Res, $Val extends TotalFee>
    implements $TotalFeeCopyWith<$Res> {
  _$TotalFeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TotalFee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? feature_fee = freezed,
    Object? is_feature_free = freezed,
    Object? is_free = freezed,
    Object? is_payment_channel_free = freezed,
    Object? payment_channel_fee = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      feature_fee: freezed == feature_fee
          ? _value.feature_fee
          : feature_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      is_feature_free: freezed == is_feature_free
          ? _value.is_feature_free
          : is_feature_free // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_free: freezed == is_free
          ? _value.is_free
          : is_free // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_payment_channel_free: freezed == is_payment_channel_free
          ? _value.is_payment_channel_free
          : is_payment_channel_free // ignore: cast_nullable_to_non_nullable
              as bool?,
      payment_channel_fee: freezed == payment_channel_fee
          ? _value.payment_channel_fee
          : payment_channel_fee // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalFeeImplCopyWith<$Res>
    implements $TotalFeeCopyWith<$Res> {
  factory _$$TotalFeeImplCopyWith(
          _$TotalFeeImpl value, $Res Function(_$TotalFeeImpl) then) =
      __$$TotalFeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? amount,
      int? feature_fee,
      bool? is_feature_free,
      bool? is_free,
      bool? is_payment_channel_free,
      int? payment_channel_fee});
}

/// @nodoc
class __$$TotalFeeImplCopyWithImpl<$Res>
    extends _$TotalFeeCopyWithImpl<$Res, _$TotalFeeImpl>
    implements _$$TotalFeeImplCopyWith<$Res> {
  __$$TotalFeeImplCopyWithImpl(
      _$TotalFeeImpl _value, $Res Function(_$TotalFeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TotalFee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? feature_fee = freezed,
    Object? is_feature_free = freezed,
    Object? is_free = freezed,
    Object? is_payment_channel_free = freezed,
    Object? payment_channel_fee = freezed,
  }) {
    return _then(_$TotalFeeImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      feature_fee: freezed == feature_fee
          ? _value.feature_fee
          : feature_fee // ignore: cast_nullable_to_non_nullable
              as int?,
      is_feature_free: freezed == is_feature_free
          ? _value.is_feature_free
          : is_feature_free // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_free: freezed == is_free
          ? _value.is_free
          : is_free // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_payment_channel_free: freezed == is_payment_channel_free
          ? _value.is_payment_channel_free
          : is_payment_channel_free // ignore: cast_nullable_to_non_nullable
              as bool?,
      payment_channel_fee: freezed == payment_channel_fee
          ? _value.payment_channel_fee
          : payment_channel_fee // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalFeeImpl implements _TotalFee {
  const _$TotalFeeImpl(
      {this.amount,
      this.feature_fee,
      this.is_feature_free,
      this.is_free,
      this.is_payment_channel_free,
      this.payment_channel_fee});

  factory _$TotalFeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalFeeImplFromJson(json);

  @override
  final int? amount;
  @override
  final int? feature_fee;
  @override
  final bool? is_feature_free;
  @override
  final bool? is_free;
  @override
  final bool? is_payment_channel_free;
  @override
  final int? payment_channel_fee;

  @override
  String toString() {
    return 'TotalFee(amount: $amount, feature_fee: $feature_fee, is_feature_free: $is_feature_free, is_free: $is_free, is_payment_channel_free: $is_payment_channel_free, payment_channel_fee: $payment_channel_fee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalFeeImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.feature_fee, feature_fee) ||
                other.feature_fee == feature_fee) &&
            (identical(other.is_feature_free, is_feature_free) ||
                other.is_feature_free == is_feature_free) &&
            (identical(other.is_free, is_free) || other.is_free == is_free) &&
            (identical(
                    other.is_payment_channel_free, is_payment_channel_free) ||
                other.is_payment_channel_free == is_payment_channel_free) &&
            (identical(other.payment_channel_fee, payment_channel_fee) ||
                other.payment_channel_fee == payment_channel_fee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, feature_fee,
      is_feature_free, is_free, is_payment_channel_free, payment_channel_fee);

  /// Create a copy of TotalFee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalFeeImplCopyWith<_$TotalFeeImpl> get copyWith =>
      __$$TotalFeeImplCopyWithImpl<_$TotalFeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalFeeImplToJson(
      this,
    );
  }
}

abstract class _TotalFee implements TotalFee {
  const factory _TotalFee(
      {final int? amount,
      final int? feature_fee,
      final bool? is_feature_free,
      final bool? is_free,
      final bool? is_payment_channel_free,
      final int? payment_channel_fee}) = _$TotalFeeImpl;

  factory _TotalFee.fromJson(Map<String, dynamic> json) =
      _$TotalFeeImpl.fromJson;

  @override
  int? get amount;
  @override
  int? get feature_fee;
  @override
  bool? get is_feature_free;
  @override
  bool? get is_free;
  @override
  bool? get is_payment_channel_free;
  @override
  int? get payment_channel_fee;

  /// Create a copy of TotalFee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalFeeImplCopyWith<_$TotalFeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Formatted _$FormattedFromJson(Map<String, dynamic> json) {
  return _Formatted.fromJson(json);
}

/// @nodoc
mixin _$Formatted {
  String? get price => throw _privateConstructorUsedError;
  String? get total_amount => throw _privateConstructorUsedError;
  String? get total_fee => throw _privateConstructorUsedError;
  String? get unique_code => throw _privateConstructorUsedError;

  /// Serializes this Formatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Formatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormattedCopyWith<Formatted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormattedCopyWith<$Res> {
  factory $FormattedCopyWith(Formatted value, $Res Function(Formatted) then) =
      _$FormattedCopyWithImpl<$Res, Formatted>;
  @useResult
  $Res call(
      {String? price,
      String? total_amount,
      String? total_fee,
      String? unique_code});
}

/// @nodoc
class _$FormattedCopyWithImpl<$Res, $Val extends Formatted>
    implements $FormattedCopyWith<$Res> {
  _$FormattedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Formatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? total_amount = freezed,
    Object? total_fee = freezed,
    Object? unique_code = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      total_amount: freezed == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as String?,
      total_fee: freezed == total_fee
          ? _value.total_fee
          : total_fee // ignore: cast_nullable_to_non_nullable
              as String?,
      unique_code: freezed == unique_code
          ? _value.unique_code
          : unique_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormattedImplCopyWith<$Res>
    implements $FormattedCopyWith<$Res> {
  factory _$$FormattedImplCopyWith(
          _$FormattedImpl value, $Res Function(_$FormattedImpl) then) =
      __$$FormattedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? price,
      String? total_amount,
      String? total_fee,
      String? unique_code});
}

/// @nodoc
class __$$FormattedImplCopyWithImpl<$Res>
    extends _$FormattedCopyWithImpl<$Res, _$FormattedImpl>
    implements _$$FormattedImplCopyWith<$Res> {
  __$$FormattedImplCopyWithImpl(
      _$FormattedImpl _value, $Res Function(_$FormattedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Formatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? total_amount = freezed,
    Object? total_fee = freezed,
    Object? unique_code = freezed,
  }) {
    return _then(_$FormattedImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      total_amount: freezed == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as String?,
      total_fee: freezed == total_fee
          ? _value.total_fee
          : total_fee // ignore: cast_nullable_to_non_nullable
              as String?,
      unique_code: freezed == unique_code
          ? _value.unique_code
          : unique_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormattedImpl implements _Formatted {
  const _$FormattedImpl(
      {this.price, this.total_amount, this.total_fee, this.unique_code});

  factory _$FormattedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormattedImplFromJson(json);

  @override
  final String? price;
  @override
  final String? total_amount;
  @override
  final String? total_fee;
  @override
  final String? unique_code;

  @override
  String toString() {
    return 'Formatted(price: $price, total_amount: $total_amount, total_fee: $total_fee, unique_code: $unique_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormattedImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            (identical(other.total_fee, total_fee) ||
                other.total_fee == total_fee) &&
            (identical(other.unique_code, unique_code) ||
                other.unique_code == unique_code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, price, total_amount, total_fee, unique_code);

  /// Create a copy of Formatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormattedImplCopyWith<_$FormattedImpl> get copyWith =>
      __$$FormattedImplCopyWithImpl<_$FormattedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormattedImplToJson(
      this,
    );
  }
}

abstract class _Formatted implements Formatted {
  const factory _Formatted(
      {final String? price,
      final String? total_amount,
      final String? total_fee,
      final String? unique_code}) = _$FormattedImpl;

  factory _Formatted.fromJson(Map<String, dynamic> json) =
      _$FormattedImpl.fromJson;

  @override
  String? get price;
  @override
  String? get total_amount;
  @override
  String? get total_fee;
  @override
  String? get unique_code;

  /// Create a copy of Formatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormattedImplCopyWith<_$FormattedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rate _$RateFromJson(Map<String, dynamic> json) {
  return _Rate.fromJson(json);
}

/// @nodoc
mixin _$Rate {
  Formatted? get formatted => throw _privateConstructorUsedError;
  int? get fx_rate => throw _privateConstructorUsedError;

  /// Serializes this Rate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateCopyWith<Rate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateCopyWith<$Res> {
  factory $RateCopyWith(Rate value, $Res Function(Rate) then) =
      _$RateCopyWithImpl<$Res, Rate>;
  @useResult
  $Res call({Formatted? formatted, int? fx_rate});

  $FormattedCopyWith<$Res>? get formatted;
}

/// @nodoc
class _$RateCopyWithImpl<$Res, $Val extends Rate>
    implements $RateCopyWith<$Res> {
  _$RateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = freezed,
    Object? fx_rate = freezed,
  }) {
    return _then(_value.copyWith(
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted?,
      fx_rate: freezed == fx_rate
          ? _value.fx_rate
          : fx_rate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Rate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormattedCopyWith<$Res>? get formatted {
    if (_value.formatted == null) {
      return null;
    }

    return $FormattedCopyWith<$Res>(_value.formatted!, (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RateImplCopyWith<$Res> implements $RateCopyWith<$Res> {
  factory _$$RateImplCopyWith(
          _$RateImpl value, $Res Function(_$RateImpl) then) =
      __$$RateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Formatted? formatted, int? fx_rate});

  @override
  $FormattedCopyWith<$Res>? get formatted;
}

/// @nodoc
class __$$RateImplCopyWithImpl<$Res>
    extends _$RateCopyWithImpl<$Res, _$RateImpl>
    implements _$$RateImplCopyWith<$Res> {
  __$$RateImplCopyWithImpl(_$RateImpl _value, $Res Function(_$RateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = freezed,
    Object? fx_rate = freezed,
  }) {
    return _then(_$RateImpl(
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted?,
      fx_rate: freezed == fx_rate
          ? _value.fx_rate
          : fx_rate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RateImpl implements _Rate {
  const _$RateImpl({this.formatted, this.fx_rate});

  factory _$RateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateImplFromJson(json);

  @override
  final Formatted? formatted;
  @override
  final int? fx_rate;

  @override
  String toString() {
    return 'Rate(formatted: $formatted, fx_rate: $fx_rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateImpl &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.fx_rate, fx_rate) || other.fx_rate == fx_rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, formatted, fx_rate);

  /// Create a copy of Rate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateImplCopyWith<_$RateImpl> get copyWith =>
      __$$RateImplCopyWithImpl<_$RateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RateImplToJson(
      this,
    );
  }
}

abstract class _Rate implements Rate {
  const factory _Rate({final Formatted? formatted, final int? fx_rate}) =
      _$RateImpl;

  factory _Rate.fromJson(Map<String, dynamic> json) = _$RateImpl.fromJson;

  @override
  Formatted? get formatted;
  @override
  int? get fx_rate;

  /// Create a copy of Rate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateImplCopyWith<_$RateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
