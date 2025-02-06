// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'check_register_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// /// @nodoc
// mixin _$CheckRegisterEvent {
//   String get phoneNumber => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String phoneNumber) onCheck,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String phoneNumber)? onCheck,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String phoneNumber)? onCheck,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(OnCheck value) onCheck,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(OnCheck value)? onCheck,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(OnCheck value)? onCheck,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;

//   /// Create a copy of CheckRegisterEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   $CheckRegisterEventCopyWith<CheckRegisterEvent> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $CheckRegisterEventCopyWith<$Res> {
//   factory $CheckRegisterEventCopyWith(
//           CheckRegisterEvent value, $Res Function(CheckRegisterEvent) then) =
//       _$CheckRegisterEventCopyWithImpl<$Res, CheckRegisterEvent>;
//   @useResult
//   $Res call({String phoneNumber});
// }

// /// @nodoc
// class _$CheckRegisterEventCopyWithImpl<$Res, $Val extends CheckRegisterEvent>
//     implements $CheckRegisterEventCopyWith<$Res> {
//   _$CheckRegisterEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of CheckRegisterEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? phoneNumber = null,
//   }) {
//     return _then(_value.copyWith(
//       phoneNumber: null == phoneNumber
//           ? _value.phoneNumber
//           : phoneNumber // ignore: cast_nullable_to_non_nullable
//               as String,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$OnCheckImplCopyWith<$Res>
//     implements $CheckRegisterEventCopyWith<$Res> {
//   factory _$$OnCheckImplCopyWith(
//           _$OnCheckImpl value, $Res Function(_$OnCheckImpl) then) =
//       __$$OnCheckImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({String phoneNumber});
// }

// /// @nodoc
// class __$$OnCheckImplCopyWithImpl<$Res>
//     extends _$CheckRegisterEventCopyWithImpl<$Res, _$OnCheckImpl>
//     implements _$$OnCheckImplCopyWith<$Res> {
//   __$$OnCheckImplCopyWithImpl(
//       _$OnCheckImpl _value, $Res Function(_$OnCheckImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckRegisterEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? phoneNumber = null,
//   }) {
//     return _then(_$OnCheckImpl(
//       null == phoneNumber
//           ? _value.phoneNumber
//           : phoneNumber // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$OnCheckImpl implements OnCheck {
//   const _$OnCheckImpl(this.phoneNumber);

//   @override
//   final String phoneNumber;

//   @override
//   String toString() {
//     return 'CheckRegisterEvent.onCheck(phoneNumber: $phoneNumber)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$OnCheckImpl &&
//             (identical(other.phoneNumber, phoneNumber) ||
//                 other.phoneNumber == phoneNumber));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, phoneNumber);

//   /// Create a copy of CheckRegisterEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$OnCheckImplCopyWith<_$OnCheckImpl> get copyWith =>
//       __$$OnCheckImplCopyWithImpl<_$OnCheckImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String phoneNumber) onCheck,
//   }) {
//     return onCheck(phoneNumber);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String phoneNumber)? onCheck,
//   }) {
//     return onCheck?.call(phoneNumber);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String phoneNumber)? onCheck,
//     required TResult orElse(),
//   }) {
//     if (onCheck != null) {
//       return onCheck(phoneNumber);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(OnCheck value) onCheck,
//   }) {
//     return onCheck(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(OnCheck value)? onCheck,
//   }) {
//     return onCheck?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(OnCheck value)? onCheck,
//     required TResult orElse(),
//   }) {
//     if (onCheck != null) {
//       return onCheck(this);
//     }
//     return orElse();
//   }
// }

// abstract class OnCheck implements CheckRegisterEvent {
//   const factory OnCheck(final String phoneNumber) = _$OnCheckImpl;

//   @override
//   String get phoneNumber;

//   /// Create a copy of CheckRegisterEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$OnCheckImplCopyWith<_$OnCheckImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$CheckRegisterState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function() registered,
//     required TResult Function() notRegistered,
//     required TResult Function(String message) error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? registered,
//     TResult? Function()? notRegistered,
//     TResult? Function(String message)? error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? registered,
//     TResult Function()? notRegistered,
//     TResult Function(String message)? error,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(Initial value) initial,
//     required TResult Function(Loading value) loading,
//     required TResult Function(Registered value) registered,
//     required TResult Function(NotRegistered value) notRegistered,
//     required TResult Function(Error value) error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Registered value)? registered,
//     TResult? Function(NotRegistered value)? notRegistered,
//     TResult? Function(Error value)? error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Registered value)? registered,
//     TResult Function(NotRegistered value)? notRegistered,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $CheckRegisterStateCopyWith<$Res> {
//   factory $CheckRegisterStateCopyWith(
//           CheckRegisterState value, $Res Function(CheckRegisterState) then) =
//       _$CheckRegisterStateCopyWithImpl<$Res, CheckRegisterState>;
// }

