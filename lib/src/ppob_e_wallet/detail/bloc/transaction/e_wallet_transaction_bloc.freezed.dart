// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_wallet_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EWalletTransactionEvent {
  String get packageId => throw _privateConstructorUsedError;
  String get denominationId => throw _privateConstructorUsedError;
  String get productType => throw _privateConstructorUsedError;
  String get costumerNumber => throw _privateConstructorUsedError;
  String get paymentCode => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  String? get isBiometricValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String packageId,
            String denominationId,
            String productType,
            String costumerNumber,
            String paymentCode,
            String? pin,
            String? isBiometricValid)
        transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String packageId,
            String denominationId,
            String productType,
            String costumerNumber,
            String paymentCode,
            String? pin,
            String? isBiometricValid)?
        transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String packageId,
            String denominationId,
            String productType,
            String costumerNumber,
            String paymentCode,
            String? pin,
            String? isBiometricValid)?
        transaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Transaction value) transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Transaction value)? transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Transaction value)? transaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of EWalletTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EWalletTransactionEventCopyWith<EWalletTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EWalletTransactionEventCopyWith<$Res> {
  factory $EWalletTransactionEventCopyWith(EWalletTransactionEvent value,
          $Res Function(EWalletTransactionEvent) then) =
      _$EWalletTransactionEventCopyWithImpl<$Res, EWalletTransactionEvent>;
  @useResult
  $Res call(
      {String packageId,
      String denominationId,
      String productType,
      String costumerNumber,
      String paymentCode,
      String? pin,
      String? isBiometricValid});
}

/// @nodoc
class _$EWalletTransactionEventCopyWithImpl<$Res,
        $Val extends EWalletTransactionEvent>
    implements $EWalletTransactionEventCopyWith<$Res> {
  _$EWalletTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EWalletTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = null,
    Object? denominationId = null,
    Object? productType = null,
    Object? costumerNumber = null,
    Object? paymentCode = null,
    Object? pin = freezed,
    Object? isBiometricValid = freezed,
  }) {
    return _then(_value.copyWith(
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String,
      denominationId: null == denominationId
          ? _value.denominationId
          : denominationId // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      costumerNumber: null == costumerNumber
          ? _value.costumerNumber
          : costumerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      isBiometricValid: freezed == isBiometricValid
          ? _value.isBiometricValid
          : isBiometricValid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $EWalletTransactionEventCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String packageId,
      String denominationId,
      String productType,
      String costumerNumber,
      String paymentCode,
      String? pin,
      String? isBiometricValid});
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$EWalletTransactionEventCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of EWalletTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = null,
    Object? denominationId = null,
    Object? productType = null,
    Object? costumerNumber = null,
    Object? paymentCode = null,
    Object? pin = freezed,
    Object? isBiometricValid = freezed,
  }) {
    return _then(_$TransactionImpl(
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String,
      denominationId: null == denominationId
          ? _value.denominationId
          : denominationId // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      costumerNumber: null == costumerNumber
          ? _value.costumerNumber
          : costumerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      isBiometricValid: freezed == isBiometricValid
          ? _value.isBiometricValid
          : isBiometricValid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl(
      {required this.packageId,
      required this.denominationId,
      required this.productType,
      required this.costumerNumber,
      required this.paymentCode,
      this.pin,
      this.isBiometricValid});

  @override
  final String packageId;
  @override
  final String denominationId;
  @override
  final String productType;
  @override
  final String costumerNumber;
  @override
  final String paymentCode;
  @override
  final String? pin;
  @override
  final String? isBiometricValid;

  @override
  String toString() {
    return 'EWalletTransactionEvent.transaction(packageId: $packageId, denominationId: $denominationId, productType: $productType, costumerNumber: $costumerNumber, paymentCode: $paymentCode, pin: $pin, isBiometricValid: $isBiometricValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.denominationId, denominationId) ||
                other.denominationId == denominationId) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.costumerNumber, costumerNumber) ||
                other.costumerNumber == costumerNumber) &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.isBiometricValid, isBiometricValid) ||
                other.isBiometricValid == isBiometricValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, packageId, denominationId,
      productType, costumerNumber, paymentCode, pin, isBiometricValid);

  /// Create a copy of EWalletTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String packageId,
            String denominationId,
            String productType,
            String costumerNumber,
            String paymentCode,
            String? pin,
            String? isBiometricValid)
        transaction,
  }) {
    return transaction(packageId, denominationId, productType, costumerNumber,
        paymentCode, pin, isBiometricValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String packageId,
            String denominationId,
            String productType,
            String costumerNumber,
            String paymentCode,
            String? pin,
            String? isBiometricValid)?
        transaction,
  }) {
    return transaction?.call(packageId, denominationId, productType,
        costumerNumber, paymentCode, pin, isBiometricValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String packageId,
            String denominationId,
            String productType,
            String costumerNumber,
            String paymentCode,
            String? pin,
            String? isBiometricValid)?
        transaction,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(packageId, denominationId, productType, costumerNumber,
          paymentCode, pin, isBiometricValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Transaction value) transaction,
  }) {
    return transaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Transaction value)? transaction,
  }) {
    return transaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Transaction value)? transaction,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(this);
    }
    return orElse();
  }
}

