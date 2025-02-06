// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remittance_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemittanceDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String senderCountryCodeIso3)
        getSenderCountryDetail,
    required TResult Function(String receiverCountryCodeIso3)
        getReceiverCountryDetail,
    required TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)
        getRemittanceDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String senderCountryCodeIso3)? getSenderCountryDetail,
    TResult? Function(String receiverCountryCodeIso3)? getReceiverCountryDetail,
    TResult? Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)?
        getRemittanceDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String senderCountryCodeIso3)? getSenderCountryDetail,
    TResult Function(String receiverCountryCodeIso3)? getReceiverCountryDetail,
    TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)?
        getRemittanceDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSenderCountryDetail value)
        getSenderCountryDetail,
    required TResult Function(_GetReceiverCountryDetail value)
        getReceiverCountryDetail,
    required TResult Function(_GetRemittanceDetail value) getRemittanceDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSenderCountryDetail value)? getSenderCountryDetail,
    TResult? Function(_GetReceiverCountryDetail value)?
        getReceiverCountryDetail,
    TResult? Function(_GetRemittanceDetail value)? getRemittanceDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSenderCountryDetail value)? getSenderCountryDetail,
    TResult Function(_GetReceiverCountryDetail value)? getReceiverCountryDetail,
    TResult Function(_GetRemittanceDetail value)? getRemittanceDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceDetailEventCopyWith<$Res> {
  factory $RemittanceDetailEventCopyWith(RemittanceDetailEvent value,
          $Res Function(RemittanceDetailEvent) then) =
      _$RemittanceDetailEventCopyWithImpl<$Res, RemittanceDetailEvent>;
}

/// @nodoc
class _$RemittanceDetailEventCopyWithImpl<$Res,
        $Val extends RemittanceDetailEvent>
    implements $RemittanceDetailEventCopyWith<$Res> {
  _$RemittanceDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSenderCountryDetailImplCopyWith<$Res> {
  factory _$$GetSenderCountryDetailImplCopyWith(
          _$GetSenderCountryDetailImpl value,
          $Res Function(_$GetSenderCountryDetailImpl) then) =
      __$$GetSenderCountryDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String senderCountryCodeIso3});
}

/// @nodoc
class __$$GetSenderCountryDetailImplCopyWithImpl<$Res>
    extends _$RemittanceDetailEventCopyWithImpl<$Res,
        _$GetSenderCountryDetailImpl>
    implements _$$GetSenderCountryDetailImplCopyWith<$Res> {
  __$$GetSenderCountryDetailImplCopyWithImpl(
      _$GetSenderCountryDetailImpl _value,
      $Res Function(_$GetSenderCountryDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderCountryCodeIso3 = null,
  }) {
    return _then(_$GetSenderCountryDetailImpl(
      null == senderCountryCodeIso3
          ? _value.senderCountryCodeIso3
          : senderCountryCodeIso3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSenderCountryDetailImpl implements _GetSenderCountryDetail {
  const _$GetSenderCountryDetailImpl(this.senderCountryCodeIso3);

  @override
  final String senderCountryCodeIso3;

  @override
  String toString() {
    return 'RemittanceDetailEvent.getSenderCountryDetail(senderCountryCodeIso3: $senderCountryCodeIso3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSenderCountryDetailImpl &&
            (identical(other.senderCountryCodeIso3, senderCountryCodeIso3) ||
                other.senderCountryCodeIso3 == senderCountryCodeIso3));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderCountryCodeIso3);

  /// Create a copy of RemittanceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSenderCountryDetailImplCopyWith<_$GetSenderCountryDetailImpl>
      get copyWith => __$$GetSenderCountryDetailImplCopyWithImpl<
          _$GetSenderCountryDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String senderCountryCodeIso3)
        getSenderCountryDetail,
    required TResult Function(String receiverCountryCodeIso3)
        getReceiverCountryDetail,
    required TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)
        getRemittanceDetail,
  }) {
    return getSenderCountryDetail(senderCountryCodeIso3);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String senderCountryCodeIso3)? getSenderCountryDetail,
    TResult? Function(String receiverCountryCodeIso3)? getReceiverCountryDetail,
    TResult? Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)?
        getRemittanceDetail,
  }) {
    return getSenderCountryDetail?.call(senderCountryCodeIso3);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String senderCountryCodeIso3)? getSenderCountryDetail,
    TResult Function(String receiverCountryCodeIso3)? getReceiverCountryDetail,
    TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)?
        getRemittanceDetail,
    required TResult orElse(),
  }) {
    if (getSenderCountryDetail != null) {
      return getSenderCountryDetail(senderCountryCodeIso3);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSenderCountryDetail value)
        getSenderCountryDetail,
    required TResult Function(_GetReceiverCountryDetail value)
        getReceiverCountryDetail,
    required TResult Function(_GetRemittanceDetail value) getRemittanceDetail,
  }) {
    return getSenderCountryDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSenderCountryDetail value)? getSenderCountryDetail,
    TResult? Function(_GetReceiverCountryDetail value)?
        getReceiverCountryDetail,
    TResult? Function(_GetRemittanceDetail value)? getRemittanceDetail,
  }) {
    return getSenderCountryDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSenderCountryDetail value)? getSenderCountryDetail,
    TResult Function(_GetReceiverCountryDetail value)? getReceiverCountryDetail,
    TResult Function(_GetRemittanceDetail value)? getRemittanceDetail,
    required TResult orElse(),
  }) {
    if (getSenderCountryDetail != null) {
      return getSenderCountryDetail(this);
    }
    return orElse();
  }
}

