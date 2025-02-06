// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_profile_picture_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeProfilePictureResponseModel _$ChangeProfilePictureResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ChangeProfilePictureResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ChangeProfilePictureResponseModel {
  @JsonKey(name: "data")
  ChangeProfilePictureResponseData get data =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this ChangeProfilePictureResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangeProfilePictureResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeProfilePictureResponseModelCopyWith<ChangeProfilePictureResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeProfilePictureResponseModelCopyWith<$Res> {
  factory $ChangeProfilePictureResponseModelCopyWith(
          ChangeProfilePictureResponseModel value,
          $Res Function(ChangeProfilePictureResponseModel) then) =
      _$ChangeProfilePictureResponseModelCopyWithImpl<$Res,
          ChangeProfilePictureResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") ChangeProfilePictureResponseData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "statusCode") String statusCode});

  $ChangeProfilePictureResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ChangeProfilePictureResponseModelCopyWithImpl<$Res,
        $Val extends ChangeProfilePictureResponseModel>
    implements $ChangeProfilePictureResponseModelCopyWith<$Res> {
  _$ChangeProfilePictureResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeProfilePictureResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChangeProfilePictureResponseData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ChangeProfilePictureResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChangeProfilePictureResponseDataCopyWith<$Res> get data {
    return $ChangeProfilePictureResponseDataCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeProfilePictureResponseModelImplCopyWith<$Res>
    implements $ChangeProfilePictureResponseModelCopyWith<$Res> {
  factory _$$ChangeProfilePictureResponseModelImplCopyWith(
          _$ChangeProfilePictureResponseModelImpl value,
          $Res Function(_$ChangeProfilePictureResponseModelImpl) then) =
      __$$ChangeProfilePictureResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") ChangeProfilePictureResponseData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "statusCode") String statusCode});

  @override
  $ChangeProfilePictureResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChangeProfilePictureResponseModelImplCopyWithImpl<$Res>
    extends _$ChangeProfilePictureResponseModelCopyWithImpl<$Res,
        _$ChangeProfilePictureResponseModelImpl>
    implements _$$ChangeProfilePictureResponseModelImplCopyWith<$Res> {
  __$$ChangeProfilePictureResponseModelImplCopyWithImpl(
      _$ChangeProfilePictureResponseModelImpl _value,
      $Res Function(_$ChangeProfilePictureResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeProfilePictureResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$ChangeProfilePictureResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChangeProfilePictureResponseData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeProfilePictureResponseModelImpl
    implements _ChangeProfilePictureResponseModel {
  const _$ChangeProfilePictureResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "statusCode") required this.statusCode});

  factory _$ChangeProfilePictureResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChangeProfilePictureResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final ChangeProfilePictureResponseData data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "statusCode")
  final String statusCode;

  @override
  String toString() {
    return 'ChangeProfilePictureResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProfilePictureResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of ChangeProfilePictureResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeProfilePictureResponseModelImplCopyWith<
          _$ChangeProfilePictureResponseModelImpl>
      get copyWith => __$$ChangeProfilePictureResponseModelImplCopyWithImpl<
          _$ChangeProfilePictureResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeProfilePictureResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ChangeProfilePictureResponseModel
    implements ChangeProfilePictureResponseModel {
  const factory _ChangeProfilePictureResponseModel(
          {@JsonKey(name: "data")
          required final ChangeProfilePictureResponseData data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "statusCode") required final String statusCode}) =
      _$ChangeProfilePictureResponseModelImpl;

  factory _ChangeProfilePictureResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$ChangeProfilePictureResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  ChangeProfilePictureResponseData get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "statusCode")
  String get statusCode;

  /// Create a copy of ChangeProfilePictureResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeProfilePictureResponseModelImplCopyWith<
          _$ChangeProfilePictureResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChangeProfilePictureResponseData _$ChangeProfilePictureResponseDataFromJson(
    Map<String, dynamic> json) {
  return _ChangeProfilePictureResponseData.fromJson(json);
}

/// @nodoc
mixin _$ChangeProfilePictureResponseData {
  @JsonKey(name: "statusCode")
  String get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ChangeProfilePictureResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangeProfilePictureResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeProfilePictureResponseDataCopyWith<ChangeProfilePictureResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeProfilePictureResponseDataCopyWith<$Res> {
  factory $ChangeProfilePictureResponseDataCopyWith(
          ChangeProfilePictureResponseData value,
          $Res Function(ChangeProfilePictureResponseData) then) =
      _$ChangeProfilePictureResponseDataCopyWithImpl<$Res,
          ChangeProfilePictureResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") String statusCode,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class _$ChangeProfilePictureResponseDataCopyWithImpl<$Res,
        $Val extends ChangeProfilePictureResponseData>
    implements $ChangeProfilePictureResponseDataCopyWith<$Res> {
  _$ChangeProfilePictureResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeProfilePictureResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeProfilePictureResponseDataImplCopyWith<$Res>
    implements $ChangeProfilePictureResponseDataCopyWith<$Res> {
  factory _$$ChangeProfilePictureResponseDataImplCopyWith(
          _$ChangeProfilePictureResponseDataImpl value,
          $Res Function(_$ChangeProfilePictureResponseDataImpl) then) =
      __$$ChangeProfilePictureResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") String statusCode,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class __$$ChangeProfilePictureResponseDataImplCopyWithImpl<$Res>
    extends _$ChangeProfilePictureResponseDataCopyWithImpl<$Res,
        _$ChangeProfilePictureResponseDataImpl>
    implements _$$ChangeProfilePictureResponseDataImplCopyWith<$Res> {
  __$$ChangeProfilePictureResponseDataImplCopyWithImpl(
      _$ChangeProfilePictureResponseDataImpl _value,
      $Res Function(_$ChangeProfilePictureResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeProfilePictureResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_$ChangeProfilePictureResponseDataImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeProfilePictureResponseDataImpl
    implements _ChangeProfilePictureResponseData {
  const _$ChangeProfilePictureResponseDataImpl(
      {@JsonKey(name: "statusCode") required this.statusCode,
      @JsonKey(name: "message") required this.message});

  factory _$ChangeProfilePictureResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChangeProfilePictureResponseDataImplFromJson(json);

  @override
  @JsonKey(name: "statusCode")
  final String statusCode;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'ChangeProfilePictureResponseData(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProfilePictureResponseDataImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  /// Create a copy of ChangeProfilePictureResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeProfilePictureResponseDataImplCopyWith<
          _$ChangeProfilePictureResponseDataImpl>
      get copyWith => __$$ChangeProfilePictureResponseDataImplCopyWithImpl<
          _$ChangeProfilePictureResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeProfilePictureResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ChangeProfilePictureResponseData
    implements ChangeProfilePictureResponseData {
  const factory _ChangeProfilePictureResponseData(
          {@JsonKey(name: "statusCode") required final String statusCode,
          @JsonKey(name: "message") required final String message}) =
      _$ChangeProfilePictureResponseDataImpl;

  factory _ChangeProfilePictureResponseData.fromJson(
          Map<String, dynamic> json) =
      _$ChangeProfilePictureResponseDataImpl.fromJson;

  @override
  @JsonKey(name: "statusCode")
  String get statusCode;
  @override
  @JsonKey(name: "message")
  String get message;

  /// Create a copy of ChangeProfilePictureResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeProfilePictureResponseDataImplCopyWith<
          _$ChangeProfilePictureResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
