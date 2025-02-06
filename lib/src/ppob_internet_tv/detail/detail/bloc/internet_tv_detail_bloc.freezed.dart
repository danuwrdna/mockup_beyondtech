// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_tv_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InternetTvDetailEvent {
  String get paymentCode => throw _privateConstructorUsedError;
  int get nominal => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentCode, int nominal) getDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentCode, int nominal)? getDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentCode, int nominal)? getDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetail value) getDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetail value)? getDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetail value)? getDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of InternetTvDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternetTvDetailEventCopyWith<InternetTvDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetTvDetailEventCopyWith<$Res> {
  factory $InternetTvDetailEventCopyWith(InternetTvDetailEvent value,
          $Res Function(InternetTvDetailEvent) then) =
      _$InternetTvDetailEventCopyWithImpl<$Res, InternetTvDetailEvent>;
  @useResult
  $Res call({String paymentCode, int nominal});
}

/// @nodoc
class _$InternetTvDetailEventCopyWithImpl<$Res,
        $Val extends InternetTvDetailEvent>
    implements $InternetTvDetailEventCopyWith<$Res> {
  _$InternetTvDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetTvDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentCode = null,
    Object? nominal = null,
  }) {
    return _then(_value.copyWith(
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDetailImplCopyWith<$Res>
    implements $InternetTvDetailEventCopyWith<$Res> {
  factory _$$GetDetailImplCopyWith(
          _$GetDetailImpl value, $Res Function(_$GetDetailImpl) then) =
      __$$GetDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String paymentCode, int nominal});
}

/// @nodoc
class __$$GetDetailImplCopyWithImpl<$Res>
    extends _$InternetTvDetailEventCopyWithImpl<$Res, _$GetDetailImpl>
    implements _$$GetDetailImplCopyWith<$Res> {
  __$$GetDetailImplCopyWithImpl(
      _$GetDetailImpl _value, $Res Function(_$GetDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetTvDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentCode = null,
    Object? nominal = null,
  }) {
    return _then(_$GetDetailImpl(
      null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDetailImpl implements _GetDetail {
  const _$GetDetailImpl(this.paymentCode, this.nominal);

  @override
  final String paymentCode;
  @override
  final int nominal;

  @override
  String toString() {
    return 'InternetTvDetailEvent.getDetail(paymentCode: $paymentCode, nominal: $nominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailImpl &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentCode, nominal);

  /// Create a copy of InternetTvDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailImplCopyWith<_$GetDetailImpl> get copyWith =>
      __$$GetDetailImplCopyWithImpl<_$GetDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentCode, int nominal) getDetail,
  }) {
    return getDetail(paymentCode, nominal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentCode, int nominal)? getDetail,
  }) {
    return getDetail?.call(paymentCode, nominal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentCode, int nominal)? getDetail,
    required TResult orElse(),
  }) {
    if (getDetail != null) {
      return getDetail(paymentCode, nominal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetail value) getDetail,
  }) {
    return getDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetail value)? getDetail,
  }) {
    return getDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetail value)? getDetail,
    required TResult orElse(),
  }) {
    if (getDetail != null) {
      return getDetail(this);
    }
    return orElse();
  }
}

abstract class _GetDetail implements InternetTvDetailEvent {
  const factory _GetDetail(final String paymentCode, final int nominal) =
      _$GetDetailImpl;

  @override
  String get paymentCode;
  @override
  int get nominal;

  /// Create a copy of InternetTvDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailImplCopyWith<_$GetDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InternetTvDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PpobCheckoutResponseModel data)
        getInternetTvDetailSuccess,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobCheckoutResponseModel data)?
        getInternetTvDetailSuccess,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobCheckoutResponseModel data)?
        getInternetTvDetailSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetInternetTvDetailSuccess value)
        getInternetTvDetailSuccess,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetInternetTvDetailSuccess value)?
        getInternetTvDetailSuccess,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetInternetTvDetailSuccess value)?
        getInternetTvDetailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetTvDetailStateCopyWith<$Res> {
  factory $InternetTvDetailStateCopyWith(InternetTvDetailState value,
          $Res Function(InternetTvDetailState) then) =
      _$InternetTvDetailStateCopyWithImpl<$Res, InternetTvDetailState>;
}

