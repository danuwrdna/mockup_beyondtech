// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remittance_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemittanceTransactionEvent {
  CountryDetailModel get senderCountryDetail =>
      throw _privateConstructorUsedError;
  CountryDetailModel get receiverCountryDetail =>
      throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get serviceOptionCode => throw _privateConstructorUsedError;
  String get serviceOptionRoutingCode => throw _privateConstructorUsedError;
  Map<String, dynamic> get fields => throw _privateConstructorUsedError;
  Map<String, TextEditingController> get fieldsControllers =>
      throw _privateConstructorUsedError;
  String get purposeOfTransaction => throw _privateConstructorUsedError;
  String get sourceOfFunds => throw _privateConstructorUsedError;
  String get paymentCode => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  String? get isBiometricValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode,
            Map<String, dynamic> fields,
            Map<String, TextEditingController> fieldsControllers,
            String purposeOfTransaction,
            String sourceOfFunds,
            String paymentCode,
            String? pin,
            String? isBiometricValid)
        remittanceTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode,
            Map<String, dynamic> fields,
            Map<String, TextEditingController> fieldsControllers,
            String purposeOfTransaction,
            String sourceOfFunds,
            String paymentCode,
            String? pin,
            String? isBiometricValid)?
        remittanceTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode,
            Map<String, dynamic> fields,
            Map<String, TextEditingController> fieldsControllers,
            String purposeOfTransaction,
            String sourceOfFunds,
            String paymentCode,
            String? pin,
            String? isBiometricValid)?
        remittanceTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemittanceTransaction value)
        remittanceTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemittanceTransaction value)? remittanceTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemittanceTransaction value)? remittanceTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RemittanceTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceTransactionEventCopyWith<RemittanceTransactionEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionEventCopyWith<$Res> {
  factory $RemittanceTransactionEventCopyWith(RemittanceTransactionEvent value,
          $Res Function(RemittanceTransactionEvent) then) =
      _$RemittanceTransactionEventCopyWithImpl<$Res,
          RemittanceTransactionEvent>;
  @useResult
  $Res call(
      {CountryDetailModel senderCountryDetail,
      CountryDetailModel receiverCountryDetail,
      int amount,
      String serviceOptionCode,
      String serviceOptionRoutingCode,
      Map<String, dynamic> fields,
      Map<String, TextEditingController> fieldsControllers,
      String purposeOfTransaction,
      String sourceOfFunds,
      String paymentCode,
      String? pin,
      String? isBiometricValid});
}