abstract class _GetSenderCountryDetail implements RemittanceDetailEvent {
  const factory _GetSenderCountryDetail(final String senderCountryCodeIso3) =
      _$GetSenderCountryDetailImpl;

  String get senderCountryCodeIso3;

  /// Create a copy of RemittanceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSenderCountryDetailImplCopyWith<_$GetSenderCountryDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetReceiverCountryDetailImplCopyWith<$Res> {
  factory _$$GetReceiverCountryDetailImplCopyWith(
          _$GetReceiverCountryDetailImpl value,
          $Res Function(_$GetReceiverCountryDetailImpl) then) =
      __$$GetReceiverCountryDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String receiverCountryCodeIso3});
}

/// @nodoc
class __$$GetReceiverCountryDetailImplCopyWithImpl<$Res>
    extends _$RemittanceDetailEventCopyWithImpl<$Res,
        _$GetReceiverCountryDetailImpl>
    implements _$$GetReceiverCountryDetailImplCopyWith<$Res> {
  __$$GetReceiverCountryDetailImplCopyWithImpl(
      _$GetReceiverCountryDetailImpl _value,
      $Res Function(_$GetReceiverCountryDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverCountryCodeIso3 = null,
  }) {
    return _then(_$GetReceiverCountryDetailImpl(
      null == receiverCountryCodeIso3
          ? _value.receiverCountryCodeIso3
          : receiverCountryCodeIso3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetReceiverCountryDetailImpl implements _GetReceiverCountryDetail {
  const _$GetReceiverCountryDetailImpl(this.receiverCountryCodeIso3);

  @override
  final String receiverCountryCodeIso3;

  @override
  String toString() {
    return 'RemittanceDetailEvent.getReceiverCountryDetail(receiverCountryCodeIso3: $receiverCountryCodeIso3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReceiverCountryDetailImpl &&
            (identical(
                    other.receiverCountryCodeIso3, receiverCountryCodeIso3) ||
                other.receiverCountryCodeIso3 == receiverCountryCodeIso3));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiverCountryCodeIso3);

  /// Create a copy of RemittanceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReceiverCountryDetailImplCopyWith<_$GetReceiverCountryDetailImpl>
      get copyWith => __$$GetReceiverCountryDetailImplCopyWithImpl<
          _$GetReceiverCountryDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String senderCountryCodeIso3)
        getSenderCountryDetail,
    required TResult Function(String receiverCountryCodeIso3)
        getReceiverCountryDetail,
    required TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)
        getRemittanceDetail,
  }) {
    return getReceiverCountryDetail(receiverCountryCodeIso3);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String senderCountryCodeIso3)? getSenderCountryDetail,
    TResult? Function(String receiverCountryCodeIso3)? getReceiverCountryDetail,
    TResult? Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)?
        getRemittanceDetail,
  }) {
    return getReceiverCountryDetail?.call(receiverCountryCodeIso3);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String senderCountryCodeIso3)? getSenderCountryDetail,
    TResult Function(String receiverCountryCodeIso3)? getReceiverCountryDetail,
    TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)?
        getRemittanceDetail,
    required TResult orElse(),
  }) {
    if (getReceiverCountryDetail != null) {
      return getReceiverCountryDetail(receiverCountryCodeIso3);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSenderCountryDetail value)
        getSenderCountryDetail,
    required TResult Function(_GetReceiverCountryDetail value)
        getReceiverCountryDetail,
    required TResult Function(_GetRemittanceDetail value) getRemittanceDetail,
  }) {
    return getReceiverCountryDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSenderCountryDetail value)? getSenderCountryDetail,
    TResult? Function(_GetReceiverCountryDetail value)?
        getReceiverCountryDetail,
    TResult? Function(_GetRemittanceDetail value)? getRemittanceDetail,
  }) {
    return getReceiverCountryDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSenderCountryDetail value)? getSenderCountryDetail,
    TResult Function(_GetReceiverCountryDetail value)? getReceiverCountryDetail,
    TResult Function(_GetRemittanceDetail value)? getRemittanceDetail,
    required TResult orElse(),
  }) {
    if (getReceiverCountryDetail != null) {
      return getReceiverCountryDetail(this);
    }
    return orElse();
  }
}

