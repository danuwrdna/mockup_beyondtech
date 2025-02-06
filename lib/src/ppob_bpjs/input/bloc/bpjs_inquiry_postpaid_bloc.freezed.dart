// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'bpjs_inquiry_postpaid_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

// /// @nodoc
// mixin _$BpjsInquiryPostpaidEvent {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String productId, String packageId,
//             String denomId, String customerNumber)
//         getBpjsPostpaid,
//     required TResult Function() reset,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String productId, String packageId, String denomId,
//             String customerNumber)?
//         getBpjsPostpaid,
//     TResult? Function()? reset,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String productId, String packageId, String denomId,
//             String customerNumber)?
//         getBpjsPostpaid,
//     TResult Function()? reset,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetBpjsPostpaid value) getBpjsPostpaid,
//     required TResult Function(_Reset value) reset,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetBpjsPostpaid value)? getBpjsPostpaid,
//     TResult? Function(_Reset value)? reset,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetBpjsPostpaid value)? getBpjsPostpaid,
//     TResult Function(_Reset value)? reset,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $BpjsInquiryPostpaidEventCopyWith<$Res> {
//   factory $BpjsInquiryPostpaidEventCopyWith(BpjsInquiryPostpaidEvent value,
//           $Res Function(BpjsInquiryPostpaidEvent) then) =
//       _$BpjsInquiryPostpaidEventCopyWithImpl<$Res, BpjsInquiryPostpaidEvent>;
// }

// /// @nodoc
// class _$BpjsInquiryPostpaidEventCopyWithImpl<$Res,
//         $Val extends BpjsInquiryPostpaidEvent>
//     implements $BpjsInquiryPostpaidEventCopyWith<$Res> {
//   _$BpjsInquiryPostpaidEventCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of BpjsInquiryPostpaidEvent
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc
// abstract class _$$GetBpjsPostpaidImplCopyWith<$Res> {
//   factory _$$GetBpjsPostpaidImplCopyWith(_$GetBpjsPostpaidImpl value,
//           $Res Function(_$GetBpjsPostpaidImpl) then) =
//       __$$GetBpjsPostpaidImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call(
//       {String productId,
//       String packageId,
//       String denomId,
//       String customerNumber});
// }

// /// @nodoc
// class __$$GetBpjsPostpaidImplCopyWithImpl<$Res>
//     extends _$BpjsInquiryPostpaidEventCopyWithImpl<$Res, _$GetBpjsPostpaidImpl>
//     implements _$$GetBpjsPostpaidImplCopyWith<$Res> {
//   __$$GetBpjsPostpaidImplCopyWithImpl(
//       _$GetBpjsPostpaidImpl _value, $Res Function(_$GetBpjsPostpaidImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of BpjsInquiryPostpaidEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? productId = null,
//     Object? packageId = null,
//     Object? denomId = null,
//     Object? customerNumber = null,
//   }) {
//     return _then(_$GetBpjsPostpaidImpl(
//       productId: null == productId
//           ? _value.productId
//           : productId // ignore: cast_nullable_to_non_nullable
//               as String,
//       packageId: null == packageId
//           ? _value.packageId
//           : packageId // ignore: cast_nullable_to_non_nullable
//               as String,
//       denomId: null == denomId
//           ? _value.denomId
//           : denomId // ignore: cast_nullable_to_non_nullable
//               as String,
//       customerNumber: null == customerNumber
//           ? _value.customerNumber
//           : customerNumber // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _$GetBpjsPostpaidImpl implements _GetBpjsPostpaid {
//   const _$GetBpjsPostpaidImpl(
//       {required this.productId,
//       required this.packageId,
//       required this.denomId,
//       required this.customerNumber});

//   @override
//   final String productId;
//   @override
//   final String packageId;
//   @override
//   final String denomId;
//   @override
//   final String customerNumber;

//   @override
//   String toString() {
//     return 'BpjsInquiryPostpaidEvent.getBpjsPostpaid(productId: $productId, packageId: $packageId, denomId: $denomId, customerNumber: $customerNumber)';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$GetBpjsPostpaidImpl &&
//             (identical(other.productId, productId) ||
//                 other.productId == productId) &&
//             (identical(other.packageId, packageId) ||
//                 other.packageId == packageId) &&
//             (identical(other.denomId, denomId) || other.denomId == denomId) &&
//             (identical(other.customerNumber, customerNumber) ||
//                 other.customerNumber == customerNumber));
//   }

