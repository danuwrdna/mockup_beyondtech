// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'check_email_username_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// /// @nodoc
// mixin _$CheckEmailUsernameEvent {
//   String get email => throw _privateConstructorUsedError;
//   String get username => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String email, String username) checkEmailUsername,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String email, String username)? checkEmailUsername,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String email, String username)? checkEmailUsername,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_CheckEmailUsername value) checkEmailUsername,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_CheckEmailUsername value)? checkEmailUsername,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_CheckEmailUsername value)? checkEmailUsername,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;

//   /// Create a copy of CheckEmailUsernameEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   $CheckEmailUsernameEventCopyWith<CheckEmailUsernameEvent> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $CheckEmailUsernameEventCopyWith<$Res> {
//   factory $CheckEmailUsernameEventCopyWith(CheckEmailUsernameEvent value,
//           $Res Function(CheckEmailUsernameEvent) then) =
//       _$CheckEmailUsernameEventCopyWithImpl<$Res, CheckEmailUsernameEvent>;
//   @useResult
//   $Res call({String email, String username});
// }

// /// @nodoc
// class _$CheckEmailUsernameEventCopyWithImpl<$Res,
//         $Val extends CheckEmailUsernameEvent>
//     implements $CheckEmailUsernameEventCopyWith<$Res> {
//   _$CheckEmailUsernameEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of CheckEmailUsernameEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? email = null,
//     Object? username = null,
//   }) {
//     return _then(_value.copyWith(
//       email: null == email
//           ? _value.email
//           : email // ignore: cast_nullable_to_non_nullable
//               as String,
//       username: null == username
//           ? _value.username
//           : username // ignore: cast_nullable_to_non_nullable
//               as String,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$CheckEmailUsernameImplCopyWith<$Res>
//     implements $CheckEmailUsernameEventCopyWith<$Res> {
//   factory _$$CheckEmailUsernameImplCopyWith(_$CheckEmailUsernameImpl value,
//           $Res Function(_$CheckEmailUsernameImpl) then) =
//       __$$CheckEmailUsernameImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({String email, String username});
// }

// /// @nodoc
// class __$$CheckEmailUsernameImplCopyWithImpl<$Res>
//     extends _$CheckEmailUsernameEventCopyWithImpl<$Res,
//         _$CheckEmailUsernameImpl>
//     implements _$$CheckEmailUsernameImplCopyWith<$Res> {
//   __$$CheckEmailUsernameImplCopyWithImpl(_$CheckEmailUsernameImpl _value,
//       $Res Function(_$CheckEmailUsernameImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckEmailUsernameEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? email = null,
//     Object? username = null,
//   }) {
//     return _then(_$CheckEmailUsernameImpl(
//       null == email
//           ? _value.email
//           : email // ignore: cast_nullable_to_non_nullable
//               as String,
//       null == username
//           ? _value.username
//           : username // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$CheckEmailUsernameImpl implements _CheckEmailUsername {
//   const _$CheckEmailUsernameImpl(this.email, this.username);

//   @override
//   final String email;
//   @override
//   final String username;

//   @override
//   String toString() {
//     return 'CheckEmailUsernameEvent.checkEmailUsername(email: $email, username: $username)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$CheckEmailUsernameImpl &&
//             (identical(other.email, email) || other.email == email) &&
//             (identical(other.username, username) ||
//                 other.username == username));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, email, username);

//   /// Create a copy of CheckEmailUsernameEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$CheckEmailUsernameImplCopyWith<_$CheckEmailUsernameImpl> get copyWith =>
//       __$$CheckEmailUsernameImplCopyWithImpl<_$CheckEmailUsernameImpl>(
//           this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String email, String username) checkEmailUsername,
//   }) {
//     return checkEmailUsername(email, username);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String email, String username)? checkEmailUsername,
//   }) {
//     return checkEmailUsername?.call(email, username);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String email, String username)? checkEmailUsername,
//     required TResult orElse(),
//   }) {
//     if (checkEmailUsername != null) {
//       return checkEmailUsername(email, username);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_CheckEmailUsername value) checkEmailUsername,
//   }) {
//     return checkEmailUsername(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_CheckEmailUsername value)? checkEmailUsername,
//   }) {
//     return checkEmailUsername?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_CheckEmailUsername value)? checkEmailUsername,
//     required TResult orElse(),
//   }) {
//     if (checkEmailUsername != null) {
//       return checkEmailUsername(this);
//     }
//     return orElse();
//   }
// }

// abstract class _CheckEmailUsername implements CheckEmailUsernameEvent {
//   const factory _CheckEmailUsername(final String email, final String username) =
//       _$CheckEmailUsernameImpl;

//   @override
//   String get email;
//   @override
//   String get username;