// /// @nodoc
// class _$CheckRegisterStateCopyWithImpl<$Res, $Val extends CheckRegisterState>
//     implements $CheckRegisterStateCopyWith<$Res> {
//   _$CheckRegisterStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of CheckRegisterState
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
//     extends _$CheckRegisterStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//       _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckRegisterState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'CheckRegisterState.initial()';
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
//     required TResult Function() registered,
//     required TResult Function() notRegistered,
//     required TResult Function(String message) error,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? registered,
//     TResult? Function()? notRegistered,
//     TResult? Function(String message)? error,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? registered,
//     TResult Function()? notRegistered,
//     TResult Function(String message)? error,
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
//     required TResult Function(Initial value) initial,
//     required TResult Function(Loading value) loading,
//     required TResult Function(Registered value) registered,
//     required TResult Function(NotRegistered value) notRegistered,
//     required TResult Function(Error value) error,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Registered value)? registered,
//     TResult? Function(NotRegistered value)? notRegistered,
//     TResult? Function(Error value)? error,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Registered value)? registered,
//     TResult Function(NotRegistered value)? notRegistered,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class Initial implements CheckRegisterState {
//   const factory Initial() = _$InitialImpl;
// }

// /// @nodoc
// abstract class _$$LoadingImplCopyWith<$Res> {
//   factory _$$LoadingImplCopyWith(
//           _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
//       __$$LoadingImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$LoadingImplCopyWithImpl<$Res>
//     extends _$CheckRegisterStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//       _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckRegisterState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingImpl implements Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'CheckRegisterState.loading()';
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
//     required TResult Function() registered,
//     required TResult Function() notRegistered,
//     required TResult Function(String message) error,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? registered,
//     TResult? Function()? notRegistered,
//     TResult? Function(String message)? error,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? registered,
//     TResult Function()? notRegistered,
//     TResult Function(String message)? error,
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
//     required TResult Function(Initial value) initial,
//     required TResult Function(Loading value) loading,
//     required TResult Function(Registered value) registered,
//     required TResult Function(NotRegistered value) notRegistered,
//     required TResult Function(Error value) error,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Registered value)? registered,
//     TResult? Function(NotRegistered value)? notRegistered,
//     TResult? Function(Error value)? error,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Registered value)? registered,
//     TResult Function(NotRegistered value)? notRegistered,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class Loading implements CheckRegisterState {
//   const factory Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$RegisteredImplCopyWith<$Res> {
//   factory _$$RegisteredImplCopyWith(
//           _$RegisteredImpl value, $Res Function(_$RegisteredImpl) then) =
//       __$$RegisteredImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$RegisteredImplCopyWithImpl<$Res>
//     extends _$CheckRegisterStateCopyWithImpl<$Res, _$RegisteredImpl>
//     implements _$$RegisteredImplCopyWith<$Res> {
//   __$$RegisteredImplCopyWithImpl(
//       _$RegisteredImpl _value, $Res Function(_$RegisteredImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckRegisterState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$RegisteredImpl implements Registered {
//   const _$RegisteredImpl();

//   @override
//   String toString() {
//     return 'CheckRegisterState.registered()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$RegisteredImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function() registered,
//     required TResult Function() notRegistered,
//     required TResult Function(String message) error,
//   }) {
//     return registered();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? registered,
//     TResult? Function()? notRegistered,
//     TResult? Function(String message)? error,
//   }) {
//     return registered?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? registered,
//     TResult Function()? notRegistered,
//     TResult Function(String message)? error,
//     required TResult orElse(),
//   }) {
//     if (registered != null) {
//       return registered();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(Initial value) initial,
//     required TResult Function(Loading value) loading,
//     required TResult Function(Registered value) registered,
//     required TResult Function(NotRegistered value) notRegistered,
//     required TResult Function(Error value) error,
//   }) {
//     return registered(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Registered value)? registered,
//     TResult? Function(NotRegistered value)? notRegistered,
//     TResult? Function(Error value)? error,
//   }) {
//     return registered?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Registered value)? registered,
//     TResult Function(NotRegistered value)? notRegistered,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (registered != null) {
//       return registered(this);
//     }
//     return orElse();
//   }
// }