/// @nodoc
class _$RemittanceTransactionEventCopyWithImpl<$Res,
        $Val extends RemittanceTransactionEvent>
    implements $RemittanceTransactionEventCopyWith<$Res> {
  _$RemittanceTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderCountryDetail = null,
    Object? receiverCountryDetail = null,
    Object? amount = null,
    Object? serviceOptionCode = null,
    Object? serviceOptionRoutingCode = null,
    Object? fields = null,
    Object? fieldsControllers = null,
    Object? purposeOfTransaction = null,
    Object? sourceOfFunds = null,
    Object? paymentCode = null,
    Object? pin = freezed,
    Object? isBiometricValid = freezed,
  }) {
    return _then(_value.copyWith(
      senderCountryDetail: null == senderCountryDetail
          ? _value.senderCountryDetail
          : senderCountryDetail // ignore: cast_nullable_to_non_nullable
              as CountryDetailModel,
      receiverCountryDetail: null == receiverCountryDetail
          ? _value.receiverCountryDetail
          : receiverCountryDetail // ignore: cast_nullable_to_non_nullable
              as CountryDetailModel,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      serviceOptionCode: null == serviceOptionCode
          ? _value.serviceOptionCode
          : serviceOptionCode // ignore: cast_nullable_to_non_nullable
              as String,
      serviceOptionRoutingCode: null == serviceOptionRoutingCode
          ? _value.serviceOptionRoutingCode
          : serviceOptionRoutingCode // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      fieldsControllers: null == fieldsControllers
          ? _value.fieldsControllers
          : fieldsControllers // ignore: cast_nullable_to_non_nullable
              as Map<String, TextEditingController>,
      purposeOfTransaction: null == purposeOfTransaction
          ? _value.purposeOfTransaction
          : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      sourceOfFunds: null == sourceOfFunds
          ? _value.sourceOfFunds
          : sourceOfFunds // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RemittanceTransactionImplCopyWith<$Res>
    implements $RemittanceTransactionEventCopyWith<$Res> {
  factory _$$RemittanceTransactionImplCopyWith(
          _$RemittanceTransactionImpl value,
          $Res Function(_$RemittanceTransactionImpl) then) =
      __$$RemittanceTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CountryDetailModel senderCountryDetail,
      CountryDetailModel receiverCountryDetail,
      int amount,
      String serviceOptionCode,
      String serviceOptionRoutingCode,
      Map<String, dynamic> fields,
      Map<String, TextEditingController> fieldsControllers,
      String purposeOfTransaction,
      String sourceOfFunds,
      String paymentCode,
      String? pin,
      String? isBiometricValid});
}

/// @nodoc
class __$$RemittanceTransactionImplCopyWithImpl<$Res>
    extends _$RemittanceTransactionEventCopyWithImpl<$Res,
        _$RemittanceTransactionImpl>
    implements _$$RemittanceTransactionImplCopyWith<$Res> {
  __$$RemittanceTransactionImplCopyWithImpl(_$RemittanceTransactionImpl _value,
      $Res Function(_$RemittanceTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderCountryDetail = null,
    Object? receiverCountryDetail = null,
    Object? amount = null,
    Object? serviceOptionCode = null,
    Object? serviceOptionRoutingCode = null,
    Object? fields = null,
    Object? fieldsControllers = null,
    Object? purposeOfTransaction = null,
    Object? sourceOfFunds = null,
    Object? paymentCode = null,
    Object? pin = freezed,
    Object? isBiometricValid = freezed,
  }) {
    return _then(_$RemittanceTransactionImpl(
      null == senderCountryDetail
          ? _value.senderCountryDetail
          : senderCountryDetail // ignore: cast_nullable_to_non_nullable
              as CountryDetailModel,
      null == receiverCountryDetail
          ? _value.receiverCountryDetail
          : receiverCountryDetail // ignore: cast_nullable_to_non_nullable
              as CountryDetailModel,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      null == serviceOptionCode
          ? _value.serviceOptionCode
          : serviceOptionCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == serviceOptionRoutingCode
          ? _value.serviceOptionRoutingCode
          : serviceOptionRoutingCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      null == fieldsControllers
          ? _value._fieldsControllers
          : fieldsControllers // ignore: cast_nullable_to_non_nullable
              as Map<String, TextEditingController>,
      null == purposeOfTransaction
          ? _value.purposeOfTransaction
          : purposeOfTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      null == sourceOfFunds
          ? _value.sourceOfFunds
          : sourceOfFunds // ignore: cast_nullable_to_non_nullable
              as String,
      null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == isBiometricValid
          ? _value.isBiometricValid
          : isBiometricValid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RemittanceTransactionImpl implements _RemittanceTransaction {
  const _$RemittanceTransactionImpl(
      this.senderCountryDetail,
      this.receiverCountryDetail,
      this.amount,
      this.serviceOptionCode,
      this.serviceOptionRoutingCode,
      final Map<String, dynamic> fields,
      final Map<String, TextEditingController> fieldsControllers,
      this.purposeOfTransaction,
      this.sourceOfFunds,
      this.paymentCode,
      this.pin,
      this.isBiometricValid)
      : _fields = fields,
        _fieldsControllers = fieldsControllers;

  @override
  final CountryDetailModel senderCountryDetail;
  @override
  final CountryDetailModel receiverCountryDetail;
  @override
  final int amount;
  @override
  final String serviceOptionCode;
  @override
  final String serviceOptionRoutingCode;
  final Map<String, dynamic> _fields;
  @override
  Map<String, dynamic> get fields {
    if (_fields is EqualUnmodifiableMapView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fields);
  }

  final Map<String, TextEditingController> _fieldsControllers;
  @override
  Map<String, TextEditingController> get fieldsControllers {
    if (_fieldsControllers is EqualUnmodifiableMapView)
      return _fieldsControllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fieldsControllers);
  }

  @override
  final String purposeOfTransaction;
  @override
  final String sourceOfFunds;
  @override
  final String paymentCode;
  @override
  final String? pin;
  @override
  final String? isBiometricValid;

  @override
  String toString() {
    return 'RemittanceTransactionEvent.remittanceTransaction(senderCountryDetail: $senderCountryDetail, receiverCountryDetail: $receiverCountryDetail, amount: $amount, serviceOptionCode: $serviceOptionCode, serviceOptionRoutingCode: $serviceOptionRoutingCode, fields: $fields, fieldsControllers: $fieldsControllers, purposeOfTransaction: $purposeOfTransaction, sourceOfFunds: $sourceOfFunds, paymentCode: $paymentCode, pin: $pin, isBiometricValid: $isBiometricValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceTransactionImpl &&
            (identical(other.senderCountryDetail, senderCountryDetail) ||
                other.senderCountryDetail == senderCountryDetail) &&
            (identical(other.receiverCountryDetail, receiverCountryDetail) ||
                other.receiverCountryDetail == receiverCountryDetail) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.serviceOptionCode, serviceOptionCode) ||
                other.serviceOptionCode == serviceOptionCode) &&
            (identical(
                    other.serviceOptionRoutingCode, serviceOptionRoutingCode) ||
                other.serviceOptionRoutingCode == serviceOptionRoutingCode) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality()
                .equals(other._fieldsControllers, _fieldsControllers) &&
            (identical(other.purposeOfTransaction, purposeOfTransaction) ||
                other.purposeOfTransaction == purposeOfTransaction) &&
            (identical(other.sourceOfFunds, sourceOfFunds) ||
                other.sourceOfFunds == sourceOfFunds) &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.isBiometricValid, isBiometricValid) ||
                other.isBiometricValid == isBiometricValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      senderCountryDetail,
      receiverCountryDetail,
      amount,
      serviceOptionCode,
      serviceOptionRoutingCode,
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_fieldsControllers),
      purposeOfTransaction,
      sourceOfFunds,
      paymentCode,
      pin,
      isBiometricValid);

  /// Create a copy of RemittanceTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceTransactionImplCopyWith<_$RemittanceTransactionImpl>
      get copyWith => __$$RemittanceTransactionImplCopyWithImpl<
          _$RemittanceTransactionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode,
            Map<String, dynamic> fields,
            Map<String, TextEditingController> fieldsControllers,
            String purposeOfTransaction,
            String sourceOfFunds,
            String paymentCode,
            String? pin,
            String? isBiometricValid)
        remittanceTransaction,
  }) {
    return remittanceTransaction(
        senderCountryDetail,
        receiverCountryDetail,
        amount,
        serviceOptionCode,
        serviceOptionRoutingCode,
        fields,
        fieldsControllers,
        purposeOfTransaction,
        sourceOfFunds,
        paymentCode,
        pin,
        isBiometricValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode,
            Map<String, dynamic> fields,
            Map<String, TextEditingController> fieldsControllers,
            String purposeOfTransaction,
            String sourceOfFunds,
            String paymentCode,
            String? pin,
            String? isBiometricValid)?
        remittanceTransaction,
  }) {
    return remittanceTransaction?.call(
        senderCountryDetail,
        receiverCountryDetail,
        amount,
        serviceOptionCode,
        serviceOptionRoutingCode,
        fields,
        fieldsControllers,
        purposeOfTransaction,
        sourceOfFunds,
        paymentCode,
        pin,
        isBiometricValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode,
            Map<String, dynamic> fields,
            Map<String, TextEditingController> fieldsControllers,
            String purposeOfTransaction,
            String sourceOfFunds,
            String paymentCode,
            String? pin,
            String? isBiometricValid)?
        remittanceTransaction,
    required TResult orElse(),
  }) {
    if (remittanceTransaction != null) {
      return remittanceTransaction(
          senderCountryDetail,
          receiverCountryDetail,
          amount,
          serviceOptionCode,
          serviceOptionRoutingCode,
          fields,
          fieldsControllers,
          purposeOfTransaction,
          sourceOfFunds,
          paymentCode,
          pin,
          isBiometricValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemittanceTransaction value)
        remittanceTransaction,
  }) {
    return remittanceTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemittanceTransaction value)? remittanceTransaction,
  }) {
    return remittanceTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemittanceTransaction value)? remittanceTransaction,
    required TResult orElse(),
  }) {
    if (remittanceTransaction != null) {
      return remittanceTransaction(this);
    }
    return orElse();
  }
}