abstract class _GetReceiverCountryDetail implements RemittanceDetailEvent {
  const factory _GetReceiverCountryDetail(
      final String receiverCountryCodeIso3) = _$GetReceiverCountryDetailImpl;

  String get receiverCountryCodeIso3;

  /// Create a copy of RemittanceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetReceiverCountryDetailImplCopyWith<_$GetReceiverCountryDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRemittanceDetailImplCopyWith<$Res> {
  factory _$$GetRemittanceDetailImplCopyWith(_$GetRemittanceDetailImpl value,
          $Res Function(_$GetRemittanceDetailImpl) then) =
      __$$GetRemittanceDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CountryDetailModel senderCountryDetail,
      CountryDetailModel receiverCountryDetail,
      int amount,
      String serviceOptionCode,
      String serviceOptionRoutingCode});
}

/// @nodoc
class __$$GetRemittanceDetailImplCopyWithImpl<$Res>
    extends _$RemittanceDetailEventCopyWithImpl<$Res, _$GetRemittanceDetailImpl>
    implements _$$GetRemittanceDetailImplCopyWith<$Res> {
  __$$GetRemittanceDetailImplCopyWithImpl(_$GetRemittanceDetailImpl _value,
      $Res Function(_$GetRemittanceDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderCountryDetail = null,
    Object? receiverCountryDetail = null,
    Object? amount = null,
    Object? serviceOptionCode = null,
    Object? serviceOptionRoutingCode = null,
  }) {
    return _then(_$GetRemittanceDetailImpl(
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
    ));
  }
}

/// @nodoc

class _$GetRemittanceDetailImpl implements _GetRemittanceDetail {
  const _$GetRemittanceDetailImpl(
      this.senderCountryDetail,
      this.receiverCountryDetail,
      this.amount,
      this.serviceOptionCode,
      this.serviceOptionRoutingCode);

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

