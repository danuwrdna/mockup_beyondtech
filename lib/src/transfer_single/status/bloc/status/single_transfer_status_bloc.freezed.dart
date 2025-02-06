// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_transfer_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingleTransferStatusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String refId) getTransactionStatus,
    required TResult Function(String transactionId, int lastDate)
        getBankTransferTransactionHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String refId)? getTransactionStatus,
    TResult? Function(String transactionId, int lastDate)?
        getBankTransferTransactionHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String refId)? getTransactionStatus,
    TResult Function(String transactionId, int lastDate)?
        getBankTransferTransactionHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactionStatus value) getTransactionStatus,
    required TResult Function(_GetBankTransferTransactionHistory value)
        getBankTransferTransactionHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTransactionStatus value)? getTransactionStatus,
    TResult? Function(_GetBankTransferTransactionHistory value)?
        getBankTransferTransactionHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactionStatus value)? getTransactionStatus,
    TResult Function(_GetBankTransferTransactionHistory value)?
        getBankTransferTransactionHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleTransferStatusEventCopyWith<$Res> {
  factory $SingleTransferStatusEventCopyWith(SingleTransferStatusEvent value,
          $Res Function(SingleTransferStatusEvent) then) =
      _$SingleTransferStatusEventCopyWithImpl<$Res, SingleTransferStatusEvent>;
}

/// @nodoc
class _$SingleTransferStatusEventCopyWithImpl<$Res,
        $Val extends SingleTransferStatusEvent>
    implements $SingleTransferStatusEventCopyWith<$Res> {
  _$SingleTransferStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleTransferStatusEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTransactionStatusImplCopyWith<$Res> {
  factory _$$GetTransactionStatusImplCopyWith(_$GetTransactionStatusImpl value,
          $Res Function(_$GetTransactionStatusImpl) then) =
      __$$GetTransactionStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String refId});
}

/// @nodoc
class __$$GetTransactionStatusImplCopyWithImpl<$Res>
    extends _$SingleTransferStatusEventCopyWithImpl<$Res,
        _$GetTransactionStatusImpl>
    implements _$$GetTransactionStatusImplCopyWith<$Res> {
  __$$GetTransactionStatusImplCopyWithImpl(_$GetTransactionStatusImpl _value,
      $Res Function(_$GetTransactionStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleTransferStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refId = null,
  }) {
    return _then(_$GetTransactionStatusImpl(
      null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTransactionStatusImpl implements _GetTransactionStatus {
  const _$GetTransactionStatusImpl(this.refId);

  @override
  final String refId;

  @override
  String toString() {
    return 'SingleTransferStatusEvent.getTransactionStatus(refId: $refId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTransactionStatusImpl &&
            (identical(other.refId, refId) || other.refId == refId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refId);

  /// Create a copy of SingleTransferStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTransactionStatusImplCopyWith<_$GetTransactionStatusImpl>
      get copyWith =>
          __$$GetTransactionStatusImplCopyWithImpl<_$GetTransactionStatusImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String refId) getTransactionStatus,
    required TResult Function(String transactionId, int lastDate)
        getBankTransferTransactionHistory,
  }) {
    return getTransactionStatus(refId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String refId)? getTransactionStatus,
    TResult? Function(String transactionId, int lastDate)?
        getBankTransferTransactionHistory,
  }) {
    return getTransactionStatus?.call(refId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String refId)? getTransactionStatus,
    TResult Function(String transactionId, int lastDate)?
        getBankTransferTransactionHistory,
    required TResult orElse(),
  }) {
    if (getTransactionStatus != null) {
      return getTransactionStatus(refId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactionStatus value) getTransactionStatus,
    required TResult Function(_GetBankTransferTransactionHistory value)
        getBankTransferTransactionHistory,
  }) {
    return getTransactionStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTransactionStatus value)? getTransactionStatus,
    TResult? Function(_GetBankTransferTransactionHistory value)?
        getBankTransferTransactionHistory,
  }) {
    return getTransactionStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactionStatus value)? getTransactionStatus,
    TResult Function(_GetBankTransferTransactionHistory value)?
        getBankTransferTransactionHistory,
    required TResult orElse(),
  }) {
    if (getTransactionStatus != null) {
      return getTransactionStatus(this);
    }
    return orElse();
  }
}

