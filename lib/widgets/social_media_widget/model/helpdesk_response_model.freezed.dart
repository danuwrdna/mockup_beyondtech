// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'helpdesk_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HelpdeskResponseModel _$HelpdeskResponseModelFromJson(
    Map<String, dynamic> json) {
  return _HelpdeskResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HelpdeskResponseModel {
  @JsonKey(name: "data")
  HelpdeskResponseData get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this HelpdeskResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HelpdeskResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelpdeskResponseModelCopyWith<HelpdeskResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpdeskResponseModelCopyWith<$Res> {
  factory $HelpdeskResponseModelCopyWith(HelpdeskResponseModel value,
          $Res Function(HelpdeskResponseModel) then) =
      _$HelpdeskResponseModelCopyWithImpl<$Res, HelpdeskResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") HelpdeskResponseData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "statusCode") String statusCode});

  $HelpdeskResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$HelpdeskResponseModelCopyWithImpl<$Res,
        $Val extends HelpdeskResponseModel>
    implements $HelpdeskResponseModelCopyWith<$Res> {
  _$HelpdeskResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelpdeskResponseModel
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
              as HelpdeskResponseData,
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

  /// Create a copy of HelpdeskResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HelpdeskResponseDataCopyWith<$Res> get data {
    return $HelpdeskResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HelpdeskResponseModelImplCopyWith<$Res>
    implements $HelpdeskResponseModelCopyWith<$Res> {
  factory _$$HelpdeskResponseModelImplCopyWith(
          _$HelpdeskResponseModelImpl value,
          $Res Function(_$HelpdeskResponseModelImpl) then) =
      __$$HelpdeskResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") HelpdeskResponseData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "statusCode") String statusCode});

  @override
  $HelpdeskResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$HelpdeskResponseModelImplCopyWithImpl<$Res>
    extends _$HelpdeskResponseModelCopyWithImpl<$Res,
        _$HelpdeskResponseModelImpl>
    implements _$$HelpdeskResponseModelImplCopyWith<$Res> {
  __$$HelpdeskResponseModelImplCopyWithImpl(_$HelpdeskResponseModelImpl _value,
      $Res Function(_$HelpdeskResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelpdeskResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$HelpdeskResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HelpdeskResponseData,
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
class _$HelpdeskResponseModelImpl implements _HelpdeskResponseModel {
  const _$HelpdeskResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "statusCode") required this.statusCode});

  factory _$HelpdeskResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelpdeskResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final HelpdeskResponseData data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "statusCode")
  final String statusCode;

  @override
  String toString() {
    return 'HelpdeskResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelpdeskResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of HelpdeskResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HelpdeskResponseModelImplCopyWith<_$HelpdeskResponseModelImpl>
      get copyWith => __$$HelpdeskResponseModelImplCopyWithImpl<
          _$HelpdeskResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelpdeskResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HelpdeskResponseModel implements HelpdeskResponseModel {
  const factory _HelpdeskResponseModel(
          {@JsonKey(name: "data") required final HelpdeskResponseData data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "statusCode") required final String statusCode}) =
      _$HelpdeskResponseModelImpl;

  factory _HelpdeskResponseModel.fromJson(Map<String, dynamic> json) =
      _$HelpdeskResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  HelpdeskResponseData get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "statusCode")
  String get statusCode;

  /// Create a copy of HelpdeskResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HelpdeskResponseModelImplCopyWith<_$HelpdeskResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelpdeskResponseData _$HelpdeskResponseDataFromJson(Map<String, dynamic> json) {
  return _HelpdeskResponseData.fromJson(json);
}

/// @nodoc
mixin _$HelpdeskResponseData {
  @JsonKey(name: "statusCode")
  String get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<HelpdeskDataItem> get data => throw _privateConstructorUsedError;

  /// Serializes this HelpdeskResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HelpdeskResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelpdeskResponseDataCopyWith<HelpdeskResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpdeskResponseDataCopyWith<$Res> {
  factory $HelpdeskResponseDataCopyWith(HelpdeskResponseData value,
          $Res Function(HelpdeskResponseData) then) =
      _$HelpdeskResponseDataCopyWithImpl<$Res, HelpdeskResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") String statusCode,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<HelpdeskDataItem> data});
}

/// @nodoc
class _$HelpdeskResponseDataCopyWithImpl<$Res,
        $Val extends HelpdeskResponseData>
    implements $HelpdeskResponseDataCopyWith<$Res> {
  _$HelpdeskResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelpdeskResponseData
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
              as List<HelpdeskDataItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelpdeskResponseDataImplCopyWith<$Res>
    implements $HelpdeskResponseDataCopyWith<$Res> {
  factory _$$HelpdeskResponseDataImplCopyWith(_$HelpdeskResponseDataImpl value,
          $Res Function(_$HelpdeskResponseDataImpl) then) =
      __$$HelpdeskResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") String statusCode,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<HelpdeskDataItem> data});
}

/// @nodoc
class __$$HelpdeskResponseDataImplCopyWithImpl<$Res>
    extends _$HelpdeskResponseDataCopyWithImpl<$Res, _$HelpdeskResponseDataImpl>
    implements _$$HelpdeskResponseDataImplCopyWith<$Res> {
  __$$HelpdeskResponseDataImplCopyWithImpl(_$HelpdeskResponseDataImpl _value,
      $Res Function(_$HelpdeskResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelpdeskResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$HelpdeskResponseDataImpl(
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
              as List<HelpdeskDataItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelpdeskResponseDataImpl implements _HelpdeskResponseData {
  const _$HelpdeskResponseDataImpl(
      {@JsonKey(name: "statusCode") required this.statusCode,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<HelpdeskDataItem> data})
      : _data = data;

  factory _$HelpdeskResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelpdeskResponseDataImplFromJson(json);

  @override
  @JsonKey(name: "statusCode")
  final String statusCode;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<HelpdeskDataItem> _data;
  @override
  @JsonKey(name: "data")
  List<HelpdeskDataItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HelpdeskResponseData(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelpdeskResponseDataImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of HelpdeskResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HelpdeskResponseDataImplCopyWith<_$HelpdeskResponseDataImpl>
      get copyWith =>
          __$$HelpdeskResponseDataImplCopyWithImpl<_$HelpdeskResponseDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelpdeskResponseDataImplToJson(
      this,
    );
  }
}

abstract class _HelpdeskResponseData implements HelpdeskResponseData {
  const factory _HelpdeskResponseData(
          {@JsonKey(name: "statusCode") required final String statusCode,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final List<HelpdeskDataItem> data}) =
      _$HelpdeskResponseDataImpl;

  factory _HelpdeskResponseData.fromJson(Map<String, dynamic> json) =
      _$HelpdeskResponseDataImpl.fromJson;

  @override
  @JsonKey(name: "statusCode")
  String get statusCode;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<HelpdeskDataItem> get data;

  /// Create a copy of HelpdeskResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HelpdeskResponseDataImplCopyWith<_$HelpdeskResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelpdeskDataItem _$HelpdeskDataItemFromJson(Map<String, dynamic> json) {
  return _HelpdeskDataItem.fromJson(json);
}

/// @nodoc
mixin _$HelpdeskDataItem {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: "link")
  String get link => throw _privateConstructorUsedError;

  /// Serializes this HelpdeskDataItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HelpdeskDataItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HelpdeskDataItemCopyWith<HelpdeskDataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpdeskDataItemCopyWith<$Res> {
  factory $HelpdeskDataItemCopyWith(
          HelpdeskDataItem value, $Res Function(HelpdeskDataItem) then) =
      _$HelpdeskDataItemCopyWithImpl<$Res, HelpdeskDataItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "value") String value,
      @JsonKey(name: "link") String link});
}

/// @nodoc
class _$HelpdeskDataItemCopyWithImpl<$Res, $Val extends HelpdeskDataItem>
    implements $HelpdeskDataItemCopyWith<$Res> {
  _$HelpdeskDataItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HelpdeskDataItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HelpdeskDataItemImplCopyWith<$Res>
    implements $HelpdeskDataItemCopyWith<$Res> {
  factory _$$HelpdeskDataItemImplCopyWith(_$HelpdeskDataItemImpl value,
          $Res Function(_$HelpdeskDataItemImpl) then) =
      __$$HelpdeskDataItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "value") String value,
      @JsonKey(name: "link") String link});
}

/// @nodoc
class __$$HelpdeskDataItemImplCopyWithImpl<$Res>
    extends _$HelpdeskDataItemCopyWithImpl<$Res, _$HelpdeskDataItemImpl>
    implements _$$HelpdeskDataItemImplCopyWith<$Res> {
  __$$HelpdeskDataItemImplCopyWithImpl(_$HelpdeskDataItemImpl _value,
      $Res Function(_$HelpdeskDataItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of HelpdeskDataItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
    Object? link = null,
  }) {
    return _then(_$HelpdeskDataItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelpdeskDataItemImpl implements _HelpdeskDataItem {
  const _$HelpdeskDataItemImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "value") required this.value,
      @JsonKey(name: "link") required this.link});

  factory _$HelpdeskDataItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelpdeskDataItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "value")
  final String value;
  @override
  @JsonKey(name: "link")
  final String link;

  @override
  String toString() {
    return 'HelpdeskDataItem(id: $id, name: $name, value: $value, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelpdeskDataItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, value, link);

  /// Create a copy of HelpdeskDataItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HelpdeskDataItemImplCopyWith<_$HelpdeskDataItemImpl> get copyWith =>
      __$$HelpdeskDataItemImplCopyWithImpl<_$HelpdeskDataItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelpdeskDataItemImplToJson(
      this,
    );
  }
}

abstract class _HelpdeskDataItem implements HelpdeskDataItem {
  const factory _HelpdeskDataItem(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "value") required final String value,
          @JsonKey(name: "link") required final String link}) =
      _$HelpdeskDataItemImpl;

  factory _HelpdeskDataItem.fromJson(Map<String, dynamic> json) =
      _$HelpdeskDataItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "value")
  String get value;
  @override
  @JsonKey(name: "link")
  String get link;

  /// Create a copy of HelpdeskDataItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HelpdeskDataItemImplCopyWith<_$HelpdeskDataItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