  @override
  String toString() {
    return 'RemittanceDetailEvent.getRemittanceDetail(senderCountryDetail: $senderCountryDetail, receiverCountryDetail: $receiverCountryDetail, amount: $amount, serviceOptionCode: $serviceOptionCode, serviceOptionRoutingCode: $serviceOptionRoutingCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRemittanceDetailImpl &&
            (identical(other.senderCountryDetail, senderCountryDetail) ||
                other.senderCountryDetail == senderCountryDetail) &&
            (identical(other.receiverCountryDetail, receiverCountryDetail) ||
                other.receiverCountryDetail == receiverCountryDetail) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.serviceOptionCode, serviceOptionCode) ||
                other.serviceOptionCode == serviceOptionCode) &&
            (identical(
                    other.serviceOptionRoutingCode, serviceOptionRoutingCode) ||
                other.serviceOptionRoutingCode == serviceOptionRoutingCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      senderCountryDetail,
      receiverCountryDetail,
      amount,
      serviceOptionCode,
      serviceOptionRoutingCode);

  /// Create a copy of RemittanceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRemittanceDetailImplCopyWith<_$GetRemittanceDetailImpl> get copyWith =>
      __$$GetRemittanceDetailImplCopyWithImpl<_$GetRemittanceDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String senderCountryCodeIso3)
        getSenderCountryDetail,
    required TResult Function(String receiverCountryCodeIso3)
        getReceiverCountryDetail,
    required TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)
        getRemittanceDetail,
  }) {
    return getRemittanceDetail(senderCountryDetail, receiverCountryDetail,
        amount, serviceOptionCode, serviceOptionRoutingCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String senderCountryCodeIso3)? getSenderCountryDetail,
    TResult? Function(String receiverCountryCodeIso3)? getReceiverCountryDetail,
    TResult? Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)?
        getRemittanceDetail,
  }) {
    return getRemittanceDetail?.call(senderCountryDetail, receiverCountryDetail,
        amount, serviceOptionCode, serviceOptionRoutingCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String senderCountryCodeIso3)? getSenderCountryDetail,
    TResult Function(String receiverCountryCodeIso3)? getReceiverCountryDetail,
    TResult Function(
            CountryDetailModel senderCountryDetail,
            CountryDetailModel receiverCountryDetail,
            int amount,
            String serviceOptionCode,
            String serviceOptionRoutingCode)?
        getRemittanceDetail,
    required TResult orElse(),
  }) {
    if (getRemittanceDetail != null) {
      return getRemittanceDetail(senderCountryDetail, receiverCountryDetail,
          amount, serviceOptionCode, serviceOptionRoutingCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSenderCountryDetail value)
        getSenderCountryDetail,
    required TResult Function(_GetReceiverCountryDetail value)
        getReceiverCountryDetail,
    required TResult Function(_GetRemittanceDetail value) getRemittanceDetail,
  }) {
    return getRemittanceDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSenderCountryDetail value)? getSenderCountryDetail,
    TResult? Function(_GetReceiverCountryDetail value)?
        getReceiverCountryDetail,
    TResult? Function(_GetRemittanceDetail value)? getRemittanceDetail,
  }) {
    return getRemittanceDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSenderCountryDetail value)? getSenderCountryDetail,
    TResult Function(_GetReceiverCountryDetail value)? getReceiverCountryDetail,
    TResult Function(_GetRemittanceDetail value)? getRemittanceDetail,
    required TResult orElse(),
  }) {
    if (getRemittanceDetail != null) {
      return getRemittanceDetail(this);
    }
    return orElse();
  }
}

abstract class _GetRemittanceDetail implements RemittanceDetailEvent {
  const factory _GetRemittanceDetail(
      final CountryDetailModel senderCountryDetail,
      final CountryDetailModel receiverCountryDetail,
      final int amount,
      final String serviceOptionCode,
      final String serviceOptionRoutingCode) = _$GetRemittanceDetailImpl;

  CountryDetailModel get senderCountryDetail;
  CountryDetailModel get receiverCountryDetail;
  int get amount;
  String get serviceOptionCode;
  String get serviceOptionRoutingCode;

  /// Create a copy of RemittanceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRemittanceDetailImplCopyWith<_$GetRemittanceDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemittanceDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RemittanceCountryDetailResponseModel senderData)
        senderSuccess,
    required TResult Function(RemittanceCountryDetailResponseModel receiverData)
        receiverSuccess,
    required TResult Function(RemittanceDetailResponseModel data) detailSuccess,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult? Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult? Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SenderSuccess value) senderSuccess,
    required TResult Function(_ReceiverSuccess value) receiverSuccess,
    required TResult Function(_DetailSuccess value) detailSuccess,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SenderSuccess value)? senderSuccess,
    TResult? Function(_ReceiverSuccess value)? receiverSuccess,
    TResult? Function(_DetailSuccess value)? detailSuccess,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SenderSuccess value)? senderSuccess,
    TResult Function(_ReceiverSuccess value)? receiverSuccess,
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceDetailStateCopyWith<$Res> {
  factory $RemittanceDetailStateCopyWith(RemittanceDetailState value,
          $Res Function(RemittanceDetailState) then) =
      _$RemittanceDetailStateCopyWithImpl<$Res, RemittanceDetailState>;
}