abstract class _RemittanceTransaction implements RemittanceTransactionEvent {
  const factory _RemittanceTransaction(
      final CountryDetailModel senderCountryDetail,
      final CountryDetailModel receiverCountryDetail,
      final int amount,
      final String serviceOptionCode,
      final String serviceOptionRoutingCode,
      final Map<String, dynamic> fields,
      final Map<String, TextEditingController> fieldsControllers,
      final String purposeOfTransaction,
      final String sourceOfFunds,
      final String paymentCode,
      final String? pin,
      final String? isBiometricValid) = _$RemittanceTransactionImpl;

  @override
  CountryDetailModel get senderCountryDetail;
  @override
  CountryDetailModel get receiverCountryDetail;
  @override
  int get amount;
  @override
  String get serviceOptionCode;
  @override
  String get serviceOptionRoutingCode;
  @override
  Map<String, dynamic> get fields;
  @override
  Map<String, TextEditingController> get fieldsControllers;
  @override
  String get purposeOfTransaction;
  @override
  String get sourceOfFunds;
  @override
  String get paymentCode;
  @override
  String? get pin;
  @override
  String? get isBiometricValid;

  /// Create a copy of RemittanceTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceTransactionImplCopyWith<_$RemittanceTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemittanceTransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RemittanceTransactionResponseModel data) success,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceTransactionResponseModel data)? success,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceTransactionResponseModel data)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceTransactionStateCopyWith<$Res> {
  factory $RemittanceTransactionStateCopyWith(RemittanceTransactionState value,
          $Res Function(RemittanceTransactionState) then) =
      _$RemittanceTransactionStateCopyWithImpl<$Res,
          RemittanceTransactionState>;
}

