// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'login_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// /// @nodoc
// mixin _$LoginEvent {
//   String get emailOrPhone => throw _privateConstructorUsedError;
//   String get password => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String emailOrPhone, String password) login,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String emailOrPhone, String password)? login,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String emailOrPhone, String password)? login,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Login value) login,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Login value)? login,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Login value)? login,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;

//   /// Create a copy of LoginEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   $LoginEventCopyWith<LoginEvent> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $LoginEventCopyWith<$Res> {
//   factory $LoginEventCopyWith(
//           LoginEvent value, $Res Function(LoginEvent) then) =
//       _$LoginEventCopyWithImpl<$Res, LoginEvent>;
//   @useResult
//   $Res call({String emailOrPhone, String password});
// }

// /// @nodoc
// class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
//     implements $LoginEventCopyWith<$Res> {
//   _$LoginEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of LoginEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? emailOrPhone = null,
//     Object? password = null,
//   }) {
//     return _then(_value.copyWith(
//       emailOrPhone: null == emailOrPhone
//           ? _value.emailOrPhone
//           : emailOrPhone // ignore: cast_nullable_to_non_nullable
//               as String,
//       password: null == password
//           ? _value.password
//           : password // ignore: cast_nullable_to_non_nullable
//               as String,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$LoginImplCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
//   factory _$$LoginImplCopyWith(
//           _$LoginImpl value, $Res Function(_$LoginImpl) then) =
//       __$$LoginImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({String emailOrPhone, String password});
// }

// /// @nodoc
// class __$$LoginImplCopyWithImpl<$Res>
//     extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
//     implements _$$LoginImplCopyWith<$Res> {
//   __$$LoginImplCopyWithImpl(
//       _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of LoginEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? emailOrPhone = null,
//     Object? password = null,
//   }) {
//     return _then(_$LoginImpl(
//       null == emailOrPhone
//           ? _value.emailOrPhone
//           : emailOrPhone // ignore: cast_nullable_to_non_nullable
//               as String,
//       null == password
//           ? _value.password
//           : password // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$LoginImpl implements _Login {
//   const _$LoginImpl(this.emailOrPhone, this.password);

//   @override
//   final String emailOrPhone;
//   @override
//   final String password;

//   @override
//   String toString() {
//     return 'LoginEvent.login(emailOrPhone: $emailOrPhone, password: $password)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$LoginImpl &&
//             (identical(other.emailOrPhone, emailOrPhone) ||
//                 other.emailOrPhone == emailOrPhone) &&
//             (identical(other.password, password) ||
//                 other.password == password));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, emailOrPhone, password);

//   /// Create a copy of LoginEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
//       __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String emailOrPhone, String password) login,
//   }) {
//     return login(emailOrPhone, password);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String emailOrPhone, String password)? login,
//   }) {
//     return login?.call(emailOrPhone, password);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String emailOrPhone, String password)? login,
//     required TResult orElse(),
//   }) {
//     if (login != null) {
//       return login(emailOrPhone, password);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Login value) login,
//   }) {
//     return login(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Login value)? login,
//   }) {
//     return login?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Login value)? login,
//     required TResult orElse(),
//   }) {
//     if (login != null) {
//       return login(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Login implements LoginEvent {
//   const factory _Login(final String emailOrPhone, final String password) =
//       _$LoginImpl;

//   @override
//   String get emailOrPhone;
//   @override
//   String get password;

//   /// Create a copy of LoginEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$LoginState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(LoginResponseModel data) success,
//     required TResult Function(String message) error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(LoginResponseModel data)? success,
//     TResult? Function(String message)? error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(LoginResponseModel data)? success,
//     TResult Function(String message)? error,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(Initial value) initial,
//     required TResult Function(Loading value) loading,
//     required TResult Function(Success value) success,
//     required TResult Function(Error value) error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Success value)? success,
//     TResult? Function(Error value)? error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Success value)? success,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $LoginStateCopyWith<$Res> {
//   factory $LoginStateCopyWith(
//           LoginState value, $Res Function(LoginState) then) =
//       _$LoginStateCopyWithImpl<$Res, LoginState>;
// }