/// @nodoc
class _$InternetTvDetailStateCopyWithImpl<$Res,
        $Val extends InternetTvDetailState>
    implements $InternetTvDetailStateCopyWith<$Res> {
  _$InternetTvDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetTvDetailState
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
    extends _$InternetTvDetailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetTvDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'InternetTvDetailState.initial()';
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
    required TResult Function(PpobCheckoutResponseModel data)
        getInternetTvDetailSuccess,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobCheckoutResponseModel data)?
        getInternetTvDetailSuccess,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobCheckoutResponseModel data)?
        getInternetTvDetailSuccess,
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
    required TResult Function(_GetInternetTvDetailSuccess value)
        getInternetTvDetailSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetInternetTvDetailSuccess value)?
        getInternetTvDetailSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetInternetTvDetailSuccess value)?
        getInternetTvDetailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InternetTvDetailState {
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
    extends _$InternetTvDetailStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetTvDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'InternetTvDetailState.loading()';
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
    required TResult Function(PpobCheckoutResponseModel data)
        getInternetTvDetailSuccess,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobCheckoutResponseModel data)?
        getInternetTvDetailSuccess,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobCheckoutResponseModel data)?
        getInternetTvDetailSuccess,
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
    required TResult Function(_GetInternetTvDetailSuccess value)
        getInternetTvDetailSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetInternetTvDetailSuccess value)?
        getInternetTvDetailSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetInternetTvDetailSuccess value)?
        getInternetTvDetailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements InternetTvDetailState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GetInternetTvDetailSuccessImplCopyWith<$Res> {
  factory _$$GetInternetTvDetailSuccessImplCopyWith(
          _$GetInternetTvDetailSuccessImpl value,
          $Res Function(_$GetInternetTvDetailSuccessImpl) then) =
      __$$GetInternetTvDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PpobCheckoutResponseModel data});

  $PpobCheckoutResponseModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetInternetTvDetailSuccessImplCopyWithImpl<$Res>
    extends _$InternetTvDetailStateCopyWithImpl<$Res,
        _$GetInternetTvDetailSuccessImpl>
    implements _$$GetInternetTvDetailSuccessImplCopyWith<$Res> {
  __$$GetInternetTvDetailSuccessImplCopyWithImpl(
      _$GetInternetTvDetailSuccessImpl _value,
      $Res Function(_$GetInternetTvDetailSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetTvDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetInternetTvDetailSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PpobCheckoutResponseModel,
    ));
  }

  /// Create a copy of InternetTvDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobCheckoutResponseModelCopyWith<$Res> get data {
    return $PpobCheckoutResponseModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$GetInternetTvDetailSuccessImpl implements _GetInternetTvDetailSuccess {
  const _$GetInternetTvDetailSuccessImpl(this.data);

  @override
  final PpobCheckoutResponseModel data;

  @override
  String toString() {
    return 'InternetTvDetailState.getInternetTvDetailSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInternetTvDetailSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of InternetTvDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInternetTvDetailSuccessImplCopyWith<_$GetInternetTvDetailSuccessImpl>
      get copyWith => __$$GetInternetTvDetailSuccessImplCopyWithImpl<
          _$GetInternetTvDetailSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PpobCheckoutResponseModel data)
        getInternetTvDetailSuccess,
    required TResult Function(String message) failed,
  }) {
    return getInternetTvDetailSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobCheckoutResponseModel data)?
        getInternetTvDetailSuccess,
    TResult? Function(String message)? failed,
  }) {
    return getInternetTvDetailSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobCheckoutResponseModel data)?
        getInternetTvDetailSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (getInternetTvDetailSuccess != null) {
      return getInternetTvDetailSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetInternetTvDetailSuccess value)
        getInternetTvDetailSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return getInternetTvDetailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetInternetTvDetailSuccess value)?
        getInternetTvDetailSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return getInternetTvDetailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetInternetTvDetailSuccess value)?
        getInternetTvDetailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (getInternetTvDetailSuccess != null) {
      return getInternetTvDetailSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetInternetTvDetailSuccess implements InternetTvDetailState {
  const factory _GetInternetTvDetailSuccess(
      final PpobCheckoutResponseModel data) = _$GetInternetTvDetailSuccessImpl;

  PpobCheckoutResponseModel get data;

  /// Create a copy of InternetTvDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInternetTvDetailSuccessImplCopyWith<_$GetInternetTvDetailSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$InternetTvDetailStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetTvDetailState
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
    return 'InternetTvDetailState.failed(message: $message)';
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

  /// Create a copy of InternetTvDetailState
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
    required TResult Function(PpobCheckoutResponseModel data)
        getInternetTvDetailSuccess,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobCheckoutResponseModel data)?
        getInternetTvDetailSuccess,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobCheckoutResponseModel data)?
        getInternetTvDetailSuccess,
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
    required TResult Function(_GetInternetTvDetailSuccess value)
        getInternetTvDetailSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetInternetTvDetailSuccess value)?
        getInternetTvDetailSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetInternetTvDetailSuccess value)?
        getInternetTvDetailSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements InternetTvDetailState {
  const factory _Failed(final String message) = _$FailedImpl;

  String get message;

  /// Create a copy of InternetTvDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
