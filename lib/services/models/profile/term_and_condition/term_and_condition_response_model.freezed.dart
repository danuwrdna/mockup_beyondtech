// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'term_and_condition_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TermAndConditionResponseModel _$TermAndConditionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _TermAndConditionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TermAndConditionResponseModel {
  @JsonKey(name: "data")
  TermAndConditionResponseData get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this TermAndConditionResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TermAndConditionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermAndConditionResponseModelCopyWith<TermAndConditionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermAndConditionResponseModelCopyWith<$Res> {
  factory $TermAndConditionResponseModelCopyWith(
          TermAndConditionResponseModel value,
          $Res Function(TermAndConditionResponseModel) then) =
      _$TermAndConditionResponseModelCopyWithImpl<$Res,
          TermAndConditionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") TermAndConditionResponseData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "statusCode") String statusCode});

  $TermAndConditionResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TermAndConditionResponseModelCopyWithImpl<$Res,
        $Val extends TermAndConditionResponseModel>
    implements $TermAndConditionResponseModelCopyWith<$Res> {
  _$TermAndConditionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TermAndConditionResponseModel
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
              as TermAndConditionResponseData,
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

  /// Create a copy of TermAndConditionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TermAndConditionResponseDataCopyWith<$Res> get data {
    return $TermAndConditionResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TermAndConditionResponseModelImplCopyWith<$Res>
    implements $TermAndConditionResponseModelCopyWith<$Res> {
  factory _$$TermAndConditionResponseModelImplCopyWith(
          _$TermAndConditionResponseModelImpl value,
          $Res Function(_$TermAndConditionResponseModelImpl) then) =
      __$$TermAndConditionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") TermAndConditionResponseData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "statusCode") String statusCode});

  @override
  $TermAndConditionResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TermAndConditionResponseModelImplCopyWithImpl<$Res>
    extends _$TermAndConditionResponseModelCopyWithImpl<$Res,
        _$TermAndConditionResponseModelImpl>
    implements _$$TermAndConditionResponseModelImplCopyWith<$Res> {
  __$$TermAndConditionResponseModelImplCopyWithImpl(
      _$TermAndConditionResponseModelImpl _value,
      $Res Function(_$TermAndConditionResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TermAndConditionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$TermAndConditionResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TermAndConditionResponseData,
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
class _$TermAndConditionResponseModelImpl
    implements _TermAndConditionResponseModel {
  const _$TermAndConditionResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "statusCode") required this.statusCode});

  factory _$TermAndConditionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TermAndConditionResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final TermAndConditionResponseData data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "statusCode")
  final String statusCode;

  @override
  String toString() {
    return 'TermAndConditionResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermAndConditionResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of TermAndConditionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermAndConditionResponseModelImplCopyWith<
          _$TermAndConditionResponseModelImpl>
      get copyWith => __$$TermAndConditionResponseModelImplCopyWithImpl<
          _$TermAndConditionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermAndConditionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _TermAndConditionResponseModel
    implements TermAndConditionResponseModel {
  const factory _TermAndConditionResponseModel(
      {@JsonKey(name: "data") required final TermAndConditionResponseData data,
      @JsonKey(name: "message") required final String message,
      @JsonKey(name: "statusCode")
      required final String statusCode}) = _$TermAndConditionResponseModelImpl;

  factory _TermAndConditionResponseModel.fromJson(Map<String, dynamic> json) =
      _$TermAndConditionResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  TermAndConditionResponseData get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "statusCode")
  String get statusCode;

  /// Create a copy of TermAndConditionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermAndConditionResponseModelImplCopyWith<
          _$TermAndConditionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TermAndConditionResponseData _$TermAndConditionResponseDataFromJson(
    Map<String, dynamic> json) {
  return _TermAndConditionResponseData.fromJson(json);
}

/// @nodoc
mixin _$TermAndConditionResponseData {
  @JsonKey(name: "statusCode")
  String get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<TermAndConditionData> get data => throw _privateConstructorUsedError;

  /// Serializes this TermAndConditionResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TermAndConditionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermAndConditionResponseDataCopyWith<TermAndConditionResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermAndConditionResponseDataCopyWith<$Res> {
  factory $TermAndConditionResponseDataCopyWith(
          TermAndConditionResponseData value,
          $Res Function(TermAndConditionResponseData) then) =
      _$TermAndConditionResponseDataCopyWithImpl<$Res,
          TermAndConditionResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") String statusCode,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<TermAndConditionData> data});
}

/// @nodoc
class _$TermAndConditionResponseDataCopyWithImpl<$Res,
        $Val extends TermAndConditionResponseData>
    implements $TermAndConditionResponseDataCopyWith<$Res> {
  _$TermAndConditionResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TermAndConditionResponseData
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
              as List<TermAndConditionData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermAndConditionResponseDataImplCopyWith<$Res>
    implements $TermAndConditionResponseDataCopyWith<$Res> {
  factory _$$TermAndConditionResponseDataImplCopyWith(
          _$TermAndConditionResponseDataImpl value,
          $Res Function(_$TermAndConditionResponseDataImpl) then) =
      __$$TermAndConditionResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") String statusCode,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<TermAndConditionData> data});
}

/// @nodoc
class __$$TermAndConditionResponseDataImplCopyWithImpl<$Res>
    extends _$TermAndConditionResponseDataCopyWithImpl<$Res,
        _$TermAndConditionResponseDataImpl>
    implements _$$TermAndConditionResponseDataImplCopyWith<$Res> {
  __$$TermAndConditionResponseDataImplCopyWithImpl(
      _$TermAndConditionResponseDataImpl _value,
      $Res Function(_$TermAndConditionResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TermAndConditionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$TermAndConditionResponseDataImpl(
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
              as List<TermAndConditionData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermAndConditionResponseDataImpl
    implements _TermAndConditionResponseData {
  const _$TermAndConditionResponseDataImpl(
      {@JsonKey(name: "statusCode") required this.statusCode,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<TermAndConditionData> data})
      : _data = data;

  factory _$TermAndConditionResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TermAndConditionResponseDataImplFromJson(json);

  @override
  @JsonKey(name: "statusCode")
  final String statusCode;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<TermAndConditionData> _data;
  @override
  @JsonKey(name: "data")
  List<TermAndConditionData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TermAndConditionResponseData(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermAndConditionResponseDataImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of TermAndConditionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermAndConditionResponseDataImplCopyWith<
          _$TermAndConditionResponseDataImpl>
      get copyWith => __$$TermAndConditionResponseDataImplCopyWithImpl<
          _$TermAndConditionResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermAndConditionResponseDataImplToJson(
      this,
    );
  }
}

abstract class _TermAndConditionResponseData
    implements TermAndConditionResponseData {
  const factory _TermAndConditionResponseData(
          {@JsonKey(name: "statusCode") required final String statusCode,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data")
          required final List<TermAndConditionData> data}) =
      _$TermAndConditionResponseDataImpl;

  factory _TermAndConditionResponseData.fromJson(Map<String, dynamic> json) =
      _$TermAndConditionResponseDataImpl.fromJson;

  @override
  @JsonKey(name: "statusCode")
  String get statusCode;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<TermAndConditionData> get data;

  /// Create a copy of TermAndConditionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermAndConditionResponseDataImplCopyWith<
          _$TermAndConditionResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TermAndConditionData _$TermAndConditionDataFromJson(Map<String, dynamic> json) {
  return _TermAndConditionData.fromJson(json);
}

/// @nodoc
mixin _$TermAndConditionData {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "banner")
  String? get banner => throw _privateConstructorUsedError;

  /// Serializes this TermAndConditionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TermAndConditionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermAndConditionDataCopyWith<TermAndConditionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermAndConditionDataCopyWith<$Res> {
  factory $TermAndConditionDataCopyWith(TermAndConditionData value,
          $Res Function(TermAndConditionData) then) =
      _$TermAndConditionDataCopyWithImpl<$Res, TermAndConditionData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "banner") String? banner});
}

/// @nodoc
class _$TermAndConditionDataCopyWithImpl<$Res,
        $Val extends TermAndConditionData>
    implements $TermAndConditionDataCopyWith<$Res> {
  _$TermAndConditionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TermAndConditionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = null,
    Object? title = freezed,
    Object? banner = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermAndConditionDataImplCopyWith<$Res>
    implements $TermAndConditionDataCopyWith<$Res> {
  factory _$$TermAndConditionDataImplCopyWith(_$TermAndConditionDataImpl value,
          $Res Function(_$TermAndConditionDataImpl) then) =
      __$$TermAndConditionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "banner") String? banner});
}

/// @nodoc
class __$$TermAndConditionDataImplCopyWithImpl<$Res>
    extends _$TermAndConditionDataCopyWithImpl<$Res, _$TermAndConditionDataImpl>
    implements _$$TermAndConditionDataImplCopyWith<$Res> {
  __$$TermAndConditionDataImplCopyWithImpl(_$TermAndConditionDataImpl _value,
      $Res Function(_$TermAndConditionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TermAndConditionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category = null,
    Object? title = freezed,
    Object? banner = freezed,
  }) {
    return _then(_$TermAndConditionDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermAndConditionDataImpl implements _TermAndConditionData {
  const _$TermAndConditionDataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "category") required this.category,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "banner") required this.banner});

  factory _$TermAndConditionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TermAndConditionDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "banner")
  final String? banner;

  @override
  String toString() {
    return 'TermAndConditionData(id: $id, category: $category, title: $title, banner: $banner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermAndConditionDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.banner, banner) || other.banner == banner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, category, title, banner);

  /// Create a copy of TermAndConditionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermAndConditionDataImplCopyWith<_$TermAndConditionDataImpl>
      get copyWith =>
          __$$TermAndConditionDataImplCopyWithImpl<_$TermAndConditionDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermAndConditionDataImplToJson(
      this,
    );
  }
}

abstract class _TermAndConditionData implements TermAndConditionData {
  const factory _TermAndConditionData(
          {@JsonKey(name: "id") required final String? id,
          @JsonKey(name: "category") required final String category,
          @JsonKey(name: "title") required final String? title,
          @JsonKey(name: "banner") required final String? banner}) =
      _$TermAndConditionDataImpl;

  factory _TermAndConditionData.fromJson(Map<String, dynamic> json) =
      _$TermAndConditionDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "banner")
  String? get banner;

  /// Create a copy of TermAndConditionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermAndConditionDataImplCopyWith<_$TermAndConditionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
