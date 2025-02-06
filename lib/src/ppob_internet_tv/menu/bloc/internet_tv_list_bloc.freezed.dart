// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_tv_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InternetTvListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPackageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPackageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPackageList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPackageList value) getPackageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPackageList value)? getPackageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPackageList value)? getPackageList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetTvListEventCopyWith<$Res> {
  factory $InternetTvListEventCopyWith(
          InternetTvListEvent value, $Res Function(InternetTvListEvent) then) =
      _$InternetTvListEventCopyWithImpl<$Res, InternetTvListEvent>;
}

/// @nodoc
class _$InternetTvListEventCopyWithImpl<$Res, $Val extends InternetTvListEvent>
    implements $InternetTvListEventCopyWith<$Res> {
  _$InternetTvListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetTvListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPackageListImplCopyWith<$Res> {
  factory _$$GetPackageListImplCopyWith(_$GetPackageListImpl value,
          $Res Function(_$GetPackageListImpl) then) =
      __$$GetPackageListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPackageListImplCopyWithImpl<$Res>
    extends _$InternetTvListEventCopyWithImpl<$Res, _$GetPackageListImpl>
    implements _$$GetPackageListImplCopyWith<$Res> {
  __$$GetPackageListImplCopyWithImpl(
      _$GetPackageListImpl _value, $Res Function(_$GetPackageListImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetTvListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPackageListImpl implements _GetPackageList {
  const _$GetPackageListImpl();

  @override
  String toString() {
    return 'InternetTvListEvent.getPackageList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPackageListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPackageList,
  }) {
    return getPackageList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPackageList,
  }) {
    return getPackageList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPackageList,
    required TResult orElse(),
  }) {
    if (getPackageList != null) {
      return getPackageList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPackageList value) getPackageList,
  }) {
    return getPackageList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPackageList value)? getPackageList,
  }) {
    return getPackageList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPackageList value)? getPackageList,
    required TResult orElse(),
  }) {
    if (getPackageList != null) {
      return getPackageList(this);
    }
    return orElse();
  }
}

abstract class _GetPackageList implements InternetTvListEvent {
  const factory _GetPackageList() = _$GetPackageListImpl;
}

/// @nodoc
mixin _$InternetTvListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PpobPackageResponseModel data) getPackageSuccess,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobPackageResponseModel data)? getPackageSuccess,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobPackageResponseModel data)? getPackageSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LOading value) loading,
    required TResult Function(_GetPackageSuccess value) getPackageSuccess,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LOading value)? loading,
    TResult? Function(_GetPackageSuccess value)? getPackageSuccess,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LOading value)? loading,
    TResult Function(_GetPackageSuccess value)? getPackageSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetTvListStateCopyWith<$Res> {
  factory $InternetTvListStateCopyWith(
          InternetTvListState value, $Res Function(InternetTvListState) then) =
      _$InternetTvListStateCopyWithImpl<$Res, InternetTvListState>;
}

