// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'register_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// /// @nodoc
// mixin _$RegisterEvent {
//   CreateAccountModel get data => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(CreateAccountModel data) register,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(CreateAccountModel data)? register,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(CreateAccountModel data)? register,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Register value) register,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Register value)? register,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Register value)? register,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;

//   /// Create a copy of RegisterEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   $RegisterEventCopyWith<RegisterEvent> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $RegisterEventCopyWith<$Res> {
//   factory $RegisterEventCopyWith(
//           RegisterEvent value, $Res Function(RegisterEvent) then) =
//       _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
//   @useResult
//   $Res call({CreateAccountModel data});
// }

// /// @nodoc
// class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
//     implements $RegisterEventCopyWith<$Res> {
//   _$RegisterEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of RegisterEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? data = null,
//   }) {
//     return _then(_value.copyWith(
//       data: null == data
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as CreateAccountModel,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$RegisterImplCopyWith<$Res>
//     implements $RegisterEventCopyWith<$Res> {
//   factory _$$RegisterImplCopyWith(
//           _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
//       __$$RegisterImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({CreateAccountModel data});
// }

// /// @nodoc
// class __$$RegisterImplCopyWithImpl<$Res>
//     extends _$RegisterEventCopyWithImpl<$Res, _$RegisterImpl>
//     implements _$$RegisterImplCopyWith<$Res> {
//   __$$RegisterImplCopyWithImpl(
//       _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of RegisterEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? data = null,
//   }) {
//     return _then(_$RegisterImpl(
//       null == data
//           ? _value.data
//           : data // ignore: cast_nullable_to_non_nullable
//               as CreateAccountModel,
//     ));
//   }
// }

// /// @nodoc

// class _$RegisterImpl implements _Register {
//   const _$RegisterImpl(this.data);

//   @override
//   final CreateAccountModel data;

//   @override
//   String toString() {
//     return 'RegisterEvent.register(data: $data)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$RegisterImpl &&
//             (identical(other.data, data) || other.data == data));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, data);

//   /// Create a copy of RegisterEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
//       __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(CreateAccountModel data) register,
//   }) {
//     return register(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(CreateAccountModel data)? register,
//   }) {
//     return register?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(CreateAccountModel data)? register,
//     required TResult orElse(),
//   }) {
//     if (register != null) {
//       return register(data);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Register value) register,
//   }) {
//     return register(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Register value)? register,
//   }) {
//     return register?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Register value)? register,
//     required TResult orElse(),
//   }) {
//     if (register != null) {
//       return register(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Register implements RegisterEvent {
//   const factory _Register(final CreateAccountModel data) = _$RegisterImpl;

//   @override
//   CreateAccountModel get data;

//   /// Create a copy of RegisterEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$RegisterState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(RegisterResponseModel data) success,
//     required TResult Function(String message) failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(RegisterResponseModel data)? success,
//     TResult? Function(String message)? failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(RegisterResponseModel data)? success,
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
// abstract class $RegisterStateCopyWith<$Res> {
//   factory $RegisterStateCopyWith(
//           RegisterState value, $Res Function(RegisterState) then) =
//       _$RegisterStateCopyWithImpl<$Res, RegisterState>;
// }

// /// @nodoc
// class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
//     implements $RegisterStateCopyWith<$Res> {
//   _$RegisterStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of RegisterState
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
//     extends _$RegisterStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//       _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of RegisterState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements _Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'RegisterState.initial()';
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
//     required TResult Function(RegisterResponseModel data) success,
//     required TResult Function(String message) failed,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(RegisterResponseModel data)? success,
//     TResult? Function(String message)? failed,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(RegisterResponseModel data)? success,
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

// abstract class _Initial implements RegisterState {
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
//     extends _$RegisterStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//       _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of RegisterState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingImpl implements _Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'RegisterState.loading()';
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
//     required TResult Function(RegisterResponseModel data) success,
//     required TResult Function(String message) failed,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(RegisterResponseModel data)? success,
//     TResult? Function(String message)? failed,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(RegisterResponseModel data)? success,
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

// abstract class _Loading implements RegisterState {
//   const factory _Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$SuccessImplCopyWith<$Res> {
//   factory _$$SuccessImplCopyWith(
//           _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
//       __$$SuccessImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({RegisterResponseModel data});
// }

// /// @nodoc
// class __$$SuccessImplCopyWithImpl<$Res>
//     extends _$RegisterStateCopyWithImpl<$Res, _$SuccessImpl>
//     implements _$$SuccessImplCopyWith<$Res> {
//   __$$SuccessImplCopyWithImpl(
//       _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of RegisterState
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
//               as RegisterResponseModel,
//     ));
//   }
// }

// /// @nodoc

// class _$SuccessImpl implements _Success {
//   const _$SuccessImpl(this.data);

//   @override
//   final RegisterResponseModel data;

//   @override
//   String toString() {
//     return 'RegisterState.success(data: $data)';
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

//   /// Create a copy of RegisterState
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
//     required TResult Function(RegisterResponseModel data) success,
//     required TResult Function(String message) failed,
//   }) {
//     return success(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(RegisterResponseModel data)? success,
//     TResult? Function(String message)? failed,
//   }) {
//     return success?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(RegisterResponseModel data)? success,
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

// abstract class _Success implements RegisterState {
//   const factory _Success(final RegisterResponseModel data) = _$SuccessImpl;

//   RegisterResponseModel get data;

//   /// Create a copy of RegisterState
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
//     extends _$RegisterStateCopyWithImpl<$Res, _$FailedImpl>
//     implements _$$FailedImplCopyWith<$Res> {
//   __$$FailedImplCopyWithImpl(
//       _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of RegisterState
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
//     return 'RegisterState.failed(message: $message)';
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

//   /// Create a copy of RegisterState
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
//     required TResult Function(RegisterResponseModel data) success,
//     required TResult Function(String message) failed,
//   }) {
//     return failed(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(RegisterResponseModel data)? success,
//     TResult? Function(String message)? failed,
//   }) {
//     return failed?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(RegisterResponseModel data)? success,
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

// abstract class _Failed implements RegisterState {
//   const factory _Failed(final String message) = _$FailedImpl;

//   String get message;

//   /// Create a copy of RegisterState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
