// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_transaction_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailTransactionResponseModel _$DetailTransactionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DetailTransactionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DetailTransactionResponseModel {
  DetailTransactionData? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  String? get statusCode => throw _privateConstructorUsedError;

  /// Serializes this DetailTransactionResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailTransactionResponseModelCopyWith<DetailTransactionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTransactionResponseModelCopyWith<$Res> {
  factory $DetailTransactionResponseModelCopyWith(
          DetailTransactionResponseModel value,
          $Res Function(DetailTransactionResponseModel) then) =
      _$DetailTransactionResponseModelCopyWithImpl<$Res,
          DetailTransactionResponseModel>;
  @useResult
  $Res call(
      {DetailTransactionData? data,
      String? message,
      @JsonKey(name: 'status_code') String? statusCode});

  $DetailTransactionDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DetailTransactionResponseModelCopyWithImpl<$Res,
        $Val extends DetailTransactionResponseModel>
    implements $DetailTransactionResponseModelCopyWith<$Res> {
  _$DetailTransactionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailTransactionData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of DetailTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailTransactionDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DetailTransactionDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailTransactionResponseModelImplCopyWith<$Res>
    implements $DetailTransactionResponseModelCopyWith<$Res> {
  factory _$$DetailTransactionResponseModelImplCopyWith(
          _$DetailTransactionResponseModelImpl value,
          $Res Function(_$DetailTransactionResponseModelImpl) then) =
      __$$DetailTransactionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DetailTransactionData? data,
      String? message,
      @JsonKey(name: 'status_code') String? statusCode});

  @override
  $DetailTransactionDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DetailTransactionResponseModelImplCopyWithImpl<$Res>
    extends _$DetailTransactionResponseModelCopyWithImpl<$Res,
        _$DetailTransactionResponseModelImpl>
    implements _$$DetailTransactionResponseModelImplCopyWith<$Res> {
  __$$DetailTransactionResponseModelImplCopyWithImpl(
      _$DetailTransactionResponseModelImpl _value,
      $Res Function(_$DetailTransactionResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$DetailTransactionResponseModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailTransactionData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailTransactionResponseModelImpl
    implements _DetailTransactionResponseModel {
  const _$DetailTransactionResponseModelImpl(
      {required this.data,
      required this.message,
      @JsonKey(name: 'status_code') required this.statusCode});

  factory _$DetailTransactionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DetailTransactionResponseModelImplFromJson(json);

  @override
  final DetailTransactionData? data;
  @override
  final String? message;
  @override
  @JsonKey(name: 'status_code')
  final String? statusCode;

  @override
  String toString() {
    return 'DetailTransactionResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransactionResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of DetailTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTransactionResponseModelImplCopyWith<
          _$DetailTransactionResponseModelImpl>
      get copyWith => __$$DetailTransactionResponseModelImplCopyWithImpl<
          _$DetailTransactionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTransactionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DetailTransactionResponseModel
    implements DetailTransactionResponseModel {
  const factory _DetailTransactionResponseModel(
          {required final DetailTransactionData? data,
          required final String? message,
          @JsonKey(name: 'status_code') required final String? statusCode}) =
      _$DetailTransactionResponseModelImpl;

  factory _DetailTransactionResponseModel.fromJson(Map<String, dynamic> json) =
      _$DetailTransactionResponseModelImpl.fromJson;

  @override
  DetailTransactionData? get data;
  @override
  String? get message;
  @override
  @JsonKey(name: 'status_code')
  String? get statusCode;

  /// Create a copy of DetailTransactionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailTransactionResponseModelImplCopyWith<
          _$DetailTransactionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DetailTransactionData _$DetailTransactionDataFromJson(
    Map<String, dynamic> json) {
  return _DetailTransactionData.fromJson(json);
}

/// @nodoc
mixin _$DetailTransactionData {
  @JsonKey(name: 'boundary_type')
  String? get boundaryType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'expired_at')
  int? get expiredAt => throw _privateConstructorUsedError;
  Formatted? get formatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_at')
  int? get paidAt => throw _privateConstructorUsedError;
  PaymentChannel? get paymentChannel => throw _privateConstructorUsedError;
  PpobProduct? get ppobProduct => throw _privateConstructorUsedError;
  Rate? get rate => throw _privateConstructorUsedError;
  List<Recipient>? get recepients => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_transaction')
  String? get statusTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_status_transaction')
  String? get subStatusTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  int? get totalAmount => throw _privateConstructorUsedError;
  TotalFee? get totalFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  String? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_ref_id')
  String? get transactionRefId => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_title')
  String? get transactionTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_type')
  String? get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'unique_code')
  int? get uniqueCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  int? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this DetailTransactionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailTransactionDataCopyWith<DetailTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTransactionDataCopyWith<$Res> {
  factory $DetailTransactionDataCopyWith(DetailTransactionData value,
          $Res Function(DetailTransactionData) then) =
      _$DetailTransactionDataCopyWithImpl<$Res, DetailTransactionData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'boundary_type') String? boundaryType,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'expired_at') int? expiredAt,
      Formatted? formatted,
      @JsonKey(name: 'paid_at') int? paidAt,
      PaymentChannel? paymentChannel,
      PpobProduct? ppobProduct,
      Rate? rate,
      List<Recipient>? recepients,
      @JsonKey(name: 'status_transaction') String? statusTransaction,
      @JsonKey(name: 'sub_status_transaction') String? subStatusTransaction,
      @JsonKey(name: 'total_amount') int? totalAmount,
      TotalFee? totalFee,
      @JsonKey(name: 'transaction_id') String? transactionId,
      @JsonKey(name: 'transaction_ref_id') String? transactionRefId,
      @JsonKey(name: 'transaction_title') String? transactionTitle,
      @JsonKey(name: 'transaction_type') String? transactionType,
      @JsonKey(name: 'unique_code') int? uniqueCode,
      @JsonKey(name: 'updated_at') int? updatedAt});

  $FormattedCopyWith<$Res>? get formatted;
  $PaymentChannelCopyWith<$Res>? get paymentChannel;
  $PpobProductCopyWith<$Res>? get ppobProduct;
  $RateCopyWith<$Res>? get rate;
  $TotalFeeCopyWith<$Res>? get totalFee;
}

/// @nodoc
class _$DetailTransactionDataCopyWithImpl<$Res,
        $Val extends DetailTransactionData>
    implements $DetailTransactionDataCopyWith<$Res> {
  _$DetailTransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boundaryType = freezed,
    Object? createdAt = freezed,
    Object? expiredAt = freezed,
    Object? formatted = freezed,
    Object? paidAt = freezed,
    Object? paymentChannel = freezed,
    Object? ppobProduct = freezed,
    Object? rate = freezed,
    Object? recepients = freezed,
    Object? statusTransaction = freezed,
    Object? subStatusTransaction = freezed,
    Object? totalAmount = freezed,
    Object? totalFee = freezed,
    Object? transactionId = freezed,
    Object? transactionRefId = freezed,
    Object? transactionTitle = freezed,
    Object? transactionType = freezed,
    Object? uniqueCode = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      boundaryType: freezed == boundaryType
          ? _value.boundaryType
          : boundaryType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentChannel: freezed == paymentChannel
          ? _value.paymentChannel
          : paymentChannel // ignore: cast_nullable_to_non_nullable
              as PaymentChannel?,
      ppobProduct: freezed == ppobProduct
          ? _value.ppobProduct
          : ppobProduct // ignore: cast_nullable_to_non_nullable
              as PpobProduct?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Rate?,
      recepients: freezed == recepients
          ? _value.recepients
          : recepients // ignore: cast_nullable_to_non_nullable
              as List<Recipient>?,
      statusTransaction: freezed == statusTransaction
          ? _value.statusTransaction
          : statusTransaction // ignore: cast_nullable_to_non_nullable
              as String?,
      subStatusTransaction: freezed == subStatusTransaction
          ? _value.subStatusTransaction
          : subStatusTransaction // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFee: freezed == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as TotalFee?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionRefId: freezed == transactionRefId
          ? _value.transactionRefId
          : transactionRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionTitle: freezed == transactionTitle
          ? _value.transactionTitle
          : transactionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      uniqueCode: freezed == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of DetailTransactionData
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

  /// Create a copy of DetailTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentChannelCopyWith<$Res>? get paymentChannel {
    if (_value.paymentChannel == null) {
      return null;
    }

    return $PaymentChannelCopyWith<$Res>(_value.paymentChannel!, (value) {
      return _then(_value.copyWith(paymentChannel: value) as $Val);
    });
  }

  /// Create a copy of DetailTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobProductCopyWith<$Res>? get ppobProduct {
    if (_value.ppobProduct == null) {
      return null;
    }

    return $PpobProductCopyWith<$Res>(_value.ppobProduct!, (value) {
      return _then(_value.copyWith(ppobProduct: value) as $Val);
    });
  }

  /// Create a copy of DetailTransactionData
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

  /// Create a copy of DetailTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalFeeCopyWith<$Res>? get totalFee {
    if (_value.totalFee == null) {
      return null;
    }

    return $TotalFeeCopyWith<$Res>(_value.totalFee!, (value) {
      return _then(_value.copyWith(totalFee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailTransactionDataImplCopyWith<$Res>
    implements $DetailTransactionDataCopyWith<$Res> {
  factory _$$DetailTransactionDataImplCopyWith(
          _$DetailTransactionDataImpl value,
          $Res Function(_$DetailTransactionDataImpl) then) =
      __$$DetailTransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'boundary_type') String? boundaryType,
      @JsonKey(name: 'created_at') int? createdAt,
      @JsonKey(name: 'expired_at') int? expiredAt,
      Formatted? formatted,
      @JsonKey(name: 'paid_at') int? paidAt,
      PaymentChannel? paymentChannel,
      PpobProduct? ppobProduct,
      Rate? rate,
      List<Recipient>? recepients,
      @JsonKey(name: 'status_transaction') String? statusTransaction,
      @JsonKey(name: 'sub_status_transaction') String? subStatusTransaction,
      @JsonKey(name: 'total_amount') int? totalAmount,
      TotalFee? totalFee,
      @JsonKey(name: 'transaction_id') String? transactionId,
      @JsonKey(name: 'transaction_ref_id') String? transactionRefId,
      @JsonKey(name: 'transaction_title') String? transactionTitle,
      @JsonKey(name: 'transaction_type') String? transactionType,
      @JsonKey(name: 'unique_code') int? uniqueCode,
      @JsonKey(name: 'updated_at') int? updatedAt});

  @override
  $FormattedCopyWith<$Res>? get formatted;
  @override
  $PaymentChannelCopyWith<$Res>? get paymentChannel;
  @override
  $PpobProductCopyWith<$Res>? get ppobProduct;
  @override
  $RateCopyWith<$Res>? get rate;
  @override
  $TotalFeeCopyWith<$Res>? get totalFee;
}

/// @nodoc
class __$$DetailTransactionDataImplCopyWithImpl<$Res>
    extends _$DetailTransactionDataCopyWithImpl<$Res,
        _$DetailTransactionDataImpl>
    implements _$$DetailTransactionDataImplCopyWith<$Res> {
  __$$DetailTransactionDataImplCopyWithImpl(_$DetailTransactionDataImpl _value,
      $Res Function(_$DetailTransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boundaryType = freezed,
    Object? createdAt = freezed,
    Object? expiredAt = freezed,
    Object? formatted = freezed,
    Object? paidAt = freezed,
    Object? paymentChannel = freezed,
    Object? ppobProduct = freezed,
    Object? rate = freezed,
    Object? recepients = freezed,
    Object? statusTransaction = freezed,
    Object? subStatusTransaction = freezed,
    Object? totalAmount = freezed,
    Object? totalFee = freezed,
    Object? transactionId = freezed,
    Object? transactionRefId = freezed,
    Object? transactionTitle = freezed,
    Object? transactionType = freezed,
    Object? uniqueCode = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DetailTransactionDataImpl(
      boundaryType: freezed == boundaryType
          ? _value.boundaryType
          : boundaryType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted?,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentChannel: freezed == paymentChannel
          ? _value.paymentChannel
          : paymentChannel // ignore: cast_nullable_to_non_nullable
              as PaymentChannel?,
      ppobProduct: freezed == ppobProduct
          ? _value.ppobProduct
          : ppobProduct // ignore: cast_nullable_to_non_nullable
              as PpobProduct?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Rate?,
      recepients: freezed == recepients
          ? _value._recepients
          : recepients // ignore: cast_nullable_to_non_nullable
              as List<Recipient>?,
      statusTransaction: freezed == statusTransaction
          ? _value.statusTransaction
          : statusTransaction // ignore: cast_nullable_to_non_nullable
              as String?,
      subStatusTransaction: freezed == subStatusTransaction
          ? _value.subStatusTransaction
          : subStatusTransaction // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFee: freezed == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as TotalFee?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionRefId: freezed == transactionRefId
          ? _value.transactionRefId
          : transactionRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionTitle: freezed == transactionTitle
          ? _value.transactionTitle
          : transactionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      uniqueCode: freezed == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailTransactionDataImpl implements _DetailTransactionData {
  const _$DetailTransactionDataImpl(
      {@JsonKey(name: 'boundary_type') required this.boundaryType,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'expired_at') required this.expiredAt,
      required this.formatted,
      @JsonKey(name: 'paid_at') required this.paidAt,
      required this.paymentChannel,
      required this.ppobProduct,
      required this.rate,
      required final List<Recipient>? recepients,
      @JsonKey(name: 'status_transaction') required this.statusTransaction,
      @JsonKey(name: 'sub_status_transaction')
      required this.subStatusTransaction,
      @JsonKey(name: 'total_amount') required this.totalAmount,
      required this.totalFee,
      @JsonKey(name: 'transaction_id') required this.transactionId,
      @JsonKey(name: 'transaction_ref_id') required this.transactionRefId,
      @JsonKey(name: 'transaction_title') required this.transactionTitle,
      @JsonKey(name: 'transaction_type') required this.transactionType,
      @JsonKey(name: 'unique_code') required this.uniqueCode,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _recepients = recepients;

  factory _$DetailTransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailTransactionDataImplFromJson(json);

  @override
  @JsonKey(name: 'boundary_type')
  final String? boundaryType;
  @override
  @JsonKey(name: 'created_at')
  final int? createdAt;
  @override
  @JsonKey(name: 'expired_at')
  final int? expiredAt;
  @override
  final Formatted? formatted;
  @override
  @JsonKey(name: 'paid_at')
  final int? paidAt;
  @override
  final PaymentChannel? paymentChannel;
  @override
  final PpobProduct? ppobProduct;
  @override
  final Rate? rate;
  final List<Recipient>? _recepients;
  @override
  List<Recipient>? get recepients {
    final value = _recepients;
    if (value == null) return null;
    if (_recepients is EqualUnmodifiableListView) return _recepients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'status_transaction')
  final String? statusTransaction;
  @override
  @JsonKey(name: 'sub_status_transaction')
  final String? subStatusTransaction;
  @override
  @JsonKey(name: 'total_amount')
  final int? totalAmount;
  @override
  final TotalFee? totalFee;
  @override
  @JsonKey(name: 'transaction_id')
  final String? transactionId;
  @override
  @JsonKey(name: 'transaction_ref_id')
  final String? transactionRefId;
  @override
  @JsonKey(name: 'transaction_title')
  final String? transactionTitle;
  @override
  @JsonKey(name: 'transaction_type')
  final String? transactionType;
  @override
  @JsonKey(name: 'unique_code')
  final int? uniqueCode;
  @override
  @JsonKey(name: 'updated_at')
  final int? updatedAt;

  @override
  String toString() {
    return 'DetailTransactionData(boundaryType: $boundaryType, createdAt: $createdAt, expiredAt: $expiredAt, formatted: $formatted, paidAt: $paidAt, paymentChannel: $paymentChannel, ppobProduct: $ppobProduct, rate: $rate, recepients: $recepients, statusTransaction: $statusTransaction, subStatusTransaction: $subStatusTransaction, totalAmount: $totalAmount, totalFee: $totalFee, transactionId: $transactionId, transactionRefId: $transactionRefId, transactionTitle: $transactionTitle, transactionType: $transactionType, uniqueCode: $uniqueCode, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransactionDataImpl &&
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
                .equals(other._recepients, _recepients) &&
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
        const DeepCollectionEquality().hash(_recepients),
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

  /// Create a copy of DetailTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTransactionDataImplCopyWith<_$DetailTransactionDataImpl>
      get copyWith => __$$DetailTransactionDataImplCopyWithImpl<
          _$DetailTransactionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTransactionDataImplToJson(
      this,
    );
  }
}

abstract class _DetailTransactionData implements DetailTransactionData {
  const factory _DetailTransactionData(
      {@JsonKey(name: 'boundary_type') required final String? boundaryType,
      @JsonKey(name: 'created_at') required final int? createdAt,
      @JsonKey(name: 'expired_at') required final int? expiredAt,
      required final Formatted? formatted,
      @JsonKey(name: 'paid_at') required final int? paidAt,
      required final PaymentChannel? paymentChannel,
      required final PpobProduct? ppobProduct,
      required final Rate? rate,
      required final List<Recipient>? recepients,
      @JsonKey(name: 'status_transaction')
      required final String? statusTransaction,
      @JsonKey(name: 'sub_status_transaction')
      required final String? subStatusTransaction,
      @JsonKey(name: 'total_amount') required final int? totalAmount,
      required final TotalFee? totalFee,
      @JsonKey(name: 'transaction_id') required final String? transactionId,
      @JsonKey(name: 'transaction_ref_id')
      required final String? transactionRefId,
      @JsonKey(name: 'transaction_title')
      required final String? transactionTitle,
      @JsonKey(name: 'transaction_type') required final String? transactionType,
      @JsonKey(name: 'unique_code') required final int? uniqueCode,
      @JsonKey(name: 'updated_at')
      required final int? updatedAt}) = _$DetailTransactionDataImpl;

  factory _DetailTransactionData.fromJson(Map<String, dynamic> json) =
      _$DetailTransactionDataImpl.fromJson;

  @override
  @JsonKey(name: 'boundary_type')
  String? get boundaryType;
  @override
  @JsonKey(name: 'created_at')
  int? get createdAt;
  @override
  @JsonKey(name: 'expired_at')
  int? get expiredAt;
  @override
  Formatted? get formatted;
  @override
  @JsonKey(name: 'paid_at')
  int? get paidAt;
  @override
  PaymentChannel? get paymentChannel;
  @override
  PpobProduct? get ppobProduct;
  @override
  Rate? get rate;
  @override
  List<Recipient>? get recepients;
  @override
  @JsonKey(name: 'status_transaction')
  String? get statusTransaction;
  @override
  @JsonKey(name: 'sub_status_transaction')
  String? get subStatusTransaction;
  @override
  @JsonKey(name: 'total_amount')
  int? get totalAmount;
  @override
  TotalFee? get totalFee;
  @override
  @JsonKey(name: 'transaction_id')
  String? get transactionId;
  @override
  @JsonKey(name: 'transaction_ref_id')
  String? get transactionRefId;
  @override
  @JsonKey(name: 'transaction_title')
  String? get transactionTitle;
  @override
  @JsonKey(name: 'transaction_type')
  String? get transactionType;
  @override
  @JsonKey(name: 'unique_code')
  int? get uniqueCode;
  @override
  @JsonKey(name: 'updated_at')
  int? get updatedAt;

  /// Create a copy of DetailTransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailTransactionDataImplCopyWith<_$DetailTransactionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Formatted _$FormattedFromJson(Map<String, dynamic> json) {
  return _Formatted.fromJson(json);
}

/// @nodoc
mixin _$Formatted {
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  String? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_fee')
  String? get totalFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'unique_code')
  String? get uniqueCode => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'total_amount') String? totalAmount,
      @JsonKey(name: 'total_fee') String? totalFee,
      @JsonKey(name: 'unique_code') String? uniqueCode});
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
    Object? totalAmount = freezed,
    Object? totalFee = freezed,
    Object? uniqueCode = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFee: freezed == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String?,
      uniqueCode: freezed == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'total_amount') String? totalAmount,
      @JsonKey(name: 'total_fee') String? totalFee,
      @JsonKey(name: 'unique_code') String? uniqueCode});
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
    Object? totalAmount = freezed,
    Object? totalFee = freezed,
    Object? uniqueCode = freezed,
  }) {
    return _then(_$FormattedImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFee: freezed == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String?,
      uniqueCode: freezed == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormattedImpl implements _Formatted {
  const _$FormattedImpl(
      {required this.price,
      @JsonKey(name: 'total_amount') required this.totalAmount,
      @JsonKey(name: 'total_fee') required this.totalFee,
      @JsonKey(name: 'unique_code') required this.uniqueCode});

  factory _$FormattedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormattedImplFromJson(json);

  @override
  final String? price;
  @override
  @JsonKey(name: 'total_amount')
  final String? totalAmount;
  @override
  @JsonKey(name: 'total_fee')
  final String? totalFee;
  @override
  @JsonKey(name: 'unique_code')
  final String? uniqueCode;

  @override
  String toString() {
    return 'Formatted(price: $price, totalAmount: $totalAmount, totalFee: $totalFee, uniqueCode: $uniqueCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormattedImpl &&
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
          {required final String? price,
          @JsonKey(name: 'total_amount') required final String? totalAmount,
          @JsonKey(name: 'total_fee') required final String? totalFee,
          @JsonKey(name: 'unique_code') required final String? uniqueCode}) =
      _$FormattedImpl;

  factory _Formatted.fromJson(Map<String, dynamic> json) =
      _$FormattedImpl.fromJson;

  @override
  String? get price;
  @override
  @JsonKey(name: 'total_amount')
  String? get totalAmount;
  @override
  @JsonKey(name: 'total_fee')
  String? get totalFee;
  @override
  @JsonKey(name: 'unique_code')
  String? get uniqueCode;

  /// Create a copy of Formatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormattedImplCopyWith<_$FormattedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentChannel _$PaymentChannelFromJson(Map<String, dynamic> json) {
  return _PaymentChannel.fromJson(json);
}

/// @nodoc
mixin _$PaymentChannel {
  @JsonKey(name: 'currency_type')
  String? get currencyType => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_code')
  String? get payCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_content')
  String? get qrContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_image')
  String? get qrImage => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'currency_type') String? currencyType,
      String? method,
      String? name,
      @JsonKey(name: 'pay_code') String? payCode,
      @JsonKey(name: 'qr_content') String? qrContent,
      @JsonKey(name: 'qr_image') String? qrImage});
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
    Object? currencyType = freezed,
    Object? method = freezed,
    Object? name = freezed,
    Object? payCode = freezed,
    Object? qrContent = freezed,
    Object? qrImage = freezed,
  }) {
    return _then(_value.copyWith(
      currencyType: freezed == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      payCode: freezed == payCode
          ? _value.payCode
          : payCode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrContent: freezed == qrContent
          ? _value.qrContent
          : qrContent // ignore: cast_nullable_to_non_nullable
              as String?,
      qrImage: freezed == qrImage
          ? _value.qrImage
          : qrImage // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'currency_type') String? currencyType,
      String? method,
      String? name,
      @JsonKey(name: 'pay_code') String? payCode,
      @JsonKey(name: 'qr_content') String? qrContent,
      @JsonKey(name: 'qr_image') String? qrImage});
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
    Object? currencyType = freezed,
    Object? method = freezed,
    Object? name = freezed,
    Object? payCode = freezed,
    Object? qrContent = freezed,
    Object? qrImage = freezed,
  }) {
    return _then(_$PaymentChannelImpl(
      currencyType: freezed == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      payCode: freezed == payCode
          ? _value.payCode
          : payCode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrContent: freezed == qrContent
          ? _value.qrContent
          : qrContent // ignore: cast_nullable_to_non_nullable
              as String?,
      qrImage: freezed == qrImage
          ? _value.qrImage
          : qrImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentChannelImpl implements _PaymentChannel {
  const _$PaymentChannelImpl(
      {@JsonKey(name: 'currency_type') required this.currencyType,
      required this.method,
      required this.name,
      @JsonKey(name: 'pay_code') required this.payCode,
      @JsonKey(name: 'qr_content') required this.qrContent,
      @JsonKey(name: 'qr_image') required this.qrImage});

  factory _$PaymentChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentChannelImplFromJson(json);

  @override
  @JsonKey(name: 'currency_type')
  final String? currencyType;
  @override
  final String? method;
  @override
  final String? name;
  @override
  @JsonKey(name: 'pay_code')
  final String? payCode;
  @override
  @JsonKey(name: 'qr_content')
  final String? qrContent;
  @override
  @JsonKey(name: 'qr_image')
  final String? qrImage;

  @override
  String toString() {
    return 'PaymentChannel(currencyType: $currencyType, method: $method, name: $name, payCode: $payCode, qrContent: $qrContent, qrImage: $qrImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentChannelImpl &&
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
          {@JsonKey(name: 'currency_type') required final String? currencyType,
          required final String? method,
          required final String? name,
          @JsonKey(name: 'pay_code') required final String? payCode,
          @JsonKey(name: 'qr_content') required final String? qrContent,
          @JsonKey(name: 'qr_image') required final String? qrImage}) =
      _$PaymentChannelImpl;

  factory _PaymentChannel.fromJson(Map<String, dynamic> json) =
      _$PaymentChannelImpl.fromJson;

  @override
  @JsonKey(name: 'currency_type')
  String? get currencyType;
  @override
  String? get method;
  @override
  String? get name;
  @override
  @JsonKey(name: 'pay_code')
  String? get payCode;
  @override
  @JsonKey(name: 'qr_content')
  String? get qrContent;
  @override
  @JsonKey(name: 'qr_image')
  String? get qrImage;

  /// Create a copy of PaymentChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentChannelImplCopyWith<_$PaymentChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PpobProduct _$PpobProductFromJson(Map<String, dynamic> json) {
  return _PpobProduct.fromJson(json);
}

/// @nodoc
mixin _$PpobProduct {
  PpobProductDesc? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_number')
  String? get productNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'selling_price')
  int? get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'serial_number')
  String? get serialNumber => throw _privateConstructorUsedError;

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
      {PpobProductDesc? desc,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_number') String? productNumber,
      @JsonKey(name: 'selling_price') int? sellingPrice,
      @JsonKey(name: 'serial_number') String? serialNumber});

  $PpobProductDescCopyWith<$Res>? get desc;
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
    Object? desc = freezed,
    Object? productName = freezed,
    Object? productNumber = freezed,
    Object? sellingPrice = freezed,
    Object? serialNumber = freezed,
  }) {
    return _then(_value.copyWith(
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as PpobProductDesc?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productNumber: freezed == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobProductDescCopyWith<$Res>? get desc {
    if (_value.desc == null) {
      return null;
    }

    return $PpobProductDescCopyWith<$Res>(_value.desc!, (value) {
      return _then(_value.copyWith(desc: value) as $Val);
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
      {PpobProductDesc? desc,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_number') String? productNumber,
      @JsonKey(name: 'selling_price') int? sellingPrice,
      @JsonKey(name: 'serial_number') String? serialNumber});

  @override
  $PpobProductDescCopyWith<$Res>? get desc;
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
    Object? desc = freezed,
    Object? productName = freezed,
    Object? productNumber = freezed,
    Object? sellingPrice = freezed,
    Object? serialNumber = freezed,
  }) {
    return _then(_$PpobProductImpl(
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as PpobProductDesc?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productNumber: freezed == productNumber
          ? _value.productNumber
          : productNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobProductImpl implements _PpobProduct {
  const _$PpobProductImpl(
      {required this.desc,
      @JsonKey(name: 'product_name') required this.productName,
      @JsonKey(name: 'product_number') required this.productNumber,
      @JsonKey(name: 'selling_price') required this.sellingPrice,
      @JsonKey(name: 'serial_number') required this.serialNumber});

  factory _$PpobProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobProductImplFromJson(json);

  @override
  final PpobProductDesc? desc;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_number')
  final String? productNumber;
  @override
  @JsonKey(name: 'selling_price')
  final int? sellingPrice;
  @override
  @JsonKey(name: 'serial_number')
  final String? serialNumber;

  @override
  String toString() {
    return 'PpobProduct(desc: $desc, productName: $productName, productNumber: $productNumber, sellingPrice: $sellingPrice, serialNumber: $serialNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobProductImpl &&
            (identical(other.desc, desc) || other.desc == desc) &&
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
  int get hashCode => Object.hash(runtimeType, desc, productName, productNumber,
      sellingPrice, serialNumber);

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
      {required final PpobProductDesc? desc,
      @JsonKey(name: 'product_name') required final String? productName,
      @JsonKey(name: 'product_number') required final String? productNumber,
      @JsonKey(name: 'selling_price') required final int? sellingPrice,
      @JsonKey(name: 'serial_number')
      required final String? serialNumber}) = _$PpobProductImpl;

  factory _PpobProduct.fromJson(Map<String, dynamic> json) =
      _$PpobProductImpl.fromJson;

  @override
  PpobProductDesc? get desc;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_number')
  String? get productNumber;
  @override
  @JsonKey(name: 'selling_price')
  int? get sellingPrice;
  @override
  @JsonKey(name: 'serial_number')
  String? get serialNumber;

  /// Create a copy of PpobProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobProductImplCopyWith<_$PpobProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PpobProductDesc _$PpobProductDescFromJson(Map<String, dynamic> json) {
  return _PpobProductDesc.fromJson(json);
}

/// @nodoc
mixin _$PpobProductDesc {
  String? get alamat => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_admin_stnk')
  String? get biayaAdminStnk => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_admin_tnkb')
  String? get biayaAdminTnkb => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_denda_bbn')
  String? get biayaDendaBbn => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_denda_pkb')
  String? get biayaDendaPkb => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_denda_swd')
  String? get biayaDendaSwd => throw _privateConstructorUsedError;
  int? get daya => throw _privateConstructorUsedError;
  dynamic? get detail => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_name')
  String? get itemName => throw _privateConstructorUsedError;

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
      {String? alamat,
      @JsonKey(name: 'biaya_admin_stnk') String? biayaAdminStnk,
      @JsonKey(name: 'biaya_admin_tnkb') String? biayaAdminTnkb,
      @JsonKey(name: 'biaya_denda_bbn') String? biayaDendaBbn,
      @JsonKey(name: 'biaya_denda_pkb') String? biayaDendaPkb,
      @JsonKey(name: 'biaya_denda_swd') String? biayaDendaSwd,
      int? daya,
      dynamic? detail,
      @JsonKey(name: 'item_name') String? itemName});
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
    Object? alamat = freezed,
    Object? biayaAdminStnk = freezed,
    Object? biayaAdminTnkb = freezed,
    Object? biayaDendaBbn = freezed,
    Object? biayaDendaPkb = freezed,
    Object? biayaDendaSwd = freezed,
    Object? daya = freezed,
    Object? detail = freezed,
    Object? itemName = freezed,
  }) {
    return _then(_value.copyWith(
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      biayaAdminStnk: freezed == biayaAdminStnk
          ? _value.biayaAdminStnk
          : biayaAdminStnk // ignore: cast_nullable_to_non_nullable
              as String?,
      biayaAdminTnkb: freezed == biayaAdminTnkb
          ? _value.biayaAdminTnkb
          : biayaAdminTnkb // ignore: cast_nullable_to_non_nullable
              as String?,
      biayaDendaBbn: freezed == biayaDendaBbn
          ? _value.biayaDendaBbn
          : biayaDendaBbn // ignore: cast_nullable_to_non_nullable
              as String?,
      biayaDendaPkb: freezed == biayaDendaPkb
          ? _value.biayaDendaPkb
          : biayaDendaPkb // ignore: cast_nullable_to_non_nullable
              as String?,
      biayaDendaSwd: freezed == biayaDendaSwd
          ? _value.biayaDendaSwd
          : biayaDendaSwd // ignore: cast_nullable_to_non_nullable
              as String?,
      daya: freezed == daya
          ? _value.daya
          : daya // ignore: cast_nullable_to_non_nullable
              as int?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? alamat,
      @JsonKey(name: 'biaya_admin_stnk') String? biayaAdminStnk,
      @JsonKey(name: 'biaya_admin_tnkb') String? biayaAdminTnkb,
      @JsonKey(name: 'biaya_denda_bbn') String? biayaDendaBbn,
      @JsonKey(name: 'biaya_denda_pkb') String? biayaDendaPkb,
      @JsonKey(name: 'biaya_denda_swd') String? biayaDendaSwd,
      int? daya,
      dynamic? detail,
      @JsonKey(name: 'item_name') String? itemName});
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
    Object? alamat = freezed,
    Object? biayaAdminStnk = freezed,
    Object? biayaAdminTnkb = freezed,
    Object? biayaDendaBbn = freezed,
    Object? biayaDendaPkb = freezed,
    Object? biayaDendaSwd = freezed,
    Object? daya = freezed,
    Object? detail = freezed,
    Object? itemName = freezed,
  }) {
    return _then(_$PpobProductDescImpl(
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      biayaAdminStnk: freezed == biayaAdminStnk
          ? _value.biayaAdminStnk
          : biayaAdminStnk // ignore: cast_nullable_to_non_nullable
              as String?,
      biayaAdminTnkb: freezed == biayaAdminTnkb
          ? _value.biayaAdminTnkb
          : biayaAdminTnkb // ignore: cast_nullable_to_non_nullable
              as String?,
      biayaDendaBbn: freezed == biayaDendaBbn
          ? _value.biayaDendaBbn
          : biayaDendaBbn // ignore: cast_nullable_to_non_nullable
              as String?,
      biayaDendaPkb: freezed == biayaDendaPkb
          ? _value.biayaDendaPkb
          : biayaDendaPkb // ignore: cast_nullable_to_non_nullable
              as String?,
      biayaDendaSwd: freezed == biayaDendaSwd
          ? _value.biayaDendaSwd
          : biayaDendaSwd // ignore: cast_nullable_to_non_nullable
              as String?,
      daya: freezed == daya
          ? _value.daya
          : daya // ignore: cast_nullable_to_non_nullable
              as int?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      itemName: freezed == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobProductDescImpl implements _PpobProductDesc {
  const _$PpobProductDescImpl(
      {required this.alamat,
      @JsonKey(name: 'biaya_admin_stnk') required this.biayaAdminStnk,
      @JsonKey(name: 'biaya_admin_tnkb') required this.biayaAdminTnkb,
      @JsonKey(name: 'biaya_denda_bbn') required this.biayaDendaBbn,
      @JsonKey(name: 'biaya_denda_pkb') required this.biayaDendaPkb,
      @JsonKey(name: 'biaya_denda_swd') required this.biayaDendaSwd,
      required this.daya,
      this.detail,
      @JsonKey(name: 'item_name') required this.itemName});

  factory _$PpobProductDescImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobProductDescImplFromJson(json);

  @override
  final String? alamat;
  @override
  @JsonKey(name: 'biaya_admin_stnk')
  final String? biayaAdminStnk;
  @override
  @JsonKey(name: 'biaya_admin_tnkb')
  final String? biayaAdminTnkb;
  @override
  @JsonKey(name: 'biaya_denda_bbn')
  final String? biayaDendaBbn;
  @override
  @JsonKey(name: 'biaya_denda_pkb')
  final String? biayaDendaPkb;
  @override
  @JsonKey(name: 'biaya_denda_swd')
  final String? biayaDendaSwd;
  @override
  final int? daya;
  @override
  final dynamic? detail;
  @override
  @JsonKey(name: 'item_name')
  final String? itemName;

  @override
  String toString() {
    return 'PpobProductDesc(alamat: $alamat, biayaAdminStnk: $biayaAdminStnk, biayaAdminTnkb: $biayaAdminTnkb, biayaDendaBbn: $biayaDendaBbn, biayaDendaPkb: $biayaDendaPkb, biayaDendaSwd: $biayaDendaSwd, daya: $daya, detail: $detail, itemName: $itemName)';
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
            (identical(other.daya, daya) || other.daya == daya) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      alamat,
      biayaAdminStnk,
      biayaAdminTnkb,
      biayaDendaBbn,
      biayaDendaPkb,
      biayaDendaSwd,
      daya,
      const DeepCollectionEquality().hash(detail),
      itemName);

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
      {required final String? alamat,
      @JsonKey(name: 'biaya_admin_stnk') required final String? biayaAdminStnk,
      @JsonKey(name: 'biaya_admin_tnkb') required final String? biayaAdminTnkb,
      @JsonKey(name: 'biaya_denda_bbn') required final String? biayaDendaBbn,
      @JsonKey(name: 'biaya_denda_pkb') required final String? biayaDendaPkb,
      @JsonKey(name: 'biaya_denda_swd') required final String? biayaDendaSwd,
      required final int? daya,
      final dynamic? detail,
      @JsonKey(name: 'item_name')
      required final String? itemName}) = _$PpobProductDescImpl;

  factory _PpobProductDesc.fromJson(Map<String, dynamic> json) =
      _$PpobProductDescImpl.fromJson;

  @override
  String? get alamat;
  @override
  @JsonKey(name: 'biaya_admin_stnk')
  String? get biayaAdminStnk;
  @override
  @JsonKey(name: 'biaya_admin_tnkb')
  String? get biayaAdminTnkb;
  @override
  @JsonKey(name: 'biaya_denda_bbn')
  String? get biayaDendaBbn;
  @override
  @JsonKey(name: 'biaya_denda_pkb')
  String? get biayaDendaPkb;
  @override
  @JsonKey(name: 'biaya_denda_swd')
  String? get biayaDendaSwd;
  @override
  int? get daya;
  @override
  dynamic? get detail;
  @override
  @JsonKey(name: 'item_name')
  String? get itemName;

  /// Create a copy of PpobProductDesc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobProductDescImplCopyWith<_$PpobProductDescImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rate _$RateFromJson(Map<String, dynamic> json) {
  return _Rate.fromJson(json);
}

/// @nodoc
mixin _$Rate {
  Formatted? get formatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'fx_rate')
  int? get fxRate => throw _privateConstructorUsedError;

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
  $Res call({Formatted? formatted, @JsonKey(name: 'fx_rate') int? fxRate});

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
    Object? fxRate = freezed,
  }) {
    return _then(_value.copyWith(
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted?,
      fxRate: freezed == fxRate
          ? _value.fxRate
          : fxRate // ignore: cast_nullable_to_non_nullable
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
  $Res call({Formatted? formatted, @JsonKey(name: 'fx_rate') int? fxRate});

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
    Object? fxRate = freezed,
  }) {
    return _then(_$RateImpl(
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted?,
      fxRate: freezed == fxRate
          ? _value.fxRate
          : fxRate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RateImpl implements _Rate {
  const _$RateImpl(
      {required this.formatted,
      @JsonKey(name: 'fx_rate') required this.fxRate});

  factory _$RateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateImplFromJson(json);

  @override
  final Formatted? formatted;
  @override
  @JsonKey(name: 'fx_rate')
  final int? fxRate;

  @override
  String toString() {
    return 'Rate(formatted: $formatted, fxRate: $fxRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateImpl &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.fxRate, fxRate) || other.fxRate == fxRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, formatted, fxRate);

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
  const factory _Rate(
      {required final Formatted? formatted,
      @JsonKey(name: 'fx_rate') required final int? fxRate}) = _$RateImpl;

  factory _Rate.fromJson(Map<String, dynamic> json) = _$RateImpl.fromJson;

  @override
  Formatted? get formatted;
  @override
  @JsonKey(name: 'fx_rate')
  int? get fxRate;

  /// Create a copy of Rate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateImplCopyWith<_$RateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Recipient _$RecipientFromJson(Map<String, dynamic> json) {
  return _Recipient.fromJson(json);
}

/// @nodoc
mixin _$Recipient {
  @JsonKey(name: 'account_code')
  String? get accountCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_name')
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_code')
  String? get bankCode => throw _privateConstructorUsedError;
  int? get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_type')
  String? get currencyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'receive_currency_type')
  String? get receiveCurrencyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'receive_nominal')
  int? get receiveNominal => throw _privateConstructorUsedError;

  /// Serializes this Recipient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipientCopyWith<Recipient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientCopyWith<$Res> {
  factory $RecipientCopyWith(Recipient value, $Res Function(Recipient) then) =
      _$RecipientCopyWithImpl<$Res, Recipient>;
  @useResult
  $Res call(
      {@JsonKey(name: 'account_code') String? accountCode,
      @JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'bank_code') String? bankCode,
      int? nominal,
      @JsonKey(name: 'currency_type') String? currencyType,
      @JsonKey(name: 'receive_currency_type') String? receiveCurrencyType,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'receive_nominal') int? receiveNominal});
}

/// @nodoc
class _$RecipientCopyWithImpl<$Res, $Val extends Recipient>
    implements $RecipientCopyWith<$Res> {
  _$RecipientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountCode = freezed,
    Object? accountName = freezed,
    Object? bankCode = freezed,
    Object? nominal = freezed,
    Object? currencyType = freezed,
    Object? receiveCurrencyType = freezed,
    Object? note = freezed,
    Object? receiveNominal = freezed,
  }) {
    return _then(_value.copyWith(
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyType: freezed == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveCurrencyType: freezed == receiveCurrencyType
          ? _value.receiveCurrencyType
          : receiveCurrencyType // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveNominal: freezed == receiveNominal
          ? _value.receiveNominal
          : receiveNominal // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipientImplCopyWith<$Res>
    implements $RecipientCopyWith<$Res> {
  factory _$$RecipientImplCopyWith(
          _$RecipientImpl value, $Res Function(_$RecipientImpl) then) =
      __$$RecipientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'account_code') String? accountCode,
      @JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'bank_code') String? bankCode,
      int? nominal,
      @JsonKey(name: 'currency_type') String? currencyType,
      @JsonKey(name: 'receive_currency_type') String? receiveCurrencyType,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'receive_nominal') int? receiveNominal});
}

/// @nodoc
class __$$RecipientImplCopyWithImpl<$Res>
    extends _$RecipientCopyWithImpl<$Res, _$RecipientImpl>
    implements _$$RecipientImplCopyWith<$Res> {
  __$$RecipientImplCopyWithImpl(
      _$RecipientImpl _value, $Res Function(_$RecipientImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountCode = freezed,
    Object? accountName = freezed,
    Object? bankCode = freezed,
    Object? nominal = freezed,
    Object? currencyType = freezed,
    Object? receiveCurrencyType = freezed,
    Object? note = freezed,
    Object? receiveNominal = freezed,
  }) {
    return _then(_$RecipientImpl(
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyType: freezed == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveCurrencyType: freezed == receiveCurrencyType
          ? _value.receiveCurrencyType
          : receiveCurrencyType // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      receiveNominal: freezed == receiveNominal
          ? _value.receiveNominal
          : receiveNominal // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipientImpl implements _Recipient {
  const _$RecipientImpl(
      {@JsonKey(name: 'account_code') required this.accountCode,
      @JsonKey(name: 'account_name') required this.accountName,
      @JsonKey(name: 'bank_code') required this.bankCode,
      required this.nominal,
      @JsonKey(name: 'currency_type') required this.currencyType,
      @JsonKey(name: 'receive_currency_type') required this.receiveCurrencyType,
      @JsonKey(name: 'note') required this.note,
      @JsonKey(name: 'receive_nominal') required this.receiveNominal});

  factory _$RecipientImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipientImplFromJson(json);

  @override
  @JsonKey(name: 'account_code')
  final String? accountCode;
  @override
  @JsonKey(name: 'account_name')
  final String? accountName;
  @override
  @JsonKey(name: 'bank_code')
  final String? bankCode;
  @override
  final int? nominal;
  @override
  @JsonKey(name: 'currency_type')
  final String? currencyType;
  @override
  @JsonKey(name: 'receive_currency_type')
  final String? receiveCurrencyType;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'receive_nominal')
  final int? receiveNominal;

  @override
  String toString() {
    return 'Recipient(accountCode: $accountCode, accountName: $accountName, bankCode: $bankCode, nominal: $nominal, currencyType: $currencyType, receiveCurrencyType: $receiveCurrencyType, note: $note, receiveNominal: $receiveNominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipientImpl &&
            (identical(other.accountCode, accountCode) ||
                other.accountCode == accountCode) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.receiveCurrencyType, receiveCurrencyType) ||
                other.receiveCurrencyType == receiveCurrencyType) &&
            (identical(other.note, note) || other.note == note) &&
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
      nominal,
      currencyType,
      receiveCurrencyType,
      note,
      receiveNominal);

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientImplCopyWith<_$RecipientImpl> get copyWith =>
      __$$RecipientImplCopyWithImpl<_$RecipientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipientImplToJson(
      this,
    );
  }
}