abstract class _Transaction implements EWalletTransactionEvent {
  const factory _Transaction(
      {required final String packageId,
      required final String denominationId,
      required final String productType,
      required final String costumerNumber,
      required final String paymentCode,
      final String? pin,
      final String? isBiometricValid}) = _$TransactionImpl;

  @override
  String get packageId;
  @override
  String get denominationId;
  @override
  String get productType;
  @override
  String get costumerNumber;
  @override
  String get paymentCode;
  @override
  String? get pin;
  @override
  String? get isBiometricValid;

  /// Create a copy of EWalletTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EWalletTransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PpobTransactionResponseModel data)
        transactionSuccess,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobTransactionResponseModel data)? transactionSuccess,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobTransactionResponseModel data)? transactionSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TransactionSuccess value)? transactionSuccess,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EWalletTransactionStateCopyWith<$Res> {
  factory $EWalletTransactionStateCopyWith(EWalletTransactionState value,
          $Res Function(EWalletTransactionState) then) =
      _$EWalletTransactionStateCopyWithImpl<$Res, EWalletTransactionState>;
}

/// @nodoc
class _$EWalletTransactionStateCopyWithImpl<$Res,
        $Val extends EWalletTransactionState>
    implements $EWalletTransactionStateCopyWith<$Res> {
  _$EWalletTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EWalletTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EWalletTransactionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EWalletTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EWalletTransactionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PpobTransactionResponseModel data)
        transactionSuccess,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobTransactionResponseModel data)? transactionSuccess,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobTransactionResponseModel data)? transactionSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TransactionSuccess value)? transactionSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EWalletTransactionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$EWalletTransactionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of EWalletTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'EWalletTransactionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PpobTransactionResponseModel data)
        transactionSuccess,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobTransactionResponseModel data)? transactionSuccess,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobTransactionResponseModel data)? transactionSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TransactionSuccess value)? transactionSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EWalletTransactionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$TransactionSuccessImplCopyWith<$Res> {
  factory _$$TransactionSuccessImplCopyWith(_$TransactionSuccessImpl value,
          $Res Function(_$TransactionSuccessImpl) then) =
      __$$TransactionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PpobTransactionResponseModel data});

  $PpobTransactionResponseModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$TransactionSuccessImplCopyWithImpl<$Res>
    extends _$EWalletTransactionStateCopyWithImpl<$Res,
        _$TransactionSuccessImpl>
    implements _$$TransactionSuccessImplCopyWith<$Res> {
  __$$TransactionSuccessImplCopyWithImpl(_$TransactionSuccessImpl _value,
      $Res Function(_$TransactionSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of EWalletTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TransactionSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PpobTransactionResponseModel,
    ));
  }

  /// Create a copy of EWalletTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobTransactionResponseModelCopyWith<$Res> get data {
    return $PpobTransactionResponseModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$TransactionSuccessImpl implements _TransactionSuccess {
  const _$TransactionSuccessImpl(this.data);

  @override
  final PpobTransactionResponseModel data;

  @override
  String toString() {
    return 'EWalletTransactionState.transactionSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of EWalletTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionSuccessImplCopyWith<_$TransactionSuccessImpl> get copyWith =>
      __$$TransactionSuccessImplCopyWithImpl<_$TransactionSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PpobTransactionResponseModel data)
        transactionSuccess,
    required TResult Function(String message) failed,
  }) {
    return transactionSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobTransactionResponseModel data)? transactionSuccess,
    TResult? Function(String message)? failed,
  }) {
    return transactionSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobTransactionResponseModel data)? transactionSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (transactionSuccess != null) {
      return transactionSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return transactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TransactionSuccess value)? transactionSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return transactionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (transactionSuccess != null) {
      return transactionSuccess(this);
    }
    return orElse();
  }
}

abstract class _TransactionSuccess implements EWalletTransactionState {
  const factory _TransactionSuccess(final PpobTransactionResponseModel data) =
      _$TransactionSuccessImpl;

  PpobTransactionResponseModel get data;

  /// Create a copy of EWalletTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionSuccessImplCopyWith<_$TransactionSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$EWalletTransactionStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EWalletTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EWalletTransactionState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of EWalletTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PpobTransactionResponseModel data)
        transactionSuccess,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobTransactionResponseModel data)? transactionSuccess,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobTransactionResponseModel data)? transactionSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_TransactionSuccess value) transactionSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_TransactionSuccess value)? transactionSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_TransactionSuccess value)? transactionSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements EWalletTransactionState {
  const factory _Failed(final String message) = _$FailedImpl;

  String get message;

  /// Create a copy of EWalletTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
