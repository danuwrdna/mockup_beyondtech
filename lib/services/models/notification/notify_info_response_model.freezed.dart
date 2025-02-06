// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notify_info_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotifyInfoResponse _$NotifyInfoResponseFromJson(Map<String, dynamic> json) {
  return _NotifyInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$NotifyInfoResponse {
  String get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  NotifyInfoData get data => throw _privateConstructorUsedError;

  /// Serializes this NotifyInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotifyInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotifyInfoResponseCopyWith<NotifyInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifyInfoResponseCopyWith<$Res> {
  factory $NotifyInfoResponseCopyWith(
          NotifyInfoResponse value, $Res Function(NotifyInfoResponse) then) =
      _$NotifyInfoResponseCopyWithImpl<$Res, NotifyInfoResponse>;
  @useResult
  $Res call({String statusCode, String message, NotifyInfoData data});

  $NotifyInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class _$NotifyInfoResponseCopyWithImpl<$Res, $Val extends NotifyInfoResponse>
    implements $NotifyInfoResponseCopyWith<$Res> {
  _$NotifyInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotifyInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotifyInfoData,
    ) as $Val);
  }

  /// Create a copy of NotifyInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotifyInfoDataCopyWith<$Res> get data {
    return $NotifyInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotifyInfoResponseImplCopyWith<$Res>
    implements $NotifyInfoResponseCopyWith<$Res> {
  factory _$$NotifyInfoResponseImplCopyWith(_$NotifyInfoResponseImpl value,
          $Res Function(_$NotifyInfoResponseImpl) then) =
      __$$NotifyInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String statusCode, String message, NotifyInfoData data});

  @override
  $NotifyInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$NotifyInfoResponseImplCopyWithImpl<$Res>
    extends _$NotifyInfoResponseCopyWithImpl<$Res, _$NotifyInfoResponseImpl>
    implements _$$NotifyInfoResponseImplCopyWith<$Res> {
  __$$NotifyInfoResponseImplCopyWithImpl(_$NotifyInfoResponseImpl _value,
      $Res Function(_$NotifyInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotifyInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$NotifyInfoResponseImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotifyInfoData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotifyInfoResponseImpl implements _NotifyInfoResponse {
  const _$NotifyInfoResponseImpl(
      {required this.statusCode, required this.message, required this.data});

  factory _$NotifyInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotifyInfoResponseImplFromJson(json);

  @override
  final String statusCode;
  @override
  final String message;
  @override
  final NotifyInfoData data;

  @override
  String toString() {
    return 'NotifyInfoResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifyInfoResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, data);

  /// Create a copy of NotifyInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifyInfoResponseImplCopyWith<_$NotifyInfoResponseImpl> get copyWith =>
      __$$NotifyInfoResponseImplCopyWithImpl<_$NotifyInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotifyInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _NotifyInfoResponse implements NotifyInfoResponse {
  const factory _NotifyInfoResponse(
      {required final String statusCode,
      required final String message,
      required final NotifyInfoData data}) = _$NotifyInfoResponseImpl;

  factory _NotifyInfoResponse.fromJson(Map<String, dynamic> json) =
      _$NotifyInfoResponseImpl.fromJson;

  @override
  String get statusCode;
  @override
  String get message;
  @override
  NotifyInfoData get data;

  /// Create a copy of NotifyInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotifyInfoResponseImplCopyWith<_$NotifyInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotifyInfoData _$NotifyInfoDataFromJson(Map<String, dynamic> json) {
  return _NotifyInfoData.fromJson(json);
}

/// @nodoc
mixin _$NotifyInfoData {
  String get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<NotificationData> get data => throw _privateConstructorUsedError;

  /// Serializes this NotifyInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotifyInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotifyInfoDataCopyWith<NotifyInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifyInfoDataCopyWith<$Res> {
  factory $NotifyInfoDataCopyWith(
          NotifyInfoData value, $Res Function(NotifyInfoData) then) =
      _$NotifyInfoDataCopyWithImpl<$Res, NotifyInfoData>;
  @useResult
  $Res call({String statusCode, String message, List<NotificationData> data});
}

/// @nodoc
class _$NotifyInfoDataCopyWithImpl<$Res, $Val extends NotifyInfoData>
    implements $NotifyInfoDataCopyWith<$Res> {
  _$NotifyInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotifyInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotifyInfoDataImplCopyWith<$Res>
    implements $NotifyInfoDataCopyWith<$Res> {
  factory _$$NotifyInfoDataImplCopyWith(_$NotifyInfoDataImpl value,
          $Res Function(_$NotifyInfoDataImpl) then) =
      __$$NotifyInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String statusCode, String message, List<NotificationData> data});
}

/// @nodoc
class __$$NotifyInfoDataImplCopyWithImpl<$Res>
    extends _$NotifyInfoDataCopyWithImpl<$Res, _$NotifyInfoDataImpl>
    implements _$$NotifyInfoDataImplCopyWith<$Res> {
  __$$NotifyInfoDataImplCopyWithImpl(
      _$NotifyInfoDataImpl _value, $Res Function(_$NotifyInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotifyInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$NotifyInfoDataImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotifyInfoDataImpl implements _NotifyInfoData {
  const _$NotifyInfoDataImpl(
      {required this.statusCode,
      required this.message,
      required final List<NotificationData> data})
      : _data = data;

  factory _$NotifyInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotifyInfoDataImplFromJson(json);

  @override
  final String statusCode;
  @override
  final String message;
  final List<NotificationData> _data;
  @override
  List<NotificationData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NotifyInfoData(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifyInfoDataImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of NotifyInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifyInfoDataImplCopyWith<_$NotifyInfoDataImpl> get copyWith =>
      __$$NotifyInfoDataImplCopyWithImpl<_$NotifyInfoDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotifyInfoDataImplToJson(
      this,
    );
  }
}

abstract class _NotifyInfoData implements NotifyInfoData {
  const factory _NotifyInfoData(
      {required final String statusCode,
      required final String message,
      required final List<NotificationData> data}) = _$NotifyInfoDataImpl;

  factory _NotifyInfoData.fromJson(Map<String, dynamic> json) =
      _$NotifyInfoDataImpl.fromJson;

  @override
  String get statusCode;
  @override
  String get message;
  @override
  List<NotificationData> get data;

  /// Create a copy of NotifyInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotifyInfoDataImplCopyWith<_$NotifyInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationData {
  String get title => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res, NotificationData>;
  @useResult
  $Res call(
      {String title, String phoneNumber, String message, String createdAt});
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res, $Val extends NotificationData>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? phoneNumber = null,
    Object? message = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDataImplCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$NotificationDataImplCopyWith(_$NotificationDataImpl value,
          $Res Function(_$NotificationDataImpl) then) =
      __$$NotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String phoneNumber, String message, String createdAt});
}

/// @nodoc
class __$$NotificationDataImplCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res, _$NotificationDataImpl>
    implements _$$NotificationDataImplCopyWith<$Res> {
  __$$NotificationDataImplCopyWithImpl(_$NotificationDataImpl _value,
      $Res Function(_$NotificationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? phoneNumber = null,
    Object? message = null,
    Object? createdAt = null,
  }) {
    return _then(_$NotificationDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataImpl implements _NotificationData {
  const _$NotificationDataImpl(
      {required this.title,
      required this.phoneNumber,
      required this.message,
      required this.createdAt});

  factory _$NotificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataImplFromJson(json);

  @override
  final String title;
  @override
  final String phoneNumber;
  @override
  final String message;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'NotificationData(title: $title, phoneNumber: $phoneNumber, message: $message, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, phoneNumber, message, createdAt);

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      __$$NotificationDataImplCopyWithImpl<_$NotificationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataImplToJson(
      this,
    );
  }
}

abstract class _NotificationData implements NotificationData {
  const factory _NotificationData(
      {required final String title,
      required final String phoneNumber,
      required final String message,
      required final String createdAt}) = _$NotificationDataImpl;

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$NotificationDataImpl.fromJson;

  @override
  String get title;
  @override
  String get phoneNumber;
  @override
  String get message;
  @override
  String get createdAt;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