//   /// Create a copy of CheckEmailUsernameEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$CheckEmailUsernameImplCopyWith<_$CheckEmailUsernameImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$CheckEmailUsernameState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function() available,
//     required TResult Function(EmailUsernameExistence existence) notAvailable,
//     required TResult Function(String message) error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? available,
//     TResult? Function(EmailUsernameExistence existence)? notAvailable,
//     TResult? Function(String message)? error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? available,
//     TResult Function(EmailUsernameExistence existence)? notAvailable,
//     TResult Function(String message)? error,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Available value) available,
//     required TResult Function(_NotAvailable value) notAvailable,
//     required TResult Function(_Error value) error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Available value)? available,
//     TResult? Function(_NotAvailable value)? notAvailable,
//     TResult? Function(_Error value)? error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Available value)? available,
//     TResult Function(_NotAvailable value)? notAvailable,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $CheckEmailUsernameStateCopyWith<$Res> {
//   factory $CheckEmailUsernameStateCopyWith(CheckEmailUsernameState value,
//           $Res Function(CheckEmailUsernameState) then) =
//       _$CheckEmailUsernameStateCopyWithImpl<$Res, CheckEmailUsernameState>;
// }

// /// @nodoc
// class _$CheckEmailUsernameStateCopyWithImpl<$Res,
//         $Val extends CheckEmailUsernameState>
//     implements $CheckEmailUsernameStateCopyWith<$Res> {
//   _$CheckEmailUsernameStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of CheckEmailUsernameState
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
//     extends _$CheckEmailUsernameStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//       _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckEmailUsernameState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements _Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'CheckEmailUsernameState.initial()';
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
//     required TResult Function() available,
//     required TResult Function(EmailUsernameExistence existence) notAvailable,
//     required TResult Function(String message) error,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? available,
//     TResult? Function(EmailUsernameExistence existence)? notAvailable,
//     TResult? Function(String message)? error,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? available,
//     TResult Function(EmailUsernameExistence existence)? notAvailable,
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
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Available value) available,
//     required TResult Function(_NotAvailable value) notAvailable,
//     required TResult Function(_Error value) error,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Available value)? available,
//     TResult? Function(_NotAvailable value)? notAvailable,
//     TResult? Function(_Error value)? error,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Available value)? available,
//     TResult Function(_NotAvailable value)? notAvailable,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements CheckEmailUsernameState {
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
//     extends _$CheckEmailUsernameStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//       _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckEmailUsernameState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingImpl implements _Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'CheckEmailUsernameState.loading()';
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
//     required TResult Function() available,
//     required TResult Function(EmailUsernameExistence existence) notAvailable,
//     required TResult Function(String message) error,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? available,
//     TResult? Function(EmailUsernameExistence existence)? notAvailable,
//     TResult? Function(String message)? error,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? available,
//     TResult Function(EmailUsernameExistence existence)? notAvailable,
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
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Available value) available,
//     required TResult Function(_NotAvailable value) notAvailable,
//     required TResult Function(_Error value) error,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Available value)? available,
//     TResult? Function(_NotAvailable value)? notAvailable,
//     TResult? Function(_Error value)? error,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Available value)? available,
//     TResult Function(_NotAvailable value)? notAvailable,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements CheckEmailUsernameState {
//   const factory _Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$AvailableImplCopyWith<$Res> {
//   factory _$$AvailableImplCopyWith(
//           _$AvailableImpl value, $Res Function(_$AvailableImpl) then) =
//       __$$AvailableImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$AvailableImplCopyWithImpl<$Res>
//     extends _$CheckEmailUsernameStateCopyWithImpl<$Res, _$AvailableImpl>
//     implements _$$AvailableImplCopyWith<$Res> {
//   __$$AvailableImplCopyWithImpl(
//       _$AvailableImpl _value, $Res Function(_$AvailableImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckEmailUsernameState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$AvailableImpl implements _Available {
//   const _$AvailableImpl();

//   @override
//   String toString() {
//     return 'CheckEmailUsernameState.available()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$AvailableImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function() available,
//     required TResult Function(EmailUsernameExistence existence) notAvailable,
//     required TResult Function(String message) error,
//   }) {
//     return available();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? available,
//     TResult? Function(EmailUsernameExistence existence)? notAvailable,
//     TResult? Function(String message)? error,
//   }) {
//     return available?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? available,
//     TResult Function(EmailUsernameExistence existence)? notAvailable,
//     TResult Function(String message)? error,
//     required TResult orElse(),
//   }) {
//     if (available != null) {
//       return available();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Available value) available,
//     required TResult Function(_NotAvailable value) notAvailable,
//     required TResult Function(_Error value) error,
//   }) {
//     return available(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Available value)? available,
//     TResult? Function(_NotAvailable value)? notAvailable,
//     TResult? Function(_Error value)? error,
//   }) {
//     return available?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Available value)? available,
//     TResult Function(_NotAvailable value)? notAvailable,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (available != null) {
//       return available(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Available implements CheckEmailUsernameState {
//   const factory _Available() = _$AvailableImpl;
// }

