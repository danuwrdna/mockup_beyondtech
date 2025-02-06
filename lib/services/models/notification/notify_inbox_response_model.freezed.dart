// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notify_inbox_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InboxResponse _$InboxResponseFromJson(Map<String, dynamic> json) {
  return _InboxResponse.fromJson(json);
}

/// @nodoc
mixin _$InboxResponse {
  String get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  InboxData get data => throw _privateConstructorUsedError;

  /// Serializes this InboxResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InboxResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InboxResponseCopyWith<InboxResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxResponseCopyWith<$Res> {
  factory $InboxResponseCopyWith(
          InboxResponse value, $Res Function(InboxResponse) then) =
      _$InboxResponseCopyWithImpl<$Res, InboxResponse>;
  @useResult
  $Res call({String statusCode, String message, InboxData data});

  $InboxDataCopyWith<$Res> get data;
}

/// @nodoc
class _$InboxResponseCopyWithImpl<$Res, $Val extends InboxResponse>
    implements $InboxResponseCopyWith<$Res> {
  _$InboxResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InboxResponse
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
              as InboxData,
    ) as $Val);
  }

  /// Create a copy of InboxResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InboxDataCopyWith<$Res> get data {
    return $InboxDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InboxResponseImplCopyWith<$Res>
    implements $InboxResponseCopyWith<$Res> {
  factory _$$InboxResponseImplCopyWith(
          _$InboxResponseImpl value, $Res Function(_$InboxResponseImpl) then) =
      __$$InboxResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String statusCode, String message, InboxData data});

  @override
  $InboxDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InboxResponseImplCopyWithImpl<$Res>
    extends _$InboxResponseCopyWithImpl<$Res, _$InboxResponseImpl>
    implements _$$InboxResponseImplCopyWith<$Res> {
  __$$InboxResponseImplCopyWithImpl(
      _$InboxResponseImpl _value, $Res Function(_$InboxResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of InboxResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$InboxResponseImpl(
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
              as InboxData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InboxResponseImpl implements _InboxResponse {
  const _$InboxResponseImpl(
      {required this.statusCode, required this.message, required this.data});

  factory _$InboxResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InboxResponseImplFromJson(json);

  @override
  final String statusCode;
  @override
  final String message;
  @override
  final InboxData data;

  @override
  String toString() {
    return 'InboxResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboxResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, data);

  /// Create a copy of InboxResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InboxResponseImplCopyWith<_$InboxResponseImpl> get copyWith =>
      __$$InboxResponseImplCopyWithImpl<_$InboxResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InboxResponseImplToJson(
      this,
    );
  }
}

abstract class _InboxResponse implements InboxResponse {
  const factory _InboxResponse(
      {required final String statusCode,
      required final String message,
      required final InboxData data}) = _$InboxResponseImpl;

  factory _InboxResponse.fromJson(Map<String, dynamic> json) =
      _$InboxResponseImpl.fromJson;

  @override
  String get statusCode;
  @override
  String get message;
  @override
  InboxData get data;

  /// Create a copy of InboxResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InboxResponseImplCopyWith<_$InboxResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InboxData _$InboxDataFromJson(Map<String, dynamic> json) {
  return _InboxData.fromJson(json);
}

/// @nodoc
mixin _$InboxData {
  String get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<InboxItem> get data => throw _privateConstructorUsedError;

  /// Serializes this InboxData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InboxData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InboxDataCopyWith<InboxData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxDataCopyWith<$Res> {
  factory $InboxDataCopyWith(InboxData value, $Res Function(InboxData) then) =
      _$InboxDataCopyWithImpl<$Res, InboxData>;
  @useResult
  $Res call({String statusCode, String message, List<InboxItem> data});
}

/// @nodoc
class _$InboxDataCopyWithImpl<$Res, $Val extends InboxData>
    implements $InboxDataCopyWith<$Res> {
  _$InboxDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InboxData
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
              as List<InboxItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InboxDataImplCopyWith<$Res>
    implements $InboxDataCopyWith<$Res> {
  factory _$$InboxDataImplCopyWith(
          _$InboxDataImpl value, $Res Function(_$InboxDataImpl) then) =
      __$$InboxDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String statusCode, String message, List<InboxItem> data});
}

/// @nodoc
class __$$InboxDataImplCopyWithImpl<$Res>
    extends _$InboxDataCopyWithImpl<$Res, _$InboxDataImpl>
    implements _$$InboxDataImplCopyWith<$Res> {
  __$$InboxDataImplCopyWithImpl(
      _$InboxDataImpl _value, $Res Function(_$InboxDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InboxData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$InboxDataImpl(
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
              as List<InboxItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InboxDataImpl implements _InboxData {
  const _$InboxDataImpl(
      {required this.statusCode,
      required this.message,
      required final List<InboxItem> data})
      : _data = data;

  factory _$InboxDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InboxDataImplFromJson(json);

  @override
  final String statusCode;
  @override
  final String message;
  final List<InboxItem> _data;
  @override
  List<InboxItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'InboxData(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboxDataImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of InboxData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InboxDataImplCopyWith<_$InboxDataImpl> get copyWith =>
      __$$InboxDataImplCopyWithImpl<_$InboxDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InboxDataImplToJson(
      this,
    );
  }
}

abstract class _InboxData implements InboxData {
  const factory _InboxData(
      {required final String statusCode,
      required final String message,
      required final List<InboxItem> data}) = _$InboxDataImpl;

  factory _InboxData.fromJson(Map<String, dynamic> json) =
      _$InboxDataImpl.fromJson;

  @override
  String get statusCode;
  @override
  String get message;
  @override
  List<InboxItem> get data;

  /// Create a copy of InboxData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InboxDataImplCopyWith<_$InboxDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InboxItem _$InboxItemFromJson(Map<String, dynamic> json) {
  return _InboxItem.fromJson(json);
}

/// @nodoc
mixin _$InboxItem {
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get banner => throw _privateConstructorUsedError;

  /// Serializes this InboxItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InboxItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InboxItemCopyWith<InboxItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxItemCopyWith<$Res> {
  factory $InboxItemCopyWith(InboxItem value, $Res Function(InboxItem) then) =
      _$InboxItemCopyWithImpl<$Res, InboxItem>;
  @useResult
  $Res call(
      {String title,
      String message,
      String url,
      String createdAt,
      String banner});
}

/// @nodoc
class _$InboxItemCopyWithImpl<$Res, $Val extends InboxItem>
    implements $InboxItemCopyWith<$Res> {
  _$InboxItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InboxItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? url = null,
    Object? createdAt = null,
    Object? banner = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InboxItemImplCopyWith<$Res>
    implements $InboxItemCopyWith<$Res> {
  factory _$$InboxItemImplCopyWith(
          _$InboxItemImpl value, $Res Function(_$InboxItemImpl) then) =
      __$$InboxItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String message,
      String url,
      String createdAt,
      String banner});
}

/// @nodoc
class __$$InboxItemImplCopyWithImpl<$Res>
    extends _$InboxItemCopyWithImpl<$Res, _$InboxItemImpl>
    implements _$$InboxItemImplCopyWith<$Res> {
  __$$InboxItemImplCopyWithImpl(
      _$InboxItemImpl _value, $Res Function(_$InboxItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of InboxItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? url = null,
    Object? createdAt = null,
    Object? banner = null,
  }) {
    return _then(_$InboxItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InboxItemImpl implements _InboxItem {
  const _$InboxItemImpl(
      {required this.title,
      required this.message,
      required this.url,
      required this.createdAt,
      required this.banner});

  factory _$InboxItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$InboxItemImplFromJson(json);

  @override
  final String title;
  @override
  final String message;
  @override
  final String url;
  @override
  final String createdAt;
  @override
  final String banner;

  @override
  String toString() {
    return 'InboxItem(title: $title, message: $message, url: $url, createdAt: $createdAt, banner: $banner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboxItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.banner, banner) || other.banner == banner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, message, url, createdAt, banner);

  /// Create a copy of InboxItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InboxItemImplCopyWith<_$InboxItemImpl> get copyWith =>
      __$$InboxItemImplCopyWithImpl<_$InboxItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InboxItemImplToJson(
      this,
    );
  }
}

abstract class _InboxItem implements InboxItem {
  const factory _InboxItem(
      {required final String title,
      required final String message,
      required final String url,
      required final String createdAt,
      required final String banner}) = _$InboxItemImpl;

  factory _InboxItem.fromJson(Map<String, dynamic> json) =
      _$InboxItemImpl.fromJson;

  @override
  String get title;
  @override
  String get message;
  @override
  String get url;
  @override
  String get createdAt;
  @override
  String get banner;

  /// Create a copy of InboxItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InboxItemImplCopyWith<_$InboxItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
