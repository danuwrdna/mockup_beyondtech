// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'referral_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// /// @nodoc
// mixin _$ReferralEvent {
//   String get referralCode => throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String referralCode) find,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String referralCode)? find,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String referralCode)? find,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Find value) find,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Find value)? find,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Find value)? find,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;

//   /// Create a copy of ReferralEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   $ReferralEventCopyWith<ReferralEvent> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $ReferralEventCopyWith<$Res> {
//   factory $ReferralEventCopyWith(
//           ReferralEvent value, $Res Function(ReferralEvent) then) =
//       _$ReferralEventCopyWithImpl<$Res, ReferralEvent>;
//   @useResult
//   $Res call({String referralCode});
// }

// /// @nodoc
// class _$ReferralEventCopyWithImpl<$Res, $Val extends ReferralEvent>
//     implements $ReferralEventCopyWith<$Res> {
//   _$ReferralEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of ReferralEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? referralCode = null,
//   }) {
//     return _then(_value.copyWith(
//       referralCode: null == referralCode
//           ? _value.referralCode
//           : referralCode // ignore: cast_nullable_to_non_nullable
//               as String,
//     ) as $Val);
//   }
// }

// /// @nodoc
// abstract class _$$FindImplCopyWith<$Res>
//     implements $ReferralEventCopyWith<$Res> {
//   factory _$$FindImplCopyWith(
//           _$FindImpl value, $Res Function(_$FindImpl) then) =
//       __$$FindImplCopyWithImpl<$Res>;
//   @override
//   @useResult
//   $Res call({String referralCode});
// }

// /// @nodoc
// class __$$FindImplCopyWithImpl<$Res>
//     extends _$ReferralEventCopyWithImpl<$Res, _$FindImpl>
//     implements _$$FindImplCopyWith<$Res> {
//   __$$FindImplCopyWithImpl(_$FindImpl _value, $Res Function(_$FindImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of ReferralEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? referralCode = null,
//   }) {
//     return _then(_$FindImpl(
//       null == referralCode
//           ? _value.referralCode
//           : referralCode // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$FindImpl implements _Find {
//   const _$FindImpl(this.referralCode);

//   @override
//   final String referralCode;

//   @override
//   String toString() {
//     return 'ReferralEvent.find(referralCode: $referralCode)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$FindImpl &&
//             (identical(other.referralCode, referralCode) ||
//                 other.referralCode == referralCode));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, referralCode);

//   /// Create a copy of ReferralEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$FindImplCopyWith<_$FindImpl> get copyWith =>
//       __$$FindImplCopyWithImpl<_$FindImpl>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String referralCode) find,
//   }) {
//     return find(referralCode);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String referralCode)? find,
//   }) {
//     return find?.call(referralCode);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String referralCode)? find,
//     required TResult orElse(),
//   }) {
//     if (find != null) {
//       return find(referralCode);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Find value) find,
//   }) {
//     return find(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Find value)? find,
//   }) {
//     return find?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Find value)? find,
//     required TResult orElse(),
//   }) {
//     if (find != null) {
//       return find(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Find implements ReferralEvent {
//   const factory _Find(final String referralCode) = _$FindImpl;

//   @override
//   String get referralCode;

//   /// Create a copy of ReferralEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FindImplCopyWith<_$FindImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$ReferralState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(FindReferralResponseModel data) success,
//     required TResult Function(String message) error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(FindReferralResponseModel data)? success,
//     TResult? Function(String message)? error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(FindReferralResponseModel data)? success,
//     TResult Function(String message)? error,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Success value) success,
//     required TResult Function(_Error value) error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? success,
//     TResult? Function(_Error value)? error,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? success,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $ReferralStateCopyWith<$Res> {
//   factory $ReferralStateCopyWith(
//           ReferralState value, $Res Function(ReferralState) then) =
//       _$ReferralStateCopyWithImpl<$Res, ReferralState>;
// }