// /// @nodoc
// abstract class _$$NotAvailableImplCopyWith<$Res> {
//   factory _$$NotAvailableImplCopyWith(
//           _$NotAvailableImpl value, $Res Function(_$NotAvailableImpl) then) =
//       __$$NotAvailableImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({EmailUsernameExistence existence});
// }

// /// @nodoc
// class __$$NotAvailableImplCopyWithImpl<$Res>
//     extends _$CheckEmailUsernameStateCopyWithImpl<$Res, _$NotAvailableImpl>
//     implements _$$NotAvailableImplCopyWith<$Res> {
//   __$$NotAvailableImplCopyWithImpl(
//       _$NotAvailableImpl _value, $Res Function(_$NotAvailableImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckEmailUsernameState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? existence = null,
//   }) {
//     return _then(_$NotAvailableImpl(
//       null == existence
//           ? _value.existence
//           : existence // ignore: cast_nullable_to_non_nullable
//               as EmailUsernameExistence,
//     ));
//   }
// }

// /// @nodoc

// class _$NotAvailableImpl implements _NotAvailable {
//   const _$NotAvailableImpl(this.existence);

//   @override
//   final EmailUsernameExistence existence;

//   @override
//   String toString() {
//     return 'CheckEmailUsernameState.notAvailable(existence: $existence)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$NotAvailableImpl &&
//             (identical(other.existence, existence) ||
//                 other.existence == existence));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, existence);

//   /// Create a copy of CheckEmailUsernameState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$NotAvailableImplCopyWith<_$NotAvailableImpl> get copyWith =>
//       __$$NotAvailableImplCopyWithImpl<_$NotAvailableImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function() available,
//     required TResult Function(EmailUsernameExistence existence) notAvailable,
//     required TResult Function(String message) error,
//   }) {
//     return notAvailable(existence);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? available,
//     TResult? Function(EmailUsernameExistence existence)? notAvailable,
//     TResult? Function(String message)? error,
//   }) {
//     return notAvailable?.call(existence);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? available,
//     TResult Function(EmailUsernameExistence existence)? notAvailable,
//     TResult Function(String message)? error,
//     required TResult orElse(),
//   }) {
//     if (notAvailable != null) {
//       return notAvailable(existence);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Available value) available,
//     required TResult Function(_NotAvailable value) notAvailable,
//     required TResult Function(_Error value) error,
//   }) {
//     return notAvailable(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Available value)? available,
//     TResult? Function(_NotAvailable value)? notAvailable,
//     TResult? Function(_Error value)? error,
//   }) {
//     return notAvailable?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Available value)? available,
//     TResult Function(_NotAvailable value)? notAvailable,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (notAvailable != null) {
//       return notAvailable(this);
//     }
//     return orElse();
//   }
// }

// abstract class _NotAvailable implements CheckEmailUsernameState {
//   const factory _NotAvailable(final EmailUsernameExistence existence) =
//       _$NotAvailableImpl;

//   EmailUsernameExistence get existence;

//   /// Create a copy of CheckEmailUsernameState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$NotAvailableImplCopyWith<_$NotAvailableImpl> get copyWith =>
//       throw _privateConstructorUsedError;
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
//     extends _$CheckEmailUsernameStateCopyWithImpl<$Res, _$ErrorImpl>
//     implements _$$ErrorImplCopyWith<$Res> {
//   __$$ErrorImplCopyWithImpl(
//       _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of CheckEmailUsernameState
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

// class _$ErrorImpl implements _Error {
//   const _$ErrorImpl(this.message);

//   @override
//   final String message;

//   @override
//   String toString() {
//     return 'CheckEmailUsernameState.error(message: $message)';
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

//   /// Create a copy of CheckEmailUsernameState
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
//     required TResult Function() available,
//     required TResult Function(EmailUsernameExistence existence) notAvailable,
//     required TResult Function(String message) error,
//   }) {
//     return error(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function()? available,
//     TResult? Function(EmailUsernameExistence existence)? notAvailable,
//     TResult? Function(String message)? error,
//   }) {
//     return error?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function()? available,
//     TResult Function(EmailUsernameExistence existence)? notAvailable,
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
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Available value) available,
//     required TResult Function(_NotAvailable value) notAvailable,
//     required TResult Function(_Error value) error,
//   }) {
//     return error(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Available value)? available,
//     TResult? Function(_NotAvailable value)? notAvailable,
//     TResult? Function(_Error value)? error,
//   }) {
//     return error?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Available value)? available,
//     TResult Function(_NotAvailable value)? notAvailable,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (error != null) {
//       return error(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Error implements CheckEmailUsernameState {
//   const factory _Error(final String message) = _$ErrorImpl;

//   String get message;

//   /// Create a copy of CheckEmailUsernameState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
