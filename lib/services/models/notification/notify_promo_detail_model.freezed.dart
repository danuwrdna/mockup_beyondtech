// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notify_promo_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotifyPromoDetailModel _$NotifyPromoDetailModelFromJson(
    Map<String, dynamic> json) {
  return _NotifyPromoDetailModel.fromJson(json);
}

/// @nodoc
mixin _$NotifyPromoDetailModel {
  NotifyPromoDetailModelData? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;

  /// Serializes this NotifyPromoDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotifyPromoDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotifyPromoDetailModelCopyWith<NotifyPromoDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifyPromoDetailModelCopyWith<$Res> {
  factory $NotifyPromoDetailModelCopyWith(NotifyPromoDetailModel value,
          $Res Function(NotifyPromoDetailModel) then) =
      _$NotifyPromoDetailModelCopyWithImpl<$Res, NotifyPromoDetailModel>;
  @useResult
  $Res call(
      {NotifyPromoDetailModelData? data, String? message, String? statusCode});

  $NotifyPromoDetailModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NotifyPromoDetailModelCopyWithImpl<$Res,
        $Val extends NotifyPromoDetailModel>
    implements $NotifyPromoDetailModelCopyWith<$Res> {
  _$NotifyPromoDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotifyPromoDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotifyPromoDetailModelData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of NotifyPromoDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotifyPromoDetailModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NotifyPromoDetailModelDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotifyPromoDetailModelImplCopyWith<$Res>
    implements $NotifyPromoDetailModelCopyWith<$Res> {
  factory _$$NotifyPromoDetailModelImplCopyWith(
          _$NotifyPromoDetailModelImpl value,
          $Res Function(_$NotifyPromoDetailModelImpl) then) =
      __$$NotifyPromoDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotifyPromoDetailModelData? data, String? message, String? statusCode});

  @override
  $NotifyPromoDetailModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NotifyPromoDetailModelImplCopyWithImpl<$Res>
    extends _$NotifyPromoDetailModelCopyWithImpl<$Res,
        _$NotifyPromoDetailModelImpl>
    implements _$$NotifyPromoDetailModelImplCopyWith<$Res> {
  __$$NotifyPromoDetailModelImplCopyWithImpl(
      _$NotifyPromoDetailModelImpl _value,
      $Res Function(_$NotifyPromoDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotifyPromoDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$NotifyPromoDetailModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotifyPromoDetailModelData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotifyPromoDetailModelImpl implements _NotifyPromoDetailModel {
  const _$NotifyPromoDetailModelImpl(
      {this.data, this.message, this.statusCode});

  factory _$NotifyPromoDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotifyPromoDetailModelImplFromJson(json);

  @override
  final NotifyPromoDetailModelData? data;
  @override
  final String? message;
  @override
  final String? statusCode;

  @override
  String toString() {
    return 'NotifyPromoDetailModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifyPromoDetailModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of NotifyPromoDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifyPromoDetailModelImplCopyWith<_$NotifyPromoDetailModelImpl>
      get copyWith => __$$NotifyPromoDetailModelImplCopyWithImpl<
          _$NotifyPromoDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotifyPromoDetailModelImplToJson(
      this,
    );
  }
}

abstract class _NotifyPromoDetailModel implements NotifyPromoDetailModel {
  const factory _NotifyPromoDetailModel(
      {final NotifyPromoDetailModelData? data,
      final String? message,
      final String? statusCode}) = _$NotifyPromoDetailModelImpl;

  factory _NotifyPromoDetailModel.fromJson(Map<String, dynamic> json) =
      _$NotifyPromoDetailModelImpl.fromJson;

  @override
  NotifyPromoDetailModelData? get data;
  @override
  String? get message;
  @override
  String? get statusCode;

  /// Create a copy of NotifyPromoDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotifyPromoDetailModelImplCopyWith<_$NotifyPromoDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotifyPromoDetailModelData _$NotifyPromoDetailModelDataFromJson(
    Map<String, dynamic> json) {
  return _NotifyPromoDetailModelData.fromJson(json);
}

/// @nodoc
mixin _$NotifyPromoDetailModelData {
  String? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  DataData? get data => throw _privateConstructorUsedError;

  /// Serializes this NotifyPromoDetailModelData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotifyPromoDetailModelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotifyPromoDetailModelDataCopyWith<NotifyPromoDetailModelData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifyPromoDetailModelDataCopyWith<$Res> {
  factory $NotifyPromoDetailModelDataCopyWith(NotifyPromoDetailModelData value,
          $Res Function(NotifyPromoDetailModelData) then) =
      _$NotifyPromoDetailModelDataCopyWithImpl<$Res,
          NotifyPromoDetailModelData>;
  @useResult
  $Res call({String? statusCode, String? message, DataData? data});

  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NotifyPromoDetailModelDataCopyWithImpl<$Res,
        $Val extends NotifyPromoDetailModelData>
    implements $NotifyPromoDetailModelDataCopyWith<$Res> {
  _$NotifyPromoDetailModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotifyPromoDetailModelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
    ) as $Val);
  }

  /// Create a copy of NotifyPromoDetailModelData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotifyPromoDetailModelDataImplCopyWith<$Res>
    implements $NotifyPromoDetailModelDataCopyWith<$Res> {
  factory _$$NotifyPromoDetailModelDataImplCopyWith(
          _$NotifyPromoDetailModelDataImpl value,
          $Res Function(_$NotifyPromoDetailModelDataImpl) then) =
      __$$NotifyPromoDetailModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? statusCode, String? message, DataData? data});

  @override
  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NotifyPromoDetailModelDataImplCopyWithImpl<$Res>
    extends _$NotifyPromoDetailModelDataCopyWithImpl<$Res,
        _$NotifyPromoDetailModelDataImpl>
    implements _$$NotifyPromoDetailModelDataImplCopyWith<$Res> {
  __$$NotifyPromoDetailModelDataImplCopyWithImpl(
      _$NotifyPromoDetailModelDataImpl _value,
      $Res Function(_$NotifyPromoDetailModelDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotifyPromoDetailModelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NotifyPromoDetailModelDataImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotifyPromoDetailModelDataImpl implements _NotifyPromoDetailModelData {
  const _$NotifyPromoDetailModelDataImpl(
      {this.statusCode, this.message, this.data});

  factory _$NotifyPromoDetailModelDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotifyPromoDetailModelDataImplFromJson(json);

  @override
  final String? statusCode;
  @override
  final String? message;
  @override
  final DataData? data;

  @override
  String toString() {
    return 'NotifyPromoDetailModelData(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifyPromoDetailModelDataImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, data);

  /// Create a copy of NotifyPromoDetailModelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifyPromoDetailModelDataImplCopyWith<_$NotifyPromoDetailModelDataImpl>
      get copyWith => __$$NotifyPromoDetailModelDataImplCopyWithImpl<
          _$NotifyPromoDetailModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotifyPromoDetailModelDataImplToJson(
      this,
    );
  }
}

abstract class _NotifyPromoDetailModelData
    implements NotifyPromoDetailModelData {
  const factory _NotifyPromoDetailModelData(
      {final String? statusCode,
      final String? message,
      final DataData? data}) = _$NotifyPromoDetailModelDataImpl;

  factory _NotifyPromoDetailModelData.fromJson(Map<String, dynamic> json) =
      _$NotifyPromoDetailModelDataImpl.fromJson;

  @override
  String? get statusCode;
  @override
  String? get message;
  @override
  DataData? get data;

  /// Create a copy of NotifyPromoDetailModelData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotifyPromoDetailModelDataImplCopyWith<_$NotifyPromoDetailModelDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataData _$DataDataFromJson(Map<String, dynamic> json) {
  return _DataData.fromJson(json);
}

/// @nodoc
mixin _$DataData {
  String? get title => throw _privateConstructorUsedError;
  String? get intro => throw _privateConstructorUsedError;
  String? get howToClaim => throw _privateConstructorUsedError;
  String? get termAndCondition => throw _privateConstructorUsedError;
  String? get conclusion => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  DateTime? get expired => throw _privateConstructorUsedError;
  @JsonKey(name: "Time")
  DateTime? get time => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;

  /// Serializes this DataData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataDataCopyWith<DataData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDataCopyWith<$Res> {
  factory $DataDataCopyWith(DataData value, $Res Function(DataData) then) =
      _$DataDataCopyWithImpl<$Res, DataData>;
  @useResult
  $Res call(
      {String? title,
      String? intro,
      String? howToClaim,
      String? termAndCondition,
      String? conclusion,
      String? url,
      DateTime? expired,
      @JsonKey(name: "Time") DateTime? time,
      String? category,
      String? banner});
}

/// @nodoc
class _$DataDataCopyWithImpl<$Res, $Val extends DataData>
    implements $DataDataCopyWith<$Res> {
  _$DataDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? intro = freezed,
    Object? howToClaim = freezed,
    Object? termAndCondition = freezed,
    Object? conclusion = freezed,
    Object? url = freezed,
    Object? expired = freezed,
    Object? time = freezed,
    Object? category = freezed,
    Object? banner = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      howToClaim: freezed == howToClaim
          ? _value.howToClaim
          : howToClaim // ignore: cast_nullable_to_non_nullable
              as String?,
      termAndCondition: freezed == termAndCondition
          ? _value.termAndCondition
          : termAndCondition // ignore: cast_nullable_to_non_nullable
              as String?,
      conclusion: freezed == conclusion
          ? _value.conclusion
          : conclusion // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDataImplCopyWith<$Res>
    implements $DataDataCopyWith<$Res> {
  factory _$$DataDataImplCopyWith(
          _$DataDataImpl value, $Res Function(_$DataDataImpl) then) =
      __$$DataDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? intro,
      String? howToClaim,
      String? termAndCondition,
      String? conclusion,
      String? url,
      DateTime? expired,
      @JsonKey(name: "Time") DateTime? time,
      String? category,
      String? banner});
}

/// @nodoc
class __$$DataDataImplCopyWithImpl<$Res>
    extends _$DataDataCopyWithImpl<$Res, _$DataDataImpl>
    implements _$$DataDataImplCopyWith<$Res> {
  __$$DataDataImplCopyWithImpl(
      _$DataDataImpl _value, $Res Function(_$DataDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? intro = freezed,
    Object? howToClaim = freezed,
    Object? termAndCondition = freezed,
    Object? conclusion = freezed,
    Object? url = freezed,
    Object? expired = freezed,
    Object? time = freezed,
    Object? category = freezed,
    Object? banner = freezed,
  }) {
    return _then(_$DataDataImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      howToClaim: freezed == howToClaim
          ? _value.howToClaim
          : howToClaim // ignore: cast_nullable_to_non_nullable
              as String?,
      termAndCondition: freezed == termAndCondition
          ? _value.termAndCondition
          : termAndCondition // ignore: cast_nullable_to_non_nullable
              as String?,
      conclusion: freezed == conclusion
          ? _value.conclusion
          : conclusion // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
class _$DataDataImpl implements _DataData {
  const _$DataDataImpl(
      {this.title,
      this.intro,
      this.howToClaim,
      this.termAndCondition,
      this.conclusion,
      this.url,
      this.expired,
      @JsonKey(name: "Time") this.time,
      this.category,
      this.banner});

  factory _$DataDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDataImplFromJson(json);

  @override
  final String? title;
  @override
  final String? intro;
  @override
  final String? howToClaim;
  @override
  final String? termAndCondition;
  @override
  final String? conclusion;
  @override
  final String? url;
  @override
  final DateTime? expired;
  @override
  @JsonKey(name: "Time")
  final DateTime? time;
  @override
  final String? category;
  @override
  final String? banner;

  @override
  String toString() {
    return 'DataData(title: $title, intro: $intro, howToClaim: $howToClaim, termAndCondition: $termAndCondition, conclusion: $conclusion, url: $url, expired: $expired, time: $time, category: $category, banner: $banner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.howToClaim, howToClaim) ||
                other.howToClaim == howToClaim) &&
            (identical(other.termAndCondition, termAndCondition) ||
                other.termAndCondition == termAndCondition) &&
            (identical(other.conclusion, conclusion) ||
                other.conclusion == conclusion) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.expired, expired) || other.expired == expired) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.banner, banner) || other.banner == banner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, intro, howToClaim,
      termAndCondition, conclusion, url, expired, time, category, banner);

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      __$$DataDataImplCopyWithImpl<_$DataDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDataImplToJson(
      this,
    );
  }
}

abstract class _DataData implements DataData {
  const factory _DataData(
      {final String? title,
      final String? intro,
      final String? howToClaim,
      final String? termAndCondition,
      final String? conclusion,
      final String? url,
      final DateTime? expired,
      @JsonKey(name: "Time") final DateTime? time,
      final String? category,
      final String? banner}) = _$DataDataImpl;

  factory _DataData.fromJson(Map<String, dynamic> json) =
      _$DataDataImpl.fromJson;

  @override
  String? get title;
  @override
  String? get intro;
  @override
  String? get howToClaim;
  @override
  String? get termAndCondition;
  @override
  String? get conclusion;
  @override
  String? get url;
  @override
  DateTime? get expired;
  @override
  @JsonKey(name: "Time")
  DateTime? get time;
  @override
  String? get category;
  @override
  String? get banner;

  /// Create a copy of DataData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