// abstract class Registered implements CheckRegisterState {
//   const factory Registered() = _$RegisteredImpl;
// }

// /// @nodoc
// abstract class _$$NotRegisteredImplCopyWith<$Res> {
//   factory _$$NotRegisteredImplCopyWith(
//           _$NotRegisteredImpl value, $Res Function(_$NotRegisteredImpl) then) =
//       __$$NotRegisteredImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$NotRegisteredImplCopyWithImpl<$Res>
//     extends _$CheckRegisterStateCopyWithImpl<$Res, _$NotRegisteredImpl>
//     implements _$$NotRegisteredImplCopyWith<$Res> {
//   __$$NotRegisteredImplCopyWithImpl(
//       _$NotRegisteredImpl _value, $Res Function(_$NotRegisteredImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckRegisterState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$NotRegisteredImpl implements NotRegistered {
//   const _$NotRegisteredImpl();

//   @override
//   String toString() {
//     return 'CheckRegisterState.notRegistered()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$NotRegisteredImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function() registered,
//     required TResult Function() notRegistered,
//     required TResult Function(String message) error,
//   }) {
//     return notRegistered();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? registered,
//     TResult? Function()? notRegistered,
//     TResult? Function(String message)? error,
//   }) {
//     return notRegistered?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? registered,
//     TResult Function()? notRegistered,
//     TResult Function(String message)? error,
//     required TResult orElse(),
//   }) {
//     if (notRegistered != null) {
//       return notRegistered();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(Initial value) initial,
//     required TResult Function(Loading value) loading,
//     required TResult Function(Registered value) registered,
//     required TResult Function(NotRegistered value) notRegistered,
//     required TResult Function(Error value) error,
//   }) {
//     return notRegistered(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Registered value)? registered,
//     TResult? Function(NotRegistered value)? notRegistered,
//     TResult? Function(Error value)? error,
//   }) {
//     return notRegistered?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Registered value)? registered,
//     TResult Function(NotRegistered value)? notRegistered,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (notRegistered != null) {
//       return notRegistered(this);
//     }
//     return orElse();
//   }
// }

// abstract class NotRegistered implements CheckRegisterState {
//   const factory NotRegistered() = _$NotRegisteredImpl;
// }

// /// @nodoc
// abstract class _$$ErrorImplCopyWith<$Res> {
//   factory _$$ErrorImplCopyWith(
//           _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
//       __$$ErrorImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({String message});
// }

// /// @nodoc
// class __$$ErrorImplCopyWithImpl<$Res>
//     extends _$CheckRegisterStateCopyWithImpl<$Res, _$ErrorImpl>
//     implements _$$ErrorImplCopyWith<$Res> {
//   __$$ErrorImplCopyWithImpl(
//       _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckRegisterState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? message = null,
//   }) {
//     return _then(_$ErrorImpl(
//       null == message
//           ? _value.message
//           : message // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$ErrorImpl implements Error {
//   const _$ErrorImpl(this.message);

//   @override
//   final String message;

//   @override
//   String toString() {
//     return 'CheckRegisterState.error(message: $message)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$ErrorImpl &&
//             (identical(other.message, message) || other.message == message));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, message);

//   /// Create a copy of CheckRegisterState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
//       __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function() registered,
//     required TResult Function() notRegistered,
//     required TResult Function(String message) error,
//   }) {
//     return error(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? registered,
//     TResult? Function()? notRegistered,
//     TResult? Function(String message)? error,
//   }) {
//     return error?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? registered,
//     TResult Function()? notRegistered,
//     TResult Function(String message)? error,
//     required TResult orElse(),
//   }) {
//     if (error != null) {
//       return error(message);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(Initial value) initial,
//     required TResult Function(Loading value) loading,
//     required TResult Function(Registered value) registered,
//     required TResult Function(NotRegistered value) notRegistered,
//     required TResult Function(Error value) error,
//   }) {
//     return error(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Registered value)? registered,
//     TResult? Function(NotRegistered value)? notRegistered,
//     TResult? Function(Error value)? error,
//   }) {
//     return error?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Registered value)? registered,
//     TResult Function(NotRegistered value)? notRegistered,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (error != null) {
//       return error(this);
//     }
//     return orElse();
//   }
// }

// abstract class Error implements CheckRegisterState {
//   const factory Error(final String message) = _$ErrorImpl;

//   String get message;

//   /// Create a copy of CheckRegisterState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