/// @nodoc
class _$RemittanceTransactionStateCopyWithImpl<$Res,
        $Val extends RemittanceTransactionState>
    implements $RemittanceTransactionStateCopyWith<$Res> {
  _$RemittanceTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceTransactionState
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
    extends _$RemittanceTransactionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RemittanceTransactionState.initial()';
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
    required TResult Function(RemittanceTransactionResponseModel data) success,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceTransactionResponseModel data)? success,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceTransactionResponseModel data)? success,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RemittanceTransactionState {
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
    extends _$RemittanceTransactionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RemittanceTransactionState.loading()';
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
    required TResult Function(RemittanceTransactionResponseModel data) success,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceTransactionResponseModel data)? success,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceTransactionResponseModel data)? success,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RemittanceTransactionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemittanceTransactionResponseModel data});

  $RemittanceTransactionResponseModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RemittanceTransactionStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RemittanceTransactionResponseModel,
    ));
  }

  /// Create a copy of RemittanceTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceTransactionResponseModelCopyWith<$Res> get data {
    return $RemittanceTransactionResponseModelCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.data);

  @override
  final RemittanceTransactionResponseModel data;

  @override
  String toString() {
    return 'RemittanceTransactionState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of RemittanceTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RemittanceTransactionResponseModel data) success,
    required TResult Function(String message) failed,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceTransactionResponseModel data)? success,
    TResult? Function(String message)? failed,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceTransactionResponseModel data)? success,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RemittanceTransactionState {
  const factory _Success(final RemittanceTransactionResponseModel data) =
      _$SuccessImpl;

  RemittanceTransactionResponseModel get data;

  /// Create a copy of RemittanceTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
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
    extends _$RemittanceTransactionStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceTransactionState
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
    return 'RemittanceTransactionState.failed(message: $message)';
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

  /// Create a copy of RemittanceTransactionState
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
    required TResult Function(RemittanceTransactionResponseModel data) success,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceTransactionResponseModel data)? success,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceTransactionResponseModel data)? success,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements RemittanceTransactionState {
  const factory _Failed(final String message) = _$FailedImpl;

  String get message;

  /// Create a copy of RemittanceTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