/// @nodoc
class _$RemittanceDetailStateCopyWithImpl<$Res,
        $Val extends RemittanceDetailState>
    implements $RemittanceDetailStateCopyWith<$Res> {
  _$RemittanceDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceDetailState
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
    extends _$RemittanceDetailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RemittanceDetailState.initial()';
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
    required TResult Function(RemittanceCountryDetailResponseModel senderData)
        senderSuccess,
    required TResult Function(RemittanceCountryDetailResponseModel receiverData)
        receiverSuccess,
    required TResult Function(RemittanceDetailResponseModel data) detailSuccess,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult? Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult? Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult Function(RemittanceDetailResponseModel data)? detailSuccess,
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
    required TResult Function(_SenderSuccess value) senderSuccess,
    required TResult Function(_ReceiverSuccess value) receiverSuccess,
    required TResult Function(_DetailSuccess value) detailSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SenderSuccess value)? senderSuccess,
    TResult? Function(_ReceiverSuccess value)? receiverSuccess,
    TResult? Function(_DetailSuccess value)? detailSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SenderSuccess value)? senderSuccess,
    TResult Function(_ReceiverSuccess value)? receiverSuccess,
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RemittanceDetailState {
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
    extends _$RemittanceDetailStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RemittanceDetailState.loading()';
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
    required TResult Function(RemittanceCountryDetailResponseModel senderData)
        senderSuccess,
    required TResult Function(RemittanceCountryDetailResponseModel receiverData)
        receiverSuccess,
    required TResult Function(RemittanceDetailResponseModel data) detailSuccess,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult? Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult? Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult Function(RemittanceDetailResponseModel data)? detailSuccess,
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
    required TResult Function(_SenderSuccess value) senderSuccess,
    required TResult Function(_ReceiverSuccess value) receiverSuccess,
    required TResult Function(_DetailSuccess value) detailSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SenderSuccess value)? senderSuccess,
    TResult? Function(_ReceiverSuccess value)? receiverSuccess,
    TResult? Function(_DetailSuccess value)? detailSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SenderSuccess value)? senderSuccess,
    TResult Function(_ReceiverSuccess value)? receiverSuccess,
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RemittanceDetailState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SenderSuccessImplCopyWith<$Res> {
  factory _$$SenderSuccessImplCopyWith(
          _$SenderSuccessImpl value, $Res Function(_$SenderSuccessImpl) then) =
      __$$SenderSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemittanceCountryDetailResponseModel senderData});

  $RemittanceCountryDetailResponseModelCopyWith<$Res> get senderData;
}

/// @nodoc
class __$$SenderSuccessImplCopyWithImpl<$Res>
    extends _$RemittanceDetailStateCopyWithImpl<$Res, _$SenderSuccessImpl>
    implements _$$SenderSuccessImplCopyWith<$Res> {
  __$$SenderSuccessImplCopyWithImpl(
      _$SenderSuccessImpl _value, $Res Function(_$SenderSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderData = null,
  }) {
    return _then(_$SenderSuccessImpl(
      null == senderData
          ? _value.senderData
          : senderData // ignore: cast_nullable_to_non_nullable
              as RemittanceCountryDetailResponseModel,
    ));
  }

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceCountryDetailResponseModelCopyWith<$Res> get senderData {
    return $RemittanceCountryDetailResponseModelCopyWith<$Res>(
        _value.senderData, (value) {
      return _then(_value.copyWith(senderData: value));
    });
  }
}

/// @nodoc

class _$SenderSuccessImpl implements _SenderSuccess {
  const _$SenderSuccessImpl(this.senderData);

  @override
  final RemittanceCountryDetailResponseModel senderData;

