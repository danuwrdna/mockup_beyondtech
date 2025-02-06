// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'check_pin_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// /// @nodoc
// mixin _$CheckPinEvent {
//   String get currentPin => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String currentPin) checkPin,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String currentPin)? checkPin,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String currentPin)? checkPin,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_CheckPin value) checkPin,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_CheckPin value)? checkPin,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_CheckPin value)? checkPin,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;

//   /// Create a copy of CheckPinEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   $CheckPinEventCopyWith<CheckPinEvent> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $CheckPinEventCopyWith<$Res> {
//   factory $CheckPinEventCopyWith(
//           CheckPinEvent value, $Res Function(CheckPinEvent) then) =
//       _$CheckPinEventCopyWithImpl<$Res, CheckPinEvent>;
//   @useResult
//   $Res call({String currentPin});
// }

// /// @nodoc
// class _$CheckPinEventCopyWithImpl<$Res, $Val extends CheckPinEvent>
//     implements $CheckPinEventCopyWith<$Res> {
//   _$CheckPinEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of CheckPinEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? currentPin = null,
//   }) {
//     return _then(_value.copyWith(
//       currentPin: null == currentPin
//           ? _value.currentPin
//           : currentPin // ignore: cast_nullable_to_non_nullable
//               as String,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$CheckPinImplCopyWith<$Res>
//     implements $CheckPinEventCopyWith<$Res> {
//   factory _$$CheckPinImplCopyWith(
//           _$CheckPinImpl value, $Res Function(_$CheckPinImpl) then) =
//       __$$CheckPinImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({String currentPin});
// }

// /// @nodoc
// class __$$CheckPinImplCopyWithImpl<$Res>
//     extends _$CheckPinEventCopyWithImpl<$Res, _$CheckPinImpl>
//     implements _$$CheckPinImplCopyWith<$Res> {
//   __$$CheckPinImplCopyWithImpl(
//       _$CheckPinImpl _value, $Res Function(_$CheckPinImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckPinEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? currentPin = null,
//   }) {
//     return _then(_$CheckPinImpl(
//       null == currentPin
//           ? _value.currentPin
//           : currentPin // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$CheckPinImpl implements _CheckPin {
//   const _$CheckPinImpl(this.currentPin);

//   @override
//   final String currentPin;

//   @override
//   String toString() {
//     return 'CheckPinEvent.checkPin(currentPin: $currentPin)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$CheckPinImpl &&
//             (identical(other.currentPin, currentPin) ||
//                 other.currentPin == currentPin));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, currentPin);

//   /// Create a copy of CheckPinEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$CheckPinImplCopyWith<_$CheckPinImpl> get copyWith =>
//       __$$CheckPinImplCopyWithImpl<_$CheckPinImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String currentPin) checkPin,
//   }) {
//     return checkPin(currentPin);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String currentPin)? checkPin,
//   }) {
//     return checkPin?.call(currentPin);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String currentPin)? checkPin,
//     required TResult orElse(),
//   }) {
//     if (checkPin != null) {
//       return checkPin(currentPin);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_CheckPin value) checkPin,
//   }) {
//     return checkPin(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_CheckPin value)? checkPin,
//   }) {
//     return checkPin?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_CheckPin value)? checkPin,
//     required TResult orElse(),
//   }) {
//     if (checkPin != null) {
//       return checkPin(this);
//     }
//     return orElse();
//   }
// }

// abstract class _CheckPin implements CheckPinEvent {
//   const factory _CheckPin(final String currentPin) = _$CheckPinImpl;

//   @override
//   String get currentPin;

//   /// Create a copy of CheckPinEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$CheckPinImplCopyWith<_$CheckPinImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$CheckPinState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function() isCorrect,
//     required TResult Function(String message) failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? isCorrect,
//     TResult? Function(String message)? failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? isCorrect,
//     TResult Function(String message)? failed,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_IsCorrect value) isCorrect,
//     required TResult Function(_Failed value) failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_IsCorrect value)? isCorrect,
//     TResult? Function(_Failed value)? failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_IsCorrect value)? isCorrect,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $CheckPinStateCopyWith<$Res> {
//   factory $CheckPinStateCopyWith(
//           CheckPinState value, $Res Function(CheckPinState) then) =
//       _$CheckPinStateCopyWithImpl<$Res, CheckPinState>;
// }