// /// @nodoc
// class _$ReferralStateCopyWithImpl<$Res, $Val extends ReferralState>
//     implements $ReferralStateCopyWith<$Res> {
//   _$ReferralStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of ReferralState
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
//     extends _$ReferralStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//       _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of ReferralState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements _Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'ReferralState.initial()';
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
//     required TResult Function(FindReferralResponseModel data) success,
//     required TResult Function(String message) error,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(FindReferralResponseModel data)? success,
//     TResult? Function(String message)? error,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(FindReferralResponseModel data)? success,
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
//     required TResult Function(_Success value) success,
//     required TResult Function(_Error value) error,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? success,
//     TResult? Function(_Error value)? error,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? success,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements ReferralState {
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
//     extends _$ReferralStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//       _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of ReferralState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingImpl implements _Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'ReferralState.loading()';
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
//     required TResult Function(FindReferralResponseModel data) success,
//     required TResult Function(String message) error,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(FindReferralResponseModel data)? success,
//     TResult? Function(String message)? error,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(FindReferralResponseModel data)? success,
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
//     required TResult Function(_Success value) success,
//     required TResult Function(_Error value) error,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? success,
//     TResult? Function(_Error value)? error,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? success,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements ReferralState {
//   const factory _Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$SuccessImplCopyWith<$Res> {
//   factory _$$SuccessImplCopyWith(
//           _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
//       __$$SuccessImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({FindReferralResponseModel data});
// }

// /// @nodoc
// class __$$SuccessImplCopyWithImpl<$Res>
//     extends _$ReferralStateCopyWithImpl<$Res, _$SuccessImpl>
//     implements _$$SuccessImplCopyWith<$Res> {
//   __$$SuccessImplCopyWithImpl(
//       _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of ReferralState
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
//               as FindReferralResponseModel,
//     ));
//   }
// }

// /// @nodoc

// class _$SuccessImpl implements _Success {
//   const _$SuccessImpl(this.data);

//   @override
//   final FindReferralResponseModel data;

//   @override
//   String toString() {
//     return 'ReferralState.success(data: $data)';
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

//   /// Create a copy of ReferralState
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
//     required TResult Function(FindReferralResponseModel data) success,
//     required TResult Function(String message) error,
//   }) {
//     return success(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(FindReferralResponseModel data)? success,
//     TResult? Function(String message)? error,
//   }) {
//     return success?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(FindReferralResponseModel data)? success,
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
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Success value) success,
//     required TResult Function(_Error value) error,
//   }) {
//     return success(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? success,
//     TResult? Function(_Error value)? error,
//   }) {
//     return success?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? success,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (success != null) {
//       return success(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Success implements ReferralState {
//   const factory _Success(final FindReferralResponseModel data) = _$SuccessImpl;

//   FindReferralResponseModel get data;

//   /// Create a copy of ReferralState
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
//     extends _$ReferralStateCopyWithImpl<$Res, _$ErrorImpl>
//     implements _$$ErrorImplCopyWith<$Res> {
//   __$$ErrorImplCopyWithImpl(
//       _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of ReferralState
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
//     return 'ReferralState.error(message: $message)';
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

//   /// Create a copy of ReferralState
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
//     required TResult Function(FindReferralResponseModel data) success,
//     required TResult Function(String message) error,
//   }) {
//     return error(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(FindReferralResponseModel data)? success,
//     TResult? Function(String message)? error,
//   }) {
//     return error?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(FindReferralResponseModel data)? success,
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
//     required TResult Function(_Success value) success,
//     required TResult Function(_Error value) error,
//   }) {
//     return error(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? success,
//     TResult? Function(_Error value)? error,
//   }) {
//     return error?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? success,
//     TResult Function(_Error value)? error,
//     required TResult orElse(),
//   }) {
//     if (error != null) {
//       return error(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Error implements ReferralState {
//   const factory _Error(final String message) = _$ErrorImpl;

//   String get message;

//   /// Create a copy of ReferralState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
