// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'term_and_condition_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TermAndConditionDetailResponseModel
    _$TermAndConditionDetailResponseModelFromJson(Map<String, dynamic> json) {
  return _TermAndConditionDetailResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TermAndConditionDetailResponseModel {
  @JsonKey(name: "data")
  TermAndConditionDetailResponseData get data =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this TermAndConditionDetailResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TermAndConditionDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermAndConditionDetailResponseModelCopyWith<
          TermAndConditionDetailResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermAndConditionDetailResponseModelCopyWith<$Res> {
  factory $TermAndConditionDetailResponseModelCopyWith(
          TermAndConditionDetailResponseModel value,
          $Res Function(TermAndConditionDetailResponseModel) then) =
      _$TermAndConditionDetailResponseModelCopyWithImpl<$Res,
          TermAndConditionDetailResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") TermAndConditionDetailResponseData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "statusCode") String statusCode});

  $TermAndConditionDetailResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TermAndConditionDetailResponseModelCopyWithImpl<$Res,
        $Val extends TermAndConditionDetailResponseModel>
    implements $TermAndConditionDetailResponseModelCopyWith<$Res> {
  _$TermAndConditionDetailResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TermAndConditionDetailResponseModel
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
              as TermAndConditionDetailResponseData,
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

  /// Create a copy of TermAndConditionDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TermAndConditionDetailResponseDataCopyWith<$Res> get data {
    return $TermAndConditionDetailResponseDataCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TermAndConditionDetailResponseModelImplCopyWith<$Res>
    implements $TermAndConditionDetailResponseModelCopyWith<$Res> {
  factory _$$TermAndConditionDetailResponseModelImplCopyWith(
          _$TermAndConditionDetailResponseModelImpl value,
          $Res Function(_$TermAndConditionDetailResponseModelImpl) then) =
      __$$TermAndConditionDetailResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") TermAndConditionDetailResponseData data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "statusCode") String statusCode});

  @override
  $TermAndConditionDetailResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TermAndConditionDetailResponseModelImplCopyWithImpl<$Res>
    extends _$TermAndConditionDetailResponseModelCopyWithImpl<$Res,
        _$TermAndConditionDetailResponseModelImpl>
    implements _$$TermAndConditionDetailResponseModelImplCopyWith<$Res> {
  __$$TermAndConditionDetailResponseModelImplCopyWithImpl(
      _$TermAndConditionDetailResponseModelImpl _value,
      $Res Function(_$TermAndConditionDetailResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TermAndConditionDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$TermAndConditionDetailResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TermAndConditionDetailResponseData,
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
class _$TermAndConditionDetailResponseModelImpl
    implements _TermAndConditionDetailResponseModel {
  const _$TermAndConditionDetailResponseModelImpl(
      {@JsonKey(name: "data") required this.data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "statusCode") required this.statusCode});

  factory _$TermAndConditionDetailResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TermAndConditionDetailResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final TermAndConditionDetailResponseData data;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "statusCode")
  final String statusCode;

  @override
  String toString() {
    return 'TermAndConditionDetailResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermAndConditionDetailResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of TermAndConditionDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermAndConditionDetailResponseModelImplCopyWith<
          _$TermAndConditionDetailResponseModelImpl>
      get copyWith => __$$TermAndConditionDetailResponseModelImplCopyWithImpl<
          _$TermAndConditionDetailResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermAndConditionDetailResponseModelImplToJson(
      this,
    );
  }
}

abstract class _TermAndConditionDetailResponseModel
    implements TermAndConditionDetailResponseModel {
  const factory _TermAndConditionDetailResponseModel(
          {@JsonKey(name: "data")
          required final TermAndConditionDetailResponseData data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "statusCode") required final String statusCode}) =
      _$TermAndConditionDetailResponseModelImpl;

  factory _TermAndConditionDetailResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$TermAndConditionDetailResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  TermAndConditionDetailResponseData get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "statusCode")
  String get statusCode;

  /// Create a copy of TermAndConditionDetailResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermAndConditionDetailResponseModelImplCopyWith<
          _$TermAndConditionDetailResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TermAndConditionDetailResponseData _$TermAndConditionDetailResponseDataFromJson(
    Map<String, dynamic> json) {
  return _TermAndConditionDetailResponseData.fromJson(json);
}

/// @nodoc
mixin _$TermAndConditionDetailResponseData {
  @JsonKey(name: "statusCode")
  String get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  TermAndConditionDetailData get data => throw _privateConstructorUsedError;

  /// Serializes this TermAndConditionDetailResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TermAndConditionDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermAndConditionDetailResponseDataCopyWith<
          TermAndConditionDetailResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermAndConditionDetailResponseDataCopyWith<$Res> {
  factory $TermAndConditionDetailResponseDataCopyWith(
          TermAndConditionDetailResponseData value,
          $Res Function(TermAndConditionDetailResponseData) then) =
      _$TermAndConditionDetailResponseDataCopyWithImpl<$Res,
          TermAndConditionDetailResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") String statusCode,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") TermAndConditionDetailData data});

  $TermAndConditionDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TermAndConditionDetailResponseDataCopyWithImpl<$Res,
        $Val extends TermAndConditionDetailResponseData>
    implements $TermAndConditionDetailResponseDataCopyWith<$Res> {
  _$TermAndConditionDetailResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TermAndConditionDetailResponseData
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
              as TermAndConditionDetailData,
    ) as $Val);
  }

  /// Create a copy of TermAndConditionDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TermAndConditionDetailDataCopyWith<$Res> get data {
    return $TermAndConditionDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TermAndConditionDetailResponseDataImplCopyWith<$Res>
    implements $TermAndConditionDetailResponseDataCopyWith<$Res> {
  factory _$$TermAndConditionDetailResponseDataImplCopyWith(
          _$TermAndConditionDetailResponseDataImpl value,
          $Res Function(_$TermAndConditionDetailResponseDataImpl) then) =
      __$$TermAndConditionDetailResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "statusCode") String statusCode,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") TermAndConditionDetailData data});

  @override
  $TermAndConditionDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TermAndConditionDetailResponseDataImplCopyWithImpl<$Res>
    extends _$TermAndConditionDetailResponseDataCopyWithImpl<$Res,
        _$TermAndConditionDetailResponseDataImpl>
    implements _$$TermAndConditionDetailResponseDataImplCopyWith<$Res> {
  __$$TermAndConditionDetailResponseDataImplCopyWithImpl(
      _$TermAndConditionDetailResponseDataImpl _value,
      $Res Function(_$TermAndConditionDetailResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TermAndConditionDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$TermAndConditionDetailResponseDataImpl(
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
              as TermAndConditionDetailData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TermAndConditionDetailResponseDataImpl
    implements _TermAndConditionDetailResponseData {
  const _$TermAndConditionDetailResponseDataImpl(
      {@JsonKey(name: "statusCode") required this.statusCode,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data});

  factory _$TermAndConditionDetailResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TermAndConditionDetailResponseDataImplFromJson(json);

  @override
  @JsonKey(name: "statusCode")
  final String statusCode;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final TermAndConditionDetailData data;

  @override
  String toString() {
    return 'TermAndConditionDetailResponseData(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermAndConditionDetailResponseDataImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, data);

  /// Create a copy of TermAndConditionDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermAndConditionDetailResponseDataImplCopyWith<
          _$TermAndConditionDetailResponseDataImpl>
      get copyWith => __$$TermAndConditionDetailResponseDataImplCopyWithImpl<
          _$TermAndConditionDetailResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermAndConditionDetailResponseDataImplToJson(
      this,
    );
  }
}

abstract class _TermAndConditionDetailResponseData
    implements TermAndConditionDetailResponseData {
  const factory _TermAndConditionDetailResponseData(
          {@JsonKey(name: "statusCode") required final String statusCode,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data")
          required final TermAndConditionDetailData data}) =
      _$TermAndConditionDetailResponseDataImpl;

  factory _TermAndConditionDetailResponseData.fromJson(
          Map<String, dynamic> json) =
      _$TermAndConditionDetailResponseDataImpl.fromJson;

  @override
  @JsonKey(name: "statusCode")
  String get statusCode;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  TermAndConditionDetailData get data;

  /// Create a copy of TermAndConditionDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermAndConditionDetailResponseDataImplCopyWith<
          _$TermAndConditionDetailResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TermAndConditionDetailData _$TermAndConditionDetailDataFromJson(
    Map<String, dynamic> json) {
  return _TermAndConditionDetailData.fromJson(json);
}

/// @nodoc
mixin _$TermAndConditionDetailData {
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "banner")
  String get banner => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  /// Serializes this TermAndConditionDetailData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TermAndConditionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermAndConditionDetailDataCopyWith<TermAndConditionDetailData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermAndConditionDetailDataCopyWith<$Res> {
  factory $TermAndConditionDetailDataCopyWith(TermAndConditionDetailData value,
          $Res Function(TermAndConditionDetailData) then) =
      _$TermAndConditionDetailDataCopyWithImpl<$Res,
          TermAndConditionDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "banner") String banner,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class _$TermAndConditionDetailDataCopyWithImpl<$Res,
        $Val extends TermAndConditionDetailData>
    implements $TermAndConditionDetailDataCopyWith<$Res> {
  _$TermAndConditionDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TermAndConditionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? title = null,
    Object? banner = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TermAndConditionDetailDataImplCopyWith<$Res>
    implements $TermAndConditionDetailDataCopyWith<$Res> {
  factory _$$TermAndConditionDetailDataImplCopyWith(
          _$TermAndConditionDetailDataImpl value,
          $Res Function(_$TermAndConditionDetailDataImpl) then) =
      __$$TermAndConditionDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category") String category,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "banner") String banner,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class __$$TermAndConditionDetailDataImplCopyWithImpl<$Res>
    extends _$TermAndConditionDetailDataCopyWithImpl<$Res,
        _$TermAndConditionDetailDataImpl>
    implements _$$TermAndConditionDetailDataImplCopyWith<$Res> {
  __$$TermAndConditionDetailDataImplCopyWithImpl(
      _$TermAndConditionDetailDataImpl _value,
      $Res Function(_$TermAndConditionDetailDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TermAndConditionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? title = null,
    Object? banner = null,
    Object? message = null,
  }) {
    return _then(_$TermAndConditionDetailDataImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
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
class _$TermAndConditionDetailDataImpl implements _TermAndConditionDetailData {
  const _$TermAndConditionDetailDataImpl(
      {@JsonKey(name: "category") required this.category,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "banner") required this.banner,
      @JsonKey(name: "message") required this.message});

  factory _$TermAndConditionDetailDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TermAndConditionDetailDataImplFromJson(json);

  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "banner")
  final String banner;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'TermAndConditionDetailData(category: $category, title: $title, banner: $banner, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermAndConditionDetailDataImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, category, title, banner, message);

  /// Create a copy of TermAndConditionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermAndConditionDetailDataImplCopyWith<_$TermAndConditionDetailDataImpl>
      get copyWith => __$$TermAndConditionDetailDataImplCopyWithImpl<
          _$TermAndConditionDetailDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TermAndConditionDetailDataImplToJson(
      this,
    );
  }
}

abstract class _TermAndConditionDetailData
    implements TermAndConditionDetailData {
  const factory _TermAndConditionDetailData(
          {@JsonKey(name: "category") required final String category,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "banner") required final String banner,
          @JsonKey(name: "message") required final String message}) =
      _$TermAndConditionDetailDataImpl;

  factory _TermAndConditionDetailData.fromJson(Map<String, dynamic> json) =
      _$TermAndConditionDetailDataImpl.fromJson;

  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "banner")
  String get banner;
  @override
  @JsonKey(name: "message")
  String get message;

  /// Create a copy of TermAndConditionDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermAndConditionDetailDataImplCopyWith<_$TermAndConditionDetailDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