//   @override
//   int get hashCode =>
//       Object.hash(runtimeType, productId, packageId, denomId, customerNumber);

//   /// Create a copy of BpjsInquiryPostpaidEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @override
//   @pragma('vm:prefer-inline')
//   _$$GetBpjsPostpaidImplCopyWith<_$GetBpjsPostpaidImpl> get copyWith =>
//       __$$GetBpjsPostpaidImplCopyWithImpl<_$GetBpjsPostpaidImpl>(
//           this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String productId, String packageId,
//             String denomId, String customerNumber)
//         getBpjsPostpaid,
//     required TResult Function() reset,
//   }) {
//     return getBpjsPostpaid(productId, packageId, denomId, customerNumber);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String productId, String packageId, String denomId,
//             String customerNumber)?
//         getBpjsPostpaid,
//     TResult? Function()? reset,
//   }) {
//     return getBpjsPostpaid?.call(productId, packageId, denomId, customerNumber);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String productId, String packageId, String denomId,
//             String customerNumber)?
//         getBpjsPostpaid,
//     TResult Function()? reset,
//     required TResult orElse(),
//   }) {
//     if (getBpjsPostpaid != null) {
//       return getBpjsPostpaid(productId, packageId, denomId, customerNumber);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetBpjsPostpaid value) getBpjsPostpaid,
//     required TResult Function(_Reset value) reset,
//   }) {
//     return getBpjsPostpaid(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetBpjsPostpaid value)? getBpjsPostpaid,
//     TResult? Function(_Reset value)? reset,
//   }) {
//     return getBpjsPostpaid?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetBpjsPostpaid value)? getBpjsPostpaid,
//     TResult Function(_Reset value)? reset,
//     required TResult orElse(),
//   }) {
//     if (getBpjsPostpaid != null) {
//       return getBpjsPostpaid(this);
//     }
//     return orElse();
//   }
// }

// abstract class _GetBpjsPostpaid implements BpjsInquiryPostpaidEvent {
//   const factory _GetBpjsPostpaid(
//       {required final String productId,
//       required final String packageId,
//       required final String denomId,
//       required final String customerNumber}) = _$GetBpjsPostpaidImpl;

//   String get productId;
//   String get packageId;
//   String get denomId;
//   String get customerNumber;