// /// @nodoc
// class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
//     implements $LoginStateCopyWith<$Res> {
//   _$LoginStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of LoginState
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
//     extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//       _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of LoginState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'LoginState.initial()';
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
//     required TResult Function(LoginResponseModel data) success,
//     required TResult Function(String message) error,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(LoginResponseModel data)? success,
//     TResult? Function(String message)? error,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(LoginResponseModel data)? success,
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
//     required TResult Function(Success value) success,
//     required TResult Function(Error value) error,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Success value)? success,
//     TResult? Function(Error value)? error,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Success value)? success,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class Initial implements LoginState {
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
//     extends _$LoginStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//       _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of LoginState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingImpl implements Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'LoginState.loading()';
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
//     required TResult Function(LoginResponseModel data) success,
//     required TResult Function(String message) error,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(LoginResponseModel data)? success,
//     TResult? Function(String message)? error,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(LoginResponseModel data)? success,
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
//     required TResult Function(Success value) success,
//     required TResult Function(Error value) error,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Success value)? success,
//     TResult? Function(Error value)? error,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Success value)? success,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class Loading implements LoginState {
//   const factory Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$SuccessImplCopyWith<$Res> {
//   factory _$$SuccessImplCopyWith(
//           _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
//       __$$SuccessImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({LoginResponseModel data});
// }

// /// @nodoc
// class __$$SuccessImplCopyWithImpl<$Res>
//     extends _$LoginStateCopyWithImpl<$Res, _$SuccessImpl>
//     implements _$$SuccessImplCopyWith<$Res> {
//   __$$SuccessImplCopyWithImpl(
//       _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of LoginState
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
//               as LoginResponseModel,
//     ));
//   }
// }

// /// @nodoc

// class _$SuccessImpl implements Success {
//   const _$SuccessImpl(this.data);

//   @override
//   final LoginResponseModel data;

//   @override
//   String toString() {
//     return 'LoginState.success(data: $data)';
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

//   /// Create a copy of LoginState
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
//     required TResult Function(LoginResponseModel data) success,
//     required TResult Function(String message) error,
//   }) {
//     return success(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(LoginResponseModel data)? success,
//     TResult? Function(String message)? error,
//   }) {
//     return success?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(LoginResponseModel data)? success,
//     TResult Function(String message)? error,
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
//     required TResult Function(Initial value) initial,
//     required TResult Function(Loading value) loading,
//     required TResult Function(Success value) success,
//     required TResult Function(Error value) error,
//   }) {
//     return success(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Success value)? success,
//     TResult? Function(Error value)? error,
//   }) {
//     return success?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Success value)? success,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (success != null) {
//       return success(this);
//     }
//     return orElse();
//   }
// }

// abstract class Success implements LoginState {
//   const factory Success(final LoginResponseModel data) = _$SuccessImpl;

//   LoginResponseModel get data;

//   /// Create a copy of LoginState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
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
//     extends _$LoginStateCopyWithImpl<$Res, _$ErrorImpl>
//     implements _$$ErrorImplCopyWith<$Res> {
//   __$$ErrorImplCopyWithImpl(
//       _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of LoginState
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
//     return 'LoginState.error(message: $message)';
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

//   /// Create a copy of LoginState
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
//     required TResult Function(LoginResponseModel data) success,
//     required TResult Function(String message) error,
//   }) {
//     return error(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(LoginResponseModel data)? success,
//     TResult? Function(String message)? error,
//   }) {
//     return error?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(LoginResponseModel data)? success,
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
//     required TResult Function(Success value) success,
//     required TResult Function(Error value) error,
//   }) {
//     return error(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(Initial value)? initial,
//     TResult? Function(Loading value)? loading,
//     TResult? Function(Success value)? success,
//     TResult? Function(Error value)? error,
//   }) {
//     return error?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(Initial value)? initial,
//     TResult Function(Loading value)? loading,
//     TResult Function(Success value)? success,
//     TResult Function(Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (error != null) {
//       return error(this);
//     }
//     return orElse();
//   }
// }

// abstract class Error implements LoginState {
//   const factory Error(final String message) = _$ErrorImpl;

//   String get message;

//   /// Create a copy of LoginState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