  @override
  String toString() {
    return 'RemittanceDetailState.senderSuccess(senderData: $senderData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SenderSuccessImpl &&
            (identical(other.senderData, senderData) ||
                other.senderData == senderData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderData);

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SenderSuccessImplCopyWith<_$SenderSuccessImpl> get copyWith =>
      __$$SenderSuccessImplCopyWithImpl<_$SenderSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RemittanceCountryDetailResponseModel senderData)
        senderSuccess,
    required TResult Function(RemittanceCountryDetailResponseModel receiverData)
        receiverSuccess,
    required TResult Function(RemittanceDetailResponseModel data) detailSuccess,
    required TResult Function(String message) failed,
  }) {
    return senderSuccess(senderData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult? Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult? Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult? Function(String message)? failed,
  }) {
    return senderSuccess?.call(senderData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (senderSuccess != null) {
      return senderSuccess(senderData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SenderSuccess value) senderSuccess,
    required TResult Function(_ReceiverSuccess value) receiverSuccess,
    required TResult Function(_DetailSuccess value) detailSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return senderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SenderSuccess value)? senderSuccess,
    TResult? Function(_ReceiverSuccess value)? receiverSuccess,
    TResult? Function(_DetailSuccess value)? detailSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return senderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SenderSuccess value)? senderSuccess,
    TResult Function(_ReceiverSuccess value)? receiverSuccess,
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (senderSuccess != null) {
      return senderSuccess(this);
    }
    return orElse();
  }
}

abstract class _SenderSuccess implements RemittanceDetailState {
  const factory _SenderSuccess(
          final RemittanceCountryDetailResponseModel senderData) =
      _$SenderSuccessImpl;

  RemittanceCountryDetailResponseModel get senderData;

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SenderSuccessImplCopyWith<_$SenderSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiverSuccessImplCopyWith<$Res> {
  factory _$$ReceiverSuccessImplCopyWith(_$ReceiverSuccessImpl value,
          $Res Function(_$ReceiverSuccessImpl) then) =
      __$$ReceiverSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemittanceCountryDetailResponseModel receiverData});

  $RemittanceCountryDetailResponseModelCopyWith<$Res> get receiverData;
}

/// @nodoc
class __$$ReceiverSuccessImplCopyWithImpl<$Res>
    extends _$RemittanceDetailStateCopyWithImpl<$Res, _$ReceiverSuccessImpl>
    implements _$$ReceiverSuccessImplCopyWith<$Res> {
  __$$ReceiverSuccessImplCopyWithImpl(
      _$ReceiverSuccessImpl _value, $Res Function(_$ReceiverSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverData = null,
  }) {
    return _then(_$ReceiverSuccessImpl(
      null == receiverData
          ? _value.receiverData
          : receiverData // ignore: cast_nullable_to_non_nullable
              as RemittanceCountryDetailResponseModel,
    ));
  }

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceCountryDetailResponseModelCopyWith<$Res> get receiverData {
    return $RemittanceCountryDetailResponseModelCopyWith<$Res>(
        _value.receiverData, (value) {
      return _then(_value.copyWith(receiverData: value));
    });
  }
}

/// @nodoc

class _$ReceiverSuccessImpl implements _ReceiverSuccess {
  const _$ReceiverSuccessImpl(this.receiverData);

  @override
  final RemittanceCountryDetailResponseModel receiverData;

  @override
  String toString() {
    return 'RemittanceDetailState.receiverSuccess(receiverData: $receiverData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiverSuccessImpl &&
            (identical(other.receiverData, receiverData) ||
                other.receiverData == receiverData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiverData);

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiverSuccessImplCopyWith<_$ReceiverSuccessImpl> get copyWith =>
      __$$ReceiverSuccessImplCopyWithImpl<_$ReceiverSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RemittanceCountryDetailResponseModel senderData)
        senderSuccess,
    required TResult Function(RemittanceCountryDetailResponseModel receiverData)
        receiverSuccess,
    required TResult Function(RemittanceDetailResponseModel data) detailSuccess,
    required TResult Function(String message) failed,
  }) {
    return receiverSuccess(receiverData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult? Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult? Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult? Function(String message)? failed,
  }) {
    return receiverSuccess?.call(receiverData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (receiverSuccess != null) {
      return receiverSuccess(receiverData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SenderSuccess value) senderSuccess,
    required TResult Function(_ReceiverSuccess value) receiverSuccess,
    required TResult Function(_DetailSuccess value) detailSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return receiverSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SenderSuccess value)? senderSuccess,
    TResult? Function(_ReceiverSuccess value)? receiverSuccess,
    TResult? Function(_DetailSuccess value)? detailSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return receiverSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SenderSuccess value)? senderSuccess,
    TResult Function(_ReceiverSuccess value)? receiverSuccess,
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (receiverSuccess != null) {
      return receiverSuccess(this);
    }
    return orElse();
  }
}