// /// @nodoc
// class _$CheckPinStateCopyWithImpl<$Res, $Val extends CheckPinState>
//     implements $CheckPinStateCopyWith<$Res> {
//   _$CheckPinStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of CheckPinState
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
//     extends _$CheckPinStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//       _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckPinState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements _Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'CheckPinState.initial()';
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
//     required TResult Function() isCorrect,
//     required TResult Function(String message) failed,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? isCorrect,
//     TResult? Function(String message)? failed,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? isCorrect,
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
//     required TResult Function(_IsCorrect value) isCorrect,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_IsCorrect value)? isCorrect,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_IsCorrect value)? isCorrect,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements CheckPinState {
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
//     extends _$CheckPinStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//       _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckPinState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingImpl implements _Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'CheckPinState.loading()';
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
//     required TResult Function() isCorrect,
//     required TResult Function(String message) failed,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? isCorrect,
//     TResult? Function(String message)? failed,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? isCorrect,
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
//     required TResult Function(_IsCorrect value) isCorrect,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_IsCorrect value)? isCorrect,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_IsCorrect value)? isCorrect,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements CheckPinState {
//   const factory _Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$IsCorrectImplCopyWith<$Res> {
//   factory _$$IsCorrectImplCopyWith(
//           _$IsCorrectImpl value, $Res Function(_$IsCorrectImpl) then) =
//       __$$IsCorrectImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$IsCorrectImplCopyWithImpl<$Res>
//     extends _$CheckPinStateCopyWithImpl<$Res, _$IsCorrectImpl>
//     implements _$$IsCorrectImplCopyWith<$Res> {
//   __$$IsCorrectImplCopyWithImpl(
//       _$IsCorrectImpl _value, $Res Function(_$IsCorrectImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckPinState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$IsCorrectImpl implements _IsCorrect {
//   const _$IsCorrectImpl();

//   @override
//   String toString() {
//     return 'CheckPinState.isCorrect()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$IsCorrectImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function() isCorrect,
//     required TResult Function(String message) failed,
//   }) {
//     return isCorrect();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? isCorrect,
//     TResult? Function(String message)? failed,
//   }) {
//     return isCorrect?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? isCorrect,
//     TResult Function(String message)? failed,
//     required TResult orElse(),
//   }) {
//     if (isCorrect != null) {
//       return isCorrect();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_IsCorrect value) isCorrect,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return isCorrect(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_IsCorrect value)? isCorrect,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return isCorrect?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_IsCorrect value)? isCorrect,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (isCorrect != null) {
//       return isCorrect(this);
//     }
//     return orElse();
//   }
// }

// abstract class _IsCorrect implements CheckPinState {
//   const factory _IsCorrect() = _$IsCorrectImpl;
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
//     extends _$CheckPinStateCopyWithImpl<$Res, _$FailedImpl>
//     implements _$$FailedImplCopyWith<$Res> {
//   __$$FailedImplCopyWithImpl(
//       _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckPinState
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
//     return 'CheckPinState.failed(message: $message)';
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

//   /// Create a copy of CheckPinState
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
//     required TResult Function() isCorrect,
//     required TResult Function(String message) failed,
//   }) {
//     return failed(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? isCorrect,
//     TResult? Function(String message)? failed,
//   }) {
//     return failed?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? isCorrect,
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
//     required TResult Function(_IsCorrect value) isCorrect,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return failed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_IsCorrect value)? isCorrect,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return failed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_IsCorrect value)? isCorrect,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (failed != null) {
//       return failed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Failed implements CheckPinState {
//   const factory _Failed(final String message) = _$FailedImpl;

//   String get message;

//   /// Create a copy of CheckPinState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
