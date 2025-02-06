// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'get_recent_transaction_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// /// @nodoc
// mixin _$GetRecentTransactionEvent {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() getRecentTransactionHistory,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? getRecentTransactionHistory,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? getRecentTransactionHistory,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetRecentTransactionHistory value)
//         getRecentTransactionHistory,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetRecentTransactionHistory value)?
//         getRecentTransactionHistory,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetRecentTransactionHistory value)?
//         getRecentTransactionHistory,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $GetRecentTransactionEventCopyWith<$Res> {
//   factory $GetRecentTransactionEventCopyWith(GetRecentTransactionEvent value,
//           $Res Function(GetRecentTransactionEvent) then) =
//       _$GetRecentTransactionEventCopyWithImpl<$Res, GetRecentTransactionEvent>;
// }

// /// @nodoc
// class _$GetRecentTransactionEventCopyWithImpl<$Res,
//         $Val extends GetRecentTransactionEvent>
//     implements $GetRecentTransactionEventCopyWith<$Res> {
//   _$GetRecentTransactionEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of GetRecentTransactionEvent
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc
// abstract class _$$GetRecentTransactionHistoryImplCopyWith<$Res> {
//   factory _$$GetRecentTransactionHistoryImplCopyWith(
//           _$GetRecentTransactionHistoryImpl value,
//           $Res Function(_$GetRecentTransactionHistoryImpl) then) =
//       __$$GetRecentTransactionHistoryImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$GetRecentTransactionHistoryImplCopyWithImpl<$Res>
//     extends _$GetRecentTransactionEventCopyWithImpl<$Res,
//         _$GetRecentTransactionHistoryImpl>
//     implements _$$GetRecentTransactionHistoryImplCopyWith<$Res> {
//   __$$GetRecentTransactionHistoryImplCopyWithImpl(
//       _$GetRecentTransactionHistoryImpl _value,
//       $Res Function(_$GetRecentTransactionHistoryImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of GetRecentTransactionEvent
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$GetRecentTransactionHistoryImpl
//     implements _GetRecentTransactionHistory {
//   const _$GetRecentTransactionHistoryImpl();

//   @override
//   String toString() {
//     return 'GetRecentTransactionEvent.getRecentTransactionHistory()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$GetRecentTransactionHistoryImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() getRecentTransactionHistory,
//   }) {
//     return getRecentTransactionHistory();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? getRecentTransactionHistory,
//   }) {
//     return getRecentTransactionHistory?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? getRecentTransactionHistory,
//     required TResult orElse(),
//   }) {
//     if (getRecentTransactionHistory != null) {
//       return getRecentTransactionHistory();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetRecentTransactionHistory value)
//         getRecentTransactionHistory,
//   }) {
//     return getRecentTransactionHistory(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetRecentTransactionHistory value)?
//         getRecentTransactionHistory,
//   }) {
//     return getRecentTransactionHistory?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetRecentTransactionHistory value)?
//         getRecentTransactionHistory,
//     required TResult orElse(),
//   }) {
//     if (getRecentTransactionHistory != null) {
//       return getRecentTransactionHistory(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetRecentTransactionHistory
//     implements GetRecentTransactionEvent {
//   const factory _GetRecentTransactionHistory() =
//       _$GetRecentTransactionHistoryImpl;
// }

// /// @nodoc
// mixin _$GetRecentTransactionState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(HistoryTransferSingleResponseModel data) success,
//     required TResult Function(String message) failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(HistoryTransferSingleResponseModel data)? success,
//     TResult? Function(String message)? failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(HistoryTransferSingleResponseModel data)? success,
//     TResult Function(String message)? failed,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Success value) success,
//     required TResult Function(_Failed value) failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? success,
//     TResult? Function(_Failed value)? failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? success,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $GetRecentTransactionStateCopyWith<$Res> {
//   factory $GetRecentTransactionStateCopyWith(GetRecentTransactionState value,
//           $Res Function(GetRecentTransactionState) then) =
//       _$GetRecentTransactionStateCopyWithImpl<$Res, GetRecentTransactionState>;
// }

// /// @nodoc
// class _$GetRecentTransactionStateCopyWithImpl<$Res,
//         $Val extends GetRecentTransactionState>
//     implements $GetRecentTransactionStateCopyWith<$Res> {
//   _$GetRecentTransactionStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of GetRecentTransactionState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc
// abstract class _$$InitialImplCopyWith<$Res> {
//   factory _$$InitialImplCopyWith(
//           _$InitialImpl value, $Res Function(_$InitialImpl) then) =
//       __$$InitialImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$InitialImplCopyWithImpl<$Res>
//     extends _$GetRecentTransactionStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//       _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of GetRecentTransactionState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements _Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'GetRecentTransactionState.initial()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$InitialImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(HistoryTransferSingleResponseModel data) success,
//     required TResult Function(String message) failed,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(HistoryTransferSingleResponseModel data)? success,
//     TResult? Function(String message)? failed,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(HistoryTransferSingleResponseModel data)? success,
//     TResult Function(String message)? failed,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Success value) success,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? success,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? success,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements GetRecentTransactionState {
//   const factory _Initial() = _$InitialImpl;
// }