abstract class _ReceiverSuccess implements RemittanceDetailState {
  const factory _ReceiverSuccess(
          final RemittanceCountryDetailResponseModel receiverData) =
      _$ReceiverSuccessImpl;

  RemittanceCountryDetailResponseModel get receiverData;

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiverSuccessImplCopyWith<_$ReceiverSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailSuccessImplCopyWith<$Res> {
  factory _$$DetailSuccessImplCopyWith(
          _$DetailSuccessImpl value, $Res Function(_$DetailSuccessImpl) then) =
      __$$DetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemittanceDetailResponseModel data});

  $RemittanceDetailResponseModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$DetailSuccessImplCopyWithImpl<$Res>
    extends _$RemittanceDetailStateCopyWithImpl<$Res, _$DetailSuccessImpl>
    implements _$$DetailSuccessImplCopyWith<$Res> {
  __$$DetailSuccessImplCopyWithImpl(
      _$DetailSuccessImpl _value, $Res Function(_$DetailSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DetailSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RemittanceDetailResponseModel,
    ));
  }

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RemittanceDetailResponseModelCopyWith<$Res> get data {
    return $RemittanceDetailResponseModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$DetailSuccessImpl implements _DetailSuccess {
  const _$DetailSuccessImpl(this.data);

  @override
  final RemittanceDetailResponseModel data;

  @override
  String toString() {
    return 'RemittanceDetailState.detailSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSuccessImplCopyWith<_$DetailSuccessImpl> get copyWith =>
      __$$DetailSuccessImplCopyWithImpl<_$DetailSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RemittanceCountryDetailResponseModel senderData)
        senderSuccess,
    required TResult Function(RemittanceCountryDetailResponseModel receiverData)
        receiverSuccess,
    required TResult Function(RemittanceDetailResponseModel data) detailSuccess,
    required TResult Function(String message) failed,
  }) {
    return detailSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult? Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult? Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult? Function(String message)? failed,
  }) {
    return detailSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (detailSuccess != null) {
      return detailSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SenderSuccess value) senderSuccess,
    required TResult Function(_ReceiverSuccess value) receiverSuccess,
    required TResult Function(_DetailSuccess value) detailSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return detailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SenderSuccess value)? senderSuccess,
    TResult? Function(_ReceiverSuccess value)? receiverSuccess,
    TResult? Function(_DetailSuccess value)? detailSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return detailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SenderSuccess value)? senderSuccess,
    TResult Function(_ReceiverSuccess value)? receiverSuccess,
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (detailSuccess != null) {
      return detailSuccess(this);
    }
    return orElse();
  }
}

abstract class _DetailSuccess implements RemittanceDetailState {
  const factory _DetailSuccess(final RemittanceDetailResponseModel data) =
      _$DetailSuccessImpl;

  RemittanceDetailResponseModel get data;

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailSuccessImplCopyWith<_$DetailSuccessImpl> get copyWith =>
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
    extends _$RemittanceDetailStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceDetailState
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
    return 'RemittanceDetailState.failed(message: $message)';
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

  /// Create a copy of RemittanceDetailState
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
    required TResult Function(RemittanceCountryDetailResponseModel senderData)
        senderSuccess,
    required TResult Function(RemittanceCountryDetailResponseModel receiverData)
        receiverSuccess,
    required TResult Function(RemittanceDetailResponseModel data) detailSuccess,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult? Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult? Function(RemittanceDetailResponseModel data)? detailSuccess,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RemittanceCountryDetailResponseModel senderData)?
        senderSuccess,
    TResult Function(RemittanceCountryDetailResponseModel receiverData)?
        receiverSuccess,
    TResult Function(RemittanceDetailResponseModel data)? detailSuccess,
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
    required TResult Function(_SenderSuccess value) senderSuccess,
    required TResult Function(_ReceiverSuccess value) receiverSuccess,
    required TResult Function(_DetailSuccess value) detailSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SenderSuccess value)? senderSuccess,
    TResult? Function(_ReceiverSuccess value)? receiverSuccess,
    TResult? Function(_DetailSuccess value)? detailSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SenderSuccess value)? senderSuccess,
    TResult Function(_ReceiverSuccess value)? receiverSuccess,
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements RemittanceDetailState {
  const factory _Failed(final String message) = _$FailedImpl;

  String get message;

  /// Create a copy of RemittanceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