/// @nodoc
class _$InternetTvListStateCopyWithImpl<$Res, $Val extends InternetTvListState>
    implements $InternetTvListStateCopyWith<$Res> {
  _$InternetTvListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetTvListState
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
    extends _$InternetTvListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetTvListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'InternetTvListState.initial()';
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
    required TResult Function(PpobPackageResponseModel data) getPackageSuccess,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobPackageResponseModel data)? getPackageSuccess,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobPackageResponseModel data)? getPackageSuccess,
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
    required TResult Function(_LOading value) loading,
    required TResult Function(_GetPackageSuccess value) getPackageSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LOading value)? loading,
    TResult? Function(_GetPackageSuccess value)? getPackageSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LOading value)? loading,
    TResult Function(_GetPackageSuccess value)? getPackageSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InternetTvListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LOadingImplCopyWith<$Res> {
  factory _$$LOadingImplCopyWith(
          _$LOadingImpl value, $Res Function(_$LOadingImpl) then) =
      __$$LOadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LOadingImplCopyWithImpl<$Res>
    extends _$InternetTvListStateCopyWithImpl<$Res, _$LOadingImpl>
    implements _$$LOadingImplCopyWith<$Res> {
  __$$LOadingImplCopyWithImpl(
      _$LOadingImpl _value, $Res Function(_$LOadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetTvListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LOadingImpl implements _LOading {
  const _$LOadingImpl();

  @override
  String toString() {
    return 'InternetTvListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LOadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PpobPackageResponseModel data) getPackageSuccess,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobPackageResponseModel data)? getPackageSuccess,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobPackageResponseModel data)? getPackageSuccess,
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
    required TResult Function(_LOading value) loading,
    required TResult Function(_GetPackageSuccess value) getPackageSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LOading value)? loading,
    TResult? Function(_GetPackageSuccess value)? getPackageSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LOading value)? loading,
    TResult Function(_GetPackageSuccess value)? getPackageSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LOading implements InternetTvListState {
  const factory _LOading() = _$LOadingImpl;
}

/// @nodoc
abstract class _$$GetPackageSuccessImplCopyWith<$Res> {
  factory _$$GetPackageSuccessImplCopyWith(_$GetPackageSuccessImpl value,
          $Res Function(_$GetPackageSuccessImpl) then) =
      __$$GetPackageSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PpobPackageResponseModel data});

  $PpobPackageResponseModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetPackageSuccessImplCopyWithImpl<$Res>
    extends _$InternetTvListStateCopyWithImpl<$Res, _$GetPackageSuccessImpl>
    implements _$$GetPackageSuccessImplCopyWith<$Res> {
  __$$GetPackageSuccessImplCopyWithImpl(_$GetPackageSuccessImpl _value,
      $Res Function(_$GetPackageSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetTvListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetPackageSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PpobPackageResponseModel,
    ));
  }

  /// Create a copy of InternetTvListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobPackageResponseModelCopyWith<$Res> get data {
    return $PpobPackageResponseModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$GetPackageSuccessImpl implements _GetPackageSuccess {
  const _$GetPackageSuccessImpl(this.data);

  @override
  final PpobPackageResponseModel data;

  @override
  String toString() {
    return 'InternetTvListState.getPackageSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPackageSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of InternetTvListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPackageSuccessImplCopyWith<_$GetPackageSuccessImpl> get copyWith =>
      __$$GetPackageSuccessImplCopyWithImpl<_$GetPackageSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PpobPackageResponseModel data) getPackageSuccess,
    required TResult Function(String message) failed,
  }) {
    return getPackageSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobPackageResponseModel data)? getPackageSuccess,
    TResult? Function(String message)? failed,
  }) {
    return getPackageSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobPackageResponseModel data)? getPackageSuccess,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (getPackageSuccess != null) {
      return getPackageSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LOading value) loading,
    required TResult Function(_GetPackageSuccess value) getPackageSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return getPackageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LOading value)? loading,
    TResult? Function(_GetPackageSuccess value)? getPackageSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return getPackageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LOading value)? loading,
    TResult Function(_GetPackageSuccess value)? getPackageSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (getPackageSuccess != null) {
      return getPackageSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetPackageSuccess implements InternetTvListState {
  const factory _GetPackageSuccess(final PpobPackageResponseModel data) =
      _$GetPackageSuccessImpl;

  PpobPackageResponseModel get data;

  /// Create a copy of InternetTvListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPackageSuccessImplCopyWith<_$GetPackageSuccessImpl> get copyWith =>
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
    extends _$InternetTvListStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetTvListState
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
    return 'InternetTvListState.failed(message: $message)';
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

  /// Create a copy of InternetTvListState
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
    required TResult Function(PpobPackageResponseModel data) getPackageSuccess,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PpobPackageResponseModel data)? getPackageSuccess,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PpobPackageResponseModel data)? getPackageSuccess,
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
    required TResult Function(_LOading value) loading,
    required TResult Function(_GetPackageSuccess value) getPackageSuccess,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LOading value)? loading,
    TResult? Function(_GetPackageSuccess value)? getPackageSuccess,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LOading value)? loading,
    TResult Function(_GetPackageSuccess value)? getPackageSuccess,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements InternetTvListState {
  const factory _Failed(final String message) = _$FailedImpl;

  String get message;

  /// Create a copy of InternetTvListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