abstract class _Recipient implements Recipient {
  const factory _Recipient(
      {@JsonKey(name: 'account_code') required final String? accountCode,
      @JsonKey(name: 'account_name') required final String? accountName,
      @JsonKey(name: 'bank_code') required final String? bankCode,
      required final int? nominal,
      @JsonKey(name: 'currency_type') required final String? currencyType,
      @JsonKey(name: 'receive_currency_type')
      required final String? receiveCurrencyType,
      @JsonKey(name: 'note') required final String? note,
      @JsonKey(name: 'receive_nominal')
      required final int? receiveNominal}) = _$RecipientImpl;

  factory _Recipient.fromJson(Map<String, dynamic> json) =
      _$RecipientImpl.fromJson;

  @override
  @JsonKey(name: 'account_code')
  String? get accountCode;
  @override
  @JsonKey(name: 'account_name')
  String? get accountName;
  @override
  @JsonKey(name: 'bank_code')
  String? get bankCode;
  @override
  int? get nominal;
  @override
  @JsonKey(name: 'currency_type')
  String? get currencyType;
  @override
  @JsonKey(name: 'receive_currency_type')
  String? get receiveCurrencyType;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'receive_nominal')
  int? get receiveNominal;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipientImplCopyWith<_$RecipientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalFee _$TotalFeeFromJson(Map<String, dynamic> json) {
  return _TotalFee.fromJson(json);
}