//   /// Create a copy of BpjsInquiryPostpaidEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$GetBpjsPostpaidImplCopyWith<_$GetBpjsPostpaidImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class _$$ResetImplCopyWith<$Res> {
//   factory _$$ResetImplCopyWith(
//           _$ResetImpl value, $Res Function(_$ResetImpl) then) =
//       __$$ResetImplCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$ResetImplCopyWithImpl<$Res>
//     extends _$BpjsInquiryPostpaidEventCopyWithImpl<$Res, _$ResetImpl>
//     implements _$$ResetImplCopyWith<$Res> {
//   __$$ResetImplCopyWithImpl(
//       _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of BpjsInquiryPostpaidEvent
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$ResetImpl implements _Reset {
//   const _$ResetImpl();

//   @override
//   String toString() {
//     return 'BpjsInquiryPostpaidEvent.reset()';
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _$ResetImpl);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function(String productId, String packageId,
//             String denomId, String customerNumber)
//         getBpjsPostpaid,
//     required TResult Function() reset,
//   }) {
//     return reset();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function(String productId, String packageId, String denomId,
//             String customerNumber)?
//         getBpjsPostpaid,
//     TResult? Function()? reset,
//   }) {
//     return reset?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function(String productId, String packageId, String denomId,
//             String customerNumber)?
//         getBpjsPostpaid,
//     TResult Function()? reset,
//     required TResult orElse(),
//   }) {
//     if (reset != null) {
//       return reset();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_GetBpjsPostpaid value) getBpjsPostpaid,
//     required TResult Function(_Reset value) reset,
//   }) {
//     return reset(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_GetBpjsPostpaid value)? getBpjsPostpaid,
//     TResult? Function(_Reset value)? reset,
//   }) {
//     return reset?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_GetBpjsPostpaid value)? getBpjsPostpaid,
//     TResult Function(_Reset value)? reset,
//     required TResult orElse(),
//   }) {
//     if (reset != null) {
//       return reset(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Reset implements BpjsInquiryPostpaidEvent {
//   const factory _Reset() = _$ResetImpl;
// }

// /// @nodoc
// mixin _$BpjsInquiryPostpaidState {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() initial,
//     required TResult Function() loading,
//     required TResult Function(InquiryPostpaidResponseModel data)
//         getBpjsPostpaidSuccess,
//     required TResult Function(String message) failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(InquiryPostpaidResponseModel data)?
//         getBpjsPostpaidSuccess,
//     TResult? Function(String message)? failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(InquiryPostpaidResponseModel data)? getBpjsPostpaidSuccess,
//     TResult Function(String message)? failed,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Success value) getBpjsPostpaidSuccess,
//     required TResult Function(_Failed value) failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? getBpjsPostpaidSuccess,
//     TResult? Function(_Failed value)? failed,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? getBpjsPostpaidSuccess,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $BpjsInquiryPostpaidStateCopyWith<$Res> {
//   factory $BpjsInquiryPostpaidStateCopyWith(BpjsInquiryPostpaidState value,
//           $Res Function(BpjsInquiryPostpaidState) then) =
//       _$BpjsInquiryPostpaidStateCopyWithImpl<$Res, BpjsInquiryPostpaidState>;
// }

// /// @nodoc
// class _$BpjsInquiryPostpaidStateCopyWithImpl<$Res,
//         $Val extends BpjsInquiryPostpaidState>
//     implements $BpjsInquiryPostpaidStateCopyWith<$Res> {
//   _$BpjsInquiryPostpaidStateCopyWithImpl(this._value, this._then);

//   // ignore: unused_field
//   final $Val _value;
//   // ignore: unused_field
//   final $Res Function($Val) _then;

//   /// Create a copy of BpjsInquiryPostpaidState
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
//     extends _$BpjsInquiryPostpaidStateCopyWithImpl<$Res, _$InitialImpl>
//     implements _$$InitialImplCopyWith<$Res> {
//   __$$InitialImplCopyWithImpl(
//       _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of BpjsInquiryPostpaidState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$InitialImpl implements _Initial {
//   const _$InitialImpl();

//   @override
//   String toString() {
//     return 'BpjsInquiryPostpaidState.initial()';
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
//     required TResult Function(InquiryPostpaidResponseModel data)
//         getBpjsPostpaidSuccess,
//     required TResult Function(String message) failed,
//   }) {
//     return initial();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(InquiryPostpaidResponseModel data)?
//         getBpjsPostpaidSuccess,
//     TResult? Function(String message)? failed,
//   }) {
//     return initial?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(InquiryPostpaidResponseModel data)? getBpjsPostpaidSuccess,
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
//     required TResult Function(_Success value) getBpjsPostpaidSuccess,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return initial(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? getBpjsPostpaidSuccess,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return initial?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? getBpjsPostpaidSuccess,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (initial != null) {
//       return initial(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Initial implements BpjsInquiryPostpaidState {
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
//     extends _$BpjsInquiryPostpaidStateCopyWithImpl<$Res, _$LoadingImpl>
//     implements _$$LoadingImplCopyWith<$Res> {
//   __$$LoadingImplCopyWithImpl(
//       _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of BpjsInquiryPostpaidState
//   /// with the given fields replaced by the non-null parameter values.
// }

// /// @nodoc

// class _$LoadingImpl implements _Loading {
//   const _$LoadingImpl();

//   @override
//   String toString() {
//     return 'BpjsInquiryPostpaidState.loading()';
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
//     required TResult Function(InquiryPostpaidResponseModel data)
//         getBpjsPostpaidSuccess,
//     required TResult Function(String message) failed,
//   }) {
//     return loading();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(InquiryPostpaidResponseModel data)?
//         getBpjsPostpaidSuccess,
//     TResult? Function(String message)? failed,
//   }) {
//     return loading?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(InquiryPostpaidResponseModel data)? getBpjsPostpaidSuccess,
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
//     required TResult Function(_Success value) getBpjsPostpaidSuccess,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return loading(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? getBpjsPostpaidSuccess,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return loading?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? getBpjsPostpaidSuccess,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (loading != null) {
//       return loading(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Loading implements BpjsInquiryPostpaidState {
//   const factory _Loading() = _$LoadingImpl;
// }

// /// @nodoc
// abstract class _$$SuccessImplCopyWith<$Res> {
//   factory _$$SuccessImplCopyWith(
//           _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
//       __$$SuccessImplCopyWithImpl<$Res>;
//   @useResult
//   $Res call({InquiryPostpaidResponseModel data});

//   $InquiryPostpaidResponseModelCopyWith<$Res> get data;
// }

// /// @nodoc
// class __$$SuccessImplCopyWithImpl<$Res>
//     extends _$BpjsInquiryPostpaidStateCopyWithImpl<$Res, _$SuccessImpl>
//     implements _$$SuccessImplCopyWith<$Res> {
//   __$$SuccessImplCopyWithImpl(
//       _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of BpjsInquiryPostpaidState
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
//               as InquiryPostpaidResponseModel,
//     ));
//   }

//   /// Create a copy of BpjsInquiryPostpaidState
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @pragma('vm:prefer-inline')
//   $InquiryPostpaidResponseModelCopyWith<$Res> get data {
//     return $InquiryPostpaidResponseModelCopyWith<$Res>(_value.data, (value) {
//       return _then(_value.copyWith(data: value));
//     });
//   }
// }

// /// @nodoc

// class _$SuccessImpl implements _Success {
//   const _$SuccessImpl(this.data);

//   @override
//   final InquiryPostpaidResponseModel data;

//   @override
//   String toString() {
//     return 'BpjsInquiryPostpaidState.getBpjsPostpaidSuccess(data: $data)';
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

//   /// Create a copy of BpjsInquiryPostpaidState
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
//     required TResult Function(InquiryPostpaidResponseModel data)
//         getBpjsPostpaidSuccess,
//     required TResult Function(String message) failed,
//   }) {
//     return getBpjsPostpaidSuccess(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(InquiryPostpaidResponseModel data)?
//         getBpjsPostpaidSuccess,
//     TResult? Function(String message)? failed,
//   }) {
//     return getBpjsPostpaidSuccess?.call(data);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(InquiryPostpaidResponseModel data)? getBpjsPostpaidSuccess,
//     TResult Function(String message)? failed,
//     required TResult orElse(),
//   }) {
//     if (getBpjsPostpaidSuccess != null) {
//       return getBpjsPostpaidSuccess(data);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(_Initial value) initial,
//     required TResult Function(_Loading value) loading,
//     required TResult Function(_Success value) getBpjsPostpaidSuccess,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return getBpjsPostpaidSuccess(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? getBpjsPostpaidSuccess,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return getBpjsPostpaidSuccess?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? getBpjsPostpaidSuccess,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (getBpjsPostpaidSuccess != null) {
//       return getBpjsPostpaidSuccess(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Success implements BpjsInquiryPostpaidState {
//   const factory _Success(final InquiryPostpaidResponseModel data) =
//       _$SuccessImpl;

//   InquiryPostpaidResponseModel get data;

//   /// Create a copy of BpjsInquiryPostpaidState
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
//     extends _$BpjsInquiryPostpaidStateCopyWithImpl<$Res, _$FailedImpl>
//     implements _$$FailedImplCopyWith<$Res> {
//   __$$FailedImplCopyWithImpl(
//       _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
//       : super(_value, _then);

//   /// Create a copy of BpjsInquiryPostpaidState
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
//     return 'BpjsInquiryPostpaidState.failed(message: $message)';
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

//   /// Create a copy of BpjsInquiryPostpaidState
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
//     required TResult Function(InquiryPostpaidResponseModel data)
//         getBpjsPostpaidSuccess,
//     required TResult Function(String message) failed,
//   }) {
//     return failed(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult? Function()? initial,
//     TResult? Function()? loading,
//     TResult? Function(InquiryPostpaidResponseModel data)?
//         getBpjsPostpaidSuccess,
//     TResult? Function(String message)? failed,
//   }) {
//     return failed?.call(message);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? initial,
//     TResult Function()? loading,
//     TResult Function(InquiryPostpaidResponseModel data)? getBpjsPostpaidSuccess,
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
//     required TResult Function(_Success value) getBpjsPostpaidSuccess,
//     required TResult Function(_Failed value) failed,
//   }) {
//     return failed(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult? Function(_Initial value)? initial,
//     TResult? Function(_Loading value)? loading,
//     TResult? Function(_Success value)? getBpjsPostpaidSuccess,
//     TResult? Function(_Failed value)? failed,
//   }) {
//     return failed?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(_Initial value)? initial,
//     TResult Function(_Loading value)? loading,
//     TResult Function(_Success value)? getBpjsPostpaidSuccess,
//     TResult Function(_Failed value)? failed,
//     required TResult orElse(),
//   }) {
//     if (failed != null) {
//       return failed(this);
//     }
//     return orElse();
//   }
// }

// abstract class _Failed implements BpjsInquiryPostpaidState {
//   const factory _Failed(final String message) = _$FailedImpl;

//   String get message;

//   /// Create a copy of BpjsInquiryPostpaidState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
//       throw _privateConstructorUsedError;
// }