// /// @nodoc
// abstract class _$$LoadingImplCopyWith<$Res> {
//   factory _$$LoadingImplCopyWith(
//           _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
//       __$$LoadingImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingImplCopyWithImpl<$Res>
//     extends _$GetRecentTransactionStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//       _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of GetRecentTransactionState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingImpl implements _Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'GetRecentTransactionState.loading()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$LoadingImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(HistoryTransferSingleResponseModel data) success,
//     required TResult Function(String message) failed,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(HistoryTransferSingleResponseModel data)? success,
//     TResult? Function(String message)? failed,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(HistoryTransferSingleResponseModel data)? success,
//     TResult Function(String message)? failed,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Success value) success,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? success,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? success,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements GetRecentTransactionState {
//   const factory _Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$SuccessImplCopyWith<$Res> {
//   factory _$$SuccessImplCopyWith(
//           _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
//       __$$SuccessImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({HistoryTransferSingleResponseModel data});
// }

// /// @nodoc
// class __$$SuccessImplCopyWithImpl<$Res>
//     extends _$GetRecentTransactionStateCopyWithImpl<$Res, _$SuccessImpl>
//     implements _$$SuccessImplCopyWith<$Res> {
//   __$$SuccessImplCopyWithImpl(
//       _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of GetRecentTransactionState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? data = null,
//   }) {
//     return _then(_$SuccessImpl(
//       null == data
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as HistoryTransferSingleResponseModel,
//     ));
//   }
// }

// /// @nodoc

// class _$SuccessImpl implements _Success {
//   const _$SuccessImpl(this.data);

//   @override
//   final HistoryTransferSingleResponseModel data;

//   @override
//   String toString() {
//     return 'GetRecentTransactionState.success(data: $data)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$SuccessImpl &&
//             (identical(other.data, data) || other.data == data));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, data);

//   /// Create a copy of GetRecentTransactionState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
//       __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(HistoryTransferSingleResponseModel data) success,
//     required TResult Function(String message) failed,
//   }) {
//     return success(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(HistoryTransferSingleResponseModel data)? success,
//     TResult? Function(String message)? failed,
//   }) {
//     return success?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(HistoryTransferSingleResponseModel data)? success,
//     TResult Function(String message)? failed,
//     required TResult orElse(),
//   }) {
//     if (success != null) {
//       return success(data);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Success value) success,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return success(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? success,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return success?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? success,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (success != null) {
//       return success(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Success implements GetRecentTransactionState {
//   const factory _Success(final HistoryTransferSingleResponseModel data) =
//       _$SuccessImpl;

//   HistoryTransferSingleResponseModel get data;

//   /// Create a copy of GetRecentTransactionState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$FailedImplCopyWith<$Res> {
//   factory _$$FailedImplCopyWith(
//           _$FailedImpl value, $Res Function(_$FailedImpl) then) =
//       __$$FailedImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String message});
// }

// /// @nodoc
// class __$$FailedImplCopyWithImpl<$Res>
//     extends _$GetRecentTransactionStateCopyWithImpl<$Res, _$FailedImpl>
//     implements _$$FailedImplCopyWith<$Res> {
//   __$$FailedImplCopyWithImpl(
//       _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of GetRecentTransactionState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? message = null,
//   }) {
//     return _then(_$FailedImpl(
//       null == message
//           ? _value.message
//           : message // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$FailedImpl implements _Failed {
//   const _$FailedImpl(this.message);

//   @override
//   final String message;

//   @override
//   String toString() {
//     return 'GetRecentTransactionState.failed(message: $message)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$FailedImpl &&
//             (identical(other.message, message) || other.message == message));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, message);

//   /// Create a copy of GetRecentTransactionState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
//       __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(HistoryTransferSingleResponseModel data) success,
//     required TResult Function(String message) failed,
//   }) {
//     return failed(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(HistoryTransferSingleResponseModel data)? success,
//     TResult? Function(String message)? failed,
//   }) {
//     return failed?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(HistoryTransferSingleResponseModel data)? success,
//     TResult Function(String message)? failed,
//     required TResult orElse(),
//   }) {
//     if (failed != null) {
//       return failed(message);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Success value) success,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return failed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? success,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return failed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? success,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (failed != null) {
//       return failed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Failed implements GetRecentTransactionState {
//   const factory _Failed(final String message) = _$FailedImpl;

//   String get message;

//   /// Create a copy of GetRecentTransactionState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