/// @nodoc
mixin _$TotalFee {
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_feature_free')
  bool? get isFeatureFree => throw _privateConstructorUsedError;
  bool? get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_channel_fee')
  int? get paymentChannelFee => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'is_feature_free') bool? isFeatureFree,
      bool? isFree,
      @JsonKey(name: 'payment_channel_fee') int? paymentChannelFee});
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
    Object? isFeatureFree = freezed,
    Object? isFree = freezed,
    Object? paymentChannelFee = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFeatureFree: freezed == isFeatureFree
          ? _value.isFeatureFree
          : isFeatureFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentChannelFee: freezed == paymentChannelFee
          ? _value.paymentChannelFee
          : paymentChannelFee // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'is_feature_free') bool? isFeatureFree,
      bool? isFree,
      @JsonKey(name: 'payment_channel_fee') int? paymentChannelFee});
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
    Object? isFeatureFree = freezed,
    Object? isFree = freezed,
    Object? paymentChannelFee = freezed,
  }) {
    return _then(_$TotalFeeImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFeatureFree: freezed == isFeatureFree
          ? _value.isFeatureFree
          : isFeatureFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFree: freezed == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentChannelFee: freezed == paymentChannelFee
          ? _value.paymentChannelFee
          : paymentChannelFee // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalFeeImpl implements _TotalFee {
  const _$TotalFeeImpl(
      {required this.amount,
      @JsonKey(name: 'is_feature_free') required this.isFeatureFree,
      required this.isFree,
      @JsonKey(name: 'payment_channel_fee') required this.paymentChannelFee});

  factory _$TotalFeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalFeeImplFromJson(json);

  @override
  final int? amount;
  @override
  @JsonKey(name: 'is_feature_free')
  final bool? isFeatureFree;
  @override
  final bool? isFree;
  @override
  @JsonKey(name: 'payment_channel_fee')
  final int? paymentChannelFee;

  @override
  String toString() {
    return 'TotalFee(amount: $amount, isFeatureFree: $isFeatureFree, isFree: $isFree, paymentChannelFee: $paymentChannelFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalFeeImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isFeatureFree, isFeatureFree) ||
                other.isFeatureFree == isFeatureFree) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.paymentChannelFee, paymentChannelFee) ||
                other.paymentChannelFee == paymentChannelFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, amount, isFeatureFree, isFree, paymentChannelFee);

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
      {required final int? amount,
      @JsonKey(name: 'is_feature_free') required final bool? isFeatureFree,
      required final bool? isFree,
      @JsonKey(name: 'payment_channel_fee')
      required final int? paymentChannelFee}) = _$TotalFeeImpl;

  factory _TotalFee.fromJson(Map<String, dynamic> json) =
      _$TotalFeeImpl.fromJson;

  @override
  int? get amount;
  @override
  @JsonKey(name: 'is_feature_free')
  bool? get isFeatureFree;
  @override
  bool? get isFree;
  @override
  @JsonKey(name: 'payment_channel_fee')
  int? get paymentChannelFee;

  /// Create a copy of TotalFee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TotalFeeImplCopyWith<_$TotalFeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