abstract class _GetTransactionStatus implements SingleTransferStatusEvent {
  const factory _GetTransactionStatus(final String refId) =
      _$GetTransactionStatusImpl;

  String get refId;

  /// Create a copy of SingleTransferStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTransactionStatusImplCopyWith<_$GetTransactionStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBankTransferTransactionHistoryImplCopyWith<$Res> {
  factory _$$GetBankTransferTransactionHistoryImplCopyWith(
          _$GetBankTransferTransactionHistoryImpl value,
          $Res Function(_$GetBankTransferTransactionHistoryImpl) then) =
      __$$GetBankTransferTransactionHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String transactionId, int lastDate});
}

/// @nodoc
class __$$GetBankTransferTransactionHistoryImplCopyWithImpl<$Res>
    extends _$SingleTransferStatusEventCopyWithImpl<$Res,
        _$GetBankTransferTransactionHistoryImpl>
    implements _$$GetBankTransferTransactionHistoryImplCopyWith<$Res> {
  __$$GetBankTransferTransactionHistoryImplCopyWithImpl(
      _$GetBankTransferTransactionHistoryImpl _value,
      $Res Function(_$GetBankTransferTransactionHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleTransferStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? lastDate = null,
  }) {
    return _then(_$GetBankTransferTransactionHistoryImpl(
      null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastDate
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetBankTransferTransactionHistoryImpl
    implements _GetBankTransferTransactionHistory {
  const _$GetBankTransferTransactionHistoryImpl(
      this.transactionId, this.lastDate);

  @override
  final String transactionId;
  @override
  final int lastDate;

  @override
  String toString() {
    return 'SingleTransferStatusEvent.getBankTransferTransactionHistory(transactionId: $transactionId, lastDate: $lastDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBankTransferTransactionHistoryImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.lastDate, lastDate) ||
                other.lastDate == lastDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId, lastDate);

  /// Create a copy of SingleTransferStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBankTransferTransactionHistoryImplCopyWith<
          _$GetBankTransferTransactionHistoryImpl>
      get copyWith => __$$GetBankTransferTransactionHistoryImplCopyWithImpl<
          _$GetBankTransferTransactionHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String refId) getTransactionStatus,
    required TResult Function(String transactionId, int lastDate)
        getBankTransferTransactionHistory,
  }) {
    return getBankTransferTransactionHistory(transactionId, lastDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String refId)? getTransactionStatus,
    TResult? Function(String transactionId, int lastDate)?
        getBankTransferTransactionHistory,
  }) {
    return getBankTransferTransactionHistory?.call(transactionId, lastDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String refId)? getTransactionStatus,
    TResult Function(String transactionId, int lastDate)?
        getBankTransferTransactionHistory,
    required TResult orElse(),
  }) {
    if (getBankTransferTransactionHistory != null) {
      return getBankTransferTransactionHistory(transactionId, lastDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactionStatus value) getTransactionStatus,
    required TResult Function(_GetBankTransferTransactionHistory value)
        getBankTransferTransactionHistory,
  }) {
    return getBankTransferTransactionHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTransactionStatus value)? getTransactionStatus,
    TResult? Function(_GetBankTransferTransactionHistory value)?
        getBankTransferTransactionHistory,
  }) {
    return getBankTransferTransactionHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactionStatus value)? getTransactionStatus,
    TResult Function(_GetBankTransferTransactionHistory value)?
        getBankTransferTransactionHistory,
    required TResult orElse(),
  }) {
    if (getBankTransferTransactionHistory != null) {
      return getBankTransferTransactionHistory(this);
    }
    return orElse();
  }
}

