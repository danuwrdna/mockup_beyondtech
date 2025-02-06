// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_reset_validation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenResetValidationResponse _$TokenResetValidationResponseFromJson(
    Map<String, dynamic> json) {
  return _TokenResetValidationResponse.fromJson(json);
}

/// @nodoc
mixin _$TokenResetValidationResponse {
  @JsonKey(name: 'data')
  TokenResetValidationData get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'statusCode')
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this TokenResetValidationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenResetValidationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenResetValidationResponseCopyWith<TokenResetValidationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResetValidationResponseCopyWith<$Res> {
  factory $TokenResetValidationResponseCopyWith(
          TokenResetValidationResponse value,
          $Res Function(TokenResetValidationResponse) then) =
      _$TokenResetValidationResponseCopyWithImpl<$Res,
          TokenResetValidationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') TokenResetValidationData data,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'statusCode') String statusCode});

  $TokenResetValidationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TokenResetValidationResponseCopyWithImpl<$Res,
        $Val extends TokenResetValidationResponse>
    implements $TokenResetValidationResponseCopyWith<$Res> {
  _$TokenResetValidationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenResetValidationResponse
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
              as TokenResetValidationData,
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

  /// Create a copy of TokenResetValidationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenResetValidationDataCopyWith<$Res> get data {
    return $TokenResetValidationDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenResetValidationResponseImplCopyWith<$Res>
    implements $TokenResetValidationResponseCopyWith<$Res> {
  factory _$$TokenResetValidationResponseImplCopyWith(
          _$TokenResetValidationResponseImpl value,
          $Res Function(_$TokenResetValidationResponseImpl) then) =
      __$$TokenResetValidationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') TokenResetValidationData data,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'statusCode') String statusCode});

  @override
  $TokenResetValidationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TokenResetValidationResponseImplCopyWithImpl<$Res>
    extends _$TokenResetValidationResponseCopyWithImpl<$Res,
        _$TokenResetValidationResponseImpl>
    implements _$$TokenResetValidationResponseImplCopyWith<$Res> {
  __$$TokenResetValidationResponseImplCopyWithImpl(
      _$TokenResetValidationResponseImpl _value,
      $Res Function(_$TokenResetValidationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenResetValidationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$TokenResetValidationResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenResetValidationData,
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
class _$TokenResetValidationResponseImpl
    implements _TokenResetValidationResponse {
  const _$TokenResetValidationResponseImpl(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'statusCode') required this.statusCode});

  factory _$TokenResetValidationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TokenResetValidationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final TokenResetValidationData data;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'statusCode')
  final String statusCode;

  @override
  String toString() {
    return 'TokenResetValidationResponse(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenResetValidationResponseImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of TokenResetValidationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenResetValidationResponseImplCopyWith<
          _$TokenResetValidationResponseImpl>
      get copyWith => __$$TokenResetValidationResponseImplCopyWithImpl<
          _$TokenResetValidationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenResetValidationResponseImplToJson(
      this,
    );
  }
}

abstract class _TokenResetValidationResponse
    implements TokenResetValidationResponse {
  const factory _TokenResetValidationResponse(
          {@JsonKey(name: 'data') required final TokenResetValidationData data,
          @JsonKey(name: 'message') required final String message,
          @JsonKey(name: 'statusCode') required final String statusCode}) =
      _$TokenResetValidationResponseImpl;

  factory _TokenResetValidationResponse.fromJson(Map<String, dynamic> json) =
      _$TokenResetValidationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  TokenResetValidationData get data;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'statusCode')
  String get statusCode;

  /// Create a copy of TokenResetValidationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenResetValidationResponseImplCopyWith<
          _$TokenResetValidationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TokenResetValidationData _$TokenResetValidationDataFromJson(
    Map<String, dynamic> json) {
  return _TokenResetValidationData.fromJson(json);
}

/// @nodoc
mixin _$TokenResetValidationData {
  @JsonKey(name: 'StatusCode')
  String get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  /// Serializes this TokenResetValidationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenResetValidationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenResetValidationDataCopyWith<TokenResetValidationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResetValidationDataCopyWith<$Res> {
  factory $TokenResetValidationDataCopyWith(TokenResetValidationData value,
          $Res Function(TokenResetValidationData) then) =
      _$TokenResetValidationDataCopyWithImpl<$Res, TokenResetValidationData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'StatusCode') String statusCode,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$TokenResetValidationDataCopyWithImpl<$Res,
        $Val extends TokenResetValidationData>
    implements $TokenResetValidationDataCopyWith<$Res> {
  _$TokenResetValidationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenResetValidationData
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
abstract class _$$TokenResetValidationDataImplCopyWith<$Res>
    implements $TokenResetValidationDataCopyWith<$Res> {
  factory _$$TokenResetValidationDataImplCopyWith(
          _$TokenResetValidationDataImpl value,
          $Res Function(_$TokenResetValidationDataImpl) then) =
      __$$TokenResetValidationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'StatusCode') String statusCode,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$TokenResetValidationDataImplCopyWithImpl<$Res>
    extends _$TokenResetValidationDataCopyWithImpl<$Res,
        _$TokenResetValidationDataImpl>
    implements _$$TokenResetValidationDataImplCopyWith<$Res> {
  __$$TokenResetValidationDataImplCopyWithImpl(
      _$TokenResetValidationDataImpl _value,
      $Res Function(_$TokenResetValidationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenResetValidationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_$TokenResetValidationDataImpl(
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
class _$TokenResetValidationDataImpl implements _TokenResetValidationData {
  const _$TokenResetValidationDataImpl(
      {@JsonKey(name: 'StatusCode') required this.statusCode,
      @JsonKey(name: 'message') required this.message});

  factory _$TokenResetValidationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenResetValidationDataImplFromJson(json);

  @override
  @JsonKey(name: 'StatusCode')
  final String statusCode;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'TokenResetValidationData(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenResetValidationDataImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  /// Create a copy of TokenResetValidationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenResetValidationDataImplCopyWith<_$TokenResetValidationDataImpl>
      get copyWith => __$$TokenResetValidationDataImplCopyWithImpl<
          _$TokenResetValidationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenResetValidationDataImplToJson(
      this,
    );
  }
}

abstract class _TokenResetValidationData implements TokenResetValidationData {
  const factory _TokenResetValidationData(
          {@JsonKey(name: 'StatusCode') required final String statusCode,
          @JsonKey(name: 'message') required final String message}) =
      _$TokenResetValidationDataImpl;

  factory _TokenResetValidationData.fromJson(Map<String, dynamic> json) =
      _$TokenResetValidationDataImpl.fromJson;

  @override
  @JsonKey(name: 'StatusCode')
  String get statusCode;
  @override
  @JsonKey(name: 'message')
  String get message;

  /// Create a copy of TokenResetValidationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenResetValidationDataImplCopyWith<_$TokenResetValidationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
