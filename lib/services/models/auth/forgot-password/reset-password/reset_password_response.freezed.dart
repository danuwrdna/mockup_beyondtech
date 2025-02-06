// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPasswordResponse _$ResetPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordResponse {
  @JsonKey(name: 'data')
  ResetPasswordData get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'statusCode')
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordResponseCopyWith<ResetPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordResponseCopyWith<$Res> {
  factory $ResetPasswordResponseCopyWith(ResetPasswordResponse value,
          $Res Function(ResetPasswordResponse) then) =
      _$ResetPasswordResponseCopyWithImpl<$Res, ResetPasswordResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') ResetPasswordData data,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'statusCode') String statusCode});

  $ResetPasswordDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ResetPasswordResponseCopyWithImpl<$Res,
        $Val extends ResetPasswordResponse>
    implements $ResetPasswordResponseCopyWith<$Res> {
  _$ResetPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordResponse
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
              as ResetPasswordData,
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

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResetPasswordDataCopyWith<$Res> get data {
    return $ResetPasswordDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResetPasswordResponseImplCopyWith<$Res>
    implements $ResetPasswordResponseCopyWith<$Res> {
  factory _$$ResetPasswordResponseImplCopyWith(
          _$ResetPasswordResponseImpl value,
          $Res Function(_$ResetPasswordResponseImpl) then) =
      __$$ResetPasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') ResetPasswordData data,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'statusCode') String statusCode});

  @override
  $ResetPasswordDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResetPasswordResponseImplCopyWithImpl<$Res>
    extends _$ResetPasswordResponseCopyWithImpl<$Res,
        _$ResetPasswordResponseImpl>
    implements _$$ResetPasswordResponseImplCopyWith<$Res> {
  __$$ResetPasswordResponseImplCopyWithImpl(_$ResetPasswordResponseImpl _value,
      $Res Function(_$ResetPasswordResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$ResetPasswordResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResetPasswordData,
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
class _$ResetPasswordResponseImpl implements _ResetPasswordResponse {
  const _$ResetPasswordResponseImpl(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'statusCode') required this.statusCode});

  factory _$ResetPasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordResponseImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final ResetPasswordData data;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'statusCode')
  final String statusCode;

  @override
  String toString() {
    return 'ResetPasswordResponse(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordResponseImplCopyWith<_$ResetPasswordResponseImpl>
      get copyWith => __$$ResetPasswordResponseImplCopyWithImpl<
          _$ResetPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordResponse implements ResetPasswordResponse {
  const factory _ResetPasswordResponse(
          {@JsonKey(name: 'data') required final ResetPasswordData data,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'statusCode') required final String statusCode}) =
      _$ResetPasswordResponseImpl;

  factory _ResetPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  ResetPasswordData get data;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'statusCode')
  String get statusCode;

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordResponseImplCopyWith<_$ResetPasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResetPasswordData _$ResetPasswordDataFromJson(Map<String, dynamic> json) {
  return _ResetPasswordData.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordData {
  @JsonKey(name: 'StatusCode')
  String get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordDataCopyWith<ResetPasswordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordDataCopyWith<$Res> {
  factory $ResetPasswordDataCopyWith(
          ResetPasswordData value, $Res Function(ResetPasswordData) then) =
      _$ResetPasswordDataCopyWithImpl<$Res, ResetPasswordData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'StatusCode') String statusCode,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$ResetPasswordDataCopyWithImpl<$Res, $Val extends ResetPasswordData>
    implements $ResetPasswordDataCopyWith<$Res> {
  _$ResetPasswordDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordData
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
abstract class _$$ResetPasswordDataImplCopyWith<$Res>
    implements $ResetPasswordDataCopyWith<$Res> {
  factory _$$ResetPasswordDataImplCopyWith(_$ResetPasswordDataImpl value,
          $Res Function(_$ResetPasswordDataImpl) then) =
      __$$ResetPasswordDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'StatusCode') String statusCode,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$ResetPasswordDataImplCopyWithImpl<$Res>
    extends _$ResetPasswordDataCopyWithImpl<$Res, _$ResetPasswordDataImpl>
    implements _$$ResetPasswordDataImplCopyWith<$Res> {
  __$$ResetPasswordDataImplCopyWithImpl(_$ResetPasswordDataImpl _value,
      $Res Function(_$ResetPasswordDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_$ResetPasswordDataImpl(
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
class _$ResetPasswordDataImpl implements _ResetPasswordData {
  const _$ResetPasswordDataImpl(
      {@JsonKey(name: 'StatusCode') required this.statusCode,
      @JsonKey(name: 'message') required this.message});

  factory _$ResetPasswordDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordDataImplFromJson(json);

  @override
  @JsonKey(name: 'StatusCode')
  final String statusCode;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'ResetPasswordData(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordDataImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  /// Create a copy of ResetPasswordData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordDataImplCopyWith<_$ResetPasswordDataImpl> get copyWith =>
      __$$ResetPasswordDataImplCopyWithImpl<_$ResetPasswordDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordDataImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordData implements ResetPasswordData {
  const factory _ResetPasswordData(
          {@JsonKey(name: 'StatusCode') required final String statusCode,
          @JsonKey(name: 'message') required final String message}) =
      _$ResetPasswordDataImpl;

  factory _ResetPasswordData.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordDataImpl.fromJson;

  @override
  @JsonKey(name: 'StatusCode')
  String get statusCode;
  @override
  @JsonKey(name: 'message')
  String get message;

  /// Create a copy of ResetPasswordData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordDataImplCopyWith<_$ResetPasswordDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