abstract class _GetBankTransferTransactionHistory
    implements SingleTransferStatusEvent {
  const factory _GetBankTransferTransactionHistory(
          final String transactionId, final int lastDate) =
      _$GetBankTransferTransactionHistoryImpl;

  String get transactionId;
  int get lastDate;

  /// Create a copy of SingleTransferStatusEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBankTransferTransactionHistoryImplCopyWith<
          _$GetBankTransferTransactionHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleTransferStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HistoryTransferSingleResponseModel data) success,
    required TResult Function(String message) failed,
    required TResult Function(DetailHistoryTransferSingleResponse data)
        getBankTransferTransactionHistorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryTransferSingleResponseModel data)? success,
    TResult? Function(String message)? failed,
    TResult? Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryTransferSingleResponseModel data)? success,
    TResult Function(String message)? failed,
    TResult Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_GetBankTransferTransactionHistorySuccess value)
        getBankTransferTransactionHistorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleTransferStatusStateCopyWith<$Res> {
  factory $SingleTransferStatusStateCopyWith(SingleTransferStatusState value,
          $Res Function(SingleTransferStatusState) then) =
      _$SingleTransferStatusStateCopyWithImpl<$Res, SingleTransferStatusState>;
}

/// @nodoc
class _$SingleTransferStatusStateCopyWithImpl<$Res,
        $Val extends SingleTransferStatusState>
    implements $SingleTransferStatusStateCopyWith<$Res> {
  _$SingleTransferStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleTransferStatusState
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
    extends _$SingleTransferStatusStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleTransferStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SingleTransferStatusState.initial()';
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
    required TResult Function(HistoryTransferSingleResponseModel data) success,
    required TResult Function(String message) failed,
    required TResult Function(DetailHistoryTransferSingleResponse data)
        getBankTransferTransactionHistorySuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryTransferSingleResponseModel data)? success,
    TResult? Function(String message)? failed,
    TResult? Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryTransferSingleResponseModel data)? success,
    TResult Function(String message)? failed,
    TResult Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
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
    required TResult Function(_GetBankTransferTransactionHistorySuccess value)
        getBankTransferTransactionHistorySuccess,
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
    TResult? Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
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
    TResult Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SingleTransferStatusState {
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
    extends _$SingleTransferStatusStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleTransferStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SingleTransferStatusState.loading()';
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
    required TResult Function(HistoryTransferSingleResponseModel data) success,
    required TResult Function(String message) failed,
    required TResult Function(DetailHistoryTransferSingleResponse data)
        getBankTransferTransactionHistorySuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryTransferSingleResponseModel data)? success,
    TResult? Function(String message)? failed,
    TResult? Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryTransferSingleResponseModel data)? success,
    TResult Function(String message)? failed,
    TResult Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
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
    required TResult Function(_GetBankTransferTransactionHistorySuccess value)
        getBankTransferTransactionHistorySuccess,
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
    TResult? Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
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
    TResult Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SingleTransferStatusState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HistoryTransferSingleResponseModel data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SingleTransferStatusStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleTransferStatusState
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
              as HistoryTransferSingleResponseModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.data);

  @override
  final HistoryTransferSingleResponseModel data;

  @override
  String toString() {
    return 'SingleTransferStatusState.success(data: $data)';
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

  /// Create a copy of SingleTransferStatusState
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
    required TResult Function(HistoryTransferSingleResponseModel data) success,
    required TResult Function(String message) failed,
    required TResult Function(DetailHistoryTransferSingleResponse data)
        getBankTransferTransactionHistorySuccess,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryTransferSingleResponseModel data)? success,
    TResult? Function(String message)? failed,
    TResult? Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryTransferSingleResponseModel data)? success,
    TResult Function(String message)? failed,
    TResult Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
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
    required TResult Function(_GetBankTransferTransactionHistorySuccess value)
        getBankTransferTransactionHistorySuccess,
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
    TResult? Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
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
    TResult Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SingleTransferStatusState {
  const factory _Success(final HistoryTransferSingleResponseModel data) =
      _$SuccessImpl;

  HistoryTransferSingleResponseModel get data;

  /// Create a copy of SingleTransferStatusState
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
    extends _$SingleTransferStatusStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleTransferStatusState
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
    return 'SingleTransferStatusState.failed(message: $message)';
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

  /// Create a copy of SingleTransferStatusState
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
    required TResult Function(HistoryTransferSingleResponseModel data) success,
    required TResult Function(String message) failed,
    required TResult Function(DetailHistoryTransferSingleResponse data)
        getBankTransferTransactionHistorySuccess,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryTransferSingleResponseModel data)? success,
    TResult? Function(String message)? failed,
    TResult? Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryTransferSingleResponseModel data)? success,
    TResult Function(String message)? failed,
    TResult Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
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
    required TResult Function(_GetBankTransferTransactionHistorySuccess value)
        getBankTransferTransactionHistorySuccess,
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
    TResult? Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
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
    TResult Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements SingleTransferStatusState {
  const factory _Failed(final String message) = _$FailedImpl;

  String get message;

  /// Create a copy of SingleTransferStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBankTransferTransactionHistorySuccessImplCopyWith<$Res> {
  factory _$$GetBankTransferTransactionHistorySuccessImplCopyWith(
          _$GetBankTransferTransactionHistorySuccessImpl value,
          $Res Function(_$GetBankTransferTransactionHistorySuccessImpl) then) =
      __$$GetBankTransferTransactionHistorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailHistoryTransferSingleResponse data});

  $DetailHistoryTransferSingleResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetBankTransferTransactionHistorySuccessImplCopyWithImpl<$Res>
    extends _$SingleTransferStatusStateCopyWithImpl<$Res,
        _$GetBankTransferTransactionHistorySuccessImpl>
    implements _$$GetBankTransferTransactionHistorySuccessImplCopyWith<$Res> {
  __$$GetBankTransferTransactionHistorySuccessImplCopyWithImpl(
      _$GetBankTransferTransactionHistorySuccessImpl _value,
      $Res Function(_$GetBankTransferTransactionHistorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleTransferStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetBankTransferTransactionHistorySuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailHistoryTransferSingleResponse,
    ));
  }

  /// Create a copy of SingleTransferStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailHistoryTransferSingleResponseCopyWith<$Res> get data {
    return $DetailHistoryTransferSingleResponseCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$GetBankTransferTransactionHistorySuccessImpl
    implements _GetBankTransferTransactionHistorySuccess {
  const _$GetBankTransferTransactionHistorySuccessImpl(this.data);

  @override
  final DetailHistoryTransferSingleResponse data;

  @override
  String toString() {
    return 'SingleTransferStatusState.getBankTransferTransactionHistorySuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBankTransferTransactionHistorySuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SingleTransferStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBankTransferTransactionHistorySuccessImplCopyWith<
          _$GetBankTransferTransactionHistorySuccessImpl>
      get copyWith =>
          __$$GetBankTransferTransactionHistorySuccessImplCopyWithImpl<
              _$GetBankTransferTransactionHistorySuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HistoryTransferSingleResponseModel data) success,
    required TResult Function(String message) failed,
    required TResult Function(DetailHistoryTransferSingleResponse data)
        getBankTransferTransactionHistorySuccess,
  }) {
    return getBankTransferTransactionHistorySuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(HistoryTransferSingleResponseModel data)? success,
    TResult? Function(String message)? failed,
    TResult? Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
  }) {
    return getBankTransferTransactionHistorySuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HistoryTransferSingleResponseModel data)? success,
    TResult Function(String message)? failed,
    TResult Function(DetailHistoryTransferSingleResponse data)?
        getBankTransferTransactionHistorySuccess,
    required TResult orElse(),
  }) {
    if (getBankTransferTransactionHistorySuccess != null) {
      return getBankTransferTransactionHistorySuccess(data);
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
    required TResult Function(_GetBankTransferTransactionHistorySuccess value)
        getBankTransferTransactionHistorySuccess,
  }) {
    return getBankTransferTransactionHistorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
  }) {
    return getBankTransferTransactionHistorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_GetBankTransferTransactionHistorySuccess value)?
        getBankTransferTransactionHistorySuccess,
    required TResult orElse(),
  }) {
    if (getBankTransferTransactionHistorySuccess != null) {
      return getBankTransferTransactionHistorySuccess(this);
    }
    return orElse();
  }
}

abstract class _GetBankTransferTransactionHistorySuccess
    implements SingleTransferStatusState {
  const factory _GetBankTransferTransactionHistorySuccess(
          final DetailHistoryTransferSingleResponse data) =
      _$GetBankTransferTransactionHistorySuccessImpl;

  DetailHistoryTransferSingleResponse get data;

  /// Create a copy of SingleTransferStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBankTransferTransactionHistorySuccessImplCopyWith<
          _$GetBankTransferTransactionHistorySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
