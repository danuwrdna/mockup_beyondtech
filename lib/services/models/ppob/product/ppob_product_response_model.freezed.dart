// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ppob_product_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PpobProductResponseModel _$PpobProductResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PpobProductResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PpobProductResponseModel {
  @JsonKey(name: "data")
  List<PpobProductDataItem> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this PpobProductResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobProductResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobProductResponseModelCopyWith<PpobProductResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobProductResponseModelCopyWith<$Res> {
  factory $PpobProductResponseModelCopyWith(PpobProductResponseModel value,
          $Res Function(PpobProductResponseModel) then) =
      _$PpobProductResponseModelCopyWithImpl<$Res, PpobProductResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<PpobProductDataItem> data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});
}

/// @nodoc
class _$PpobProductResponseModelCopyWithImpl<$Res,
        $Val extends PpobProductResponseModel>
    implements $PpobProductResponseModelCopyWith<$Res> {
  _$PpobProductResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobProductResponseModel
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
              as List<PpobProductDataItem>,
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
}

/// @nodoc
abstract class _$$PpobProductResponseModelImplCopyWith<$Res>
    implements $PpobProductResponseModelCopyWith<$Res> {
  factory _$$PpobProductResponseModelImplCopyWith(
          _$PpobProductResponseModelImpl value,
          $Res Function(_$PpobProductResponseModelImpl) then) =
      __$$PpobProductResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<PpobProductDataItem> data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});
}

/// @nodoc
class __$$PpobProductResponseModelImplCopyWithImpl<$Res>
    extends _$PpobProductResponseModelCopyWithImpl<$Res,
        _$PpobProductResponseModelImpl>
    implements _$$PpobProductResponseModelImplCopyWith<$Res> {
  __$$PpobProductResponseModelImplCopyWithImpl(
      _$PpobProductResponseModelImpl _value,
      $Res Function(_$PpobProductResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobProductResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$PpobProductResponseModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PpobProductDataItem>,
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
class _$PpobProductResponseModelImpl implements _PpobProductResponseModel {
  const _$PpobProductResponseModelImpl(
      {@JsonKey(name: "data") required final List<PpobProductDataItem> data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status_code") required this.statusCode})
      : _data = data;

  factory _$PpobProductResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobProductResponseModelImplFromJson(json);

  final List<PpobProductDataItem> _data;
  @override
  @JsonKey(name: "data")
  List<PpobProductDataItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "status_code")
  final String statusCode;

  @override
  String toString() {
    return 'PpobProductResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobProductResponseModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), message, statusCode);

  /// Create a copy of PpobProductResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobProductResponseModelImplCopyWith<_$PpobProductResponseModelImpl>
      get copyWith => __$$PpobProductResponseModelImplCopyWithImpl<
          _$PpobProductResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobProductResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PpobProductResponseModel implements PpobProductResponseModel {
  const factory _PpobProductResponseModel(
          {@JsonKey(name: "data") required final List<PpobProductDataItem> data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "status_code") required final String statusCode}) =
      _$PpobProductResponseModelImpl;

  factory _PpobProductResponseModel.fromJson(Map<String, dynamic> json) =
      _$PpobProductResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<PpobProductDataItem> get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "status_code")
  String get statusCode;

  /// Create a copy of PpobProductResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobProductResponseModelImplCopyWith<_$PpobProductResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobProductDataItem _$PpobProductDataItemFromJson(Map<String, dynamic> json) {
  return _PpobProductDataItem.fromJson(json);
}

/// @nodoc
mixin _$PpobProductDataItem {
  @JsonKey(name: "icon_url")
  String get iconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "input_field_name")
  String get inputFieldName => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  int get sort => throw _privateConstructorUsedError;

  /// Serializes this PpobProductDataItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobProductDataItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobProductDataItemCopyWith<PpobProductDataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobProductDataItemCopyWith<$Res> {
  factory $PpobProductDataItemCopyWith(
          PpobProductDataItem value, $Res Function(PpobProductDataItem) then) =
      _$PpobProductDataItemCopyWithImpl<$Res, PpobProductDataItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "icon_url") String iconUrl,
      @JsonKey(name: "input_field_name") String inputFieldName,
      @JsonKey(name: "product_id") String productId,
      @JsonKey(name: "product_name") String productName,
      @JsonKey(name: "sort") int sort});
}

/// @nodoc
class _$PpobProductDataItemCopyWithImpl<$Res, $Val extends PpobProductDataItem>
    implements $PpobProductDataItemCopyWith<$Res> {
  _$PpobProductDataItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobProductDataItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrl = null,
    Object? inputFieldName = null,
    Object? productId = null,
    Object? productName = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      inputFieldName: null == inputFieldName
          ? _value.inputFieldName
          : inputFieldName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobProductDataItemImplCopyWith<$Res>
    implements $PpobProductDataItemCopyWith<$Res> {
  factory _$$PpobProductDataItemImplCopyWith(_$PpobProductDataItemImpl value,
          $Res Function(_$PpobProductDataItemImpl) then) =
      __$$PpobProductDataItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "icon_url") String iconUrl,
      @JsonKey(name: "input_field_name") String inputFieldName,
      @JsonKey(name: "product_id") String productId,
      @JsonKey(name: "product_name") String productName,
      @JsonKey(name: "sort") int sort});
}

/// @nodoc
class __$$PpobProductDataItemImplCopyWithImpl<$Res>
    extends _$PpobProductDataItemCopyWithImpl<$Res, _$PpobProductDataItemImpl>
    implements _$$PpobProductDataItemImplCopyWith<$Res> {
  __$$PpobProductDataItemImplCopyWithImpl(_$PpobProductDataItemImpl _value,
      $Res Function(_$PpobProductDataItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobProductDataItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrl = null,
    Object? inputFieldName = null,
    Object? productId = null,
    Object? productName = null,
    Object? sort = null,
  }) {
    return _then(_$PpobProductDataItemImpl(
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      inputFieldName: null == inputFieldName
          ? _value.inputFieldName
          : inputFieldName // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobProductDataItemImpl implements _PpobProductDataItem {
  const _$PpobProductDataItemImpl(
      {@JsonKey(name: "icon_url") required this.iconUrl,
      @JsonKey(name: "input_field_name") required this.inputFieldName,
      @JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "product_name") required this.productName,
      @JsonKey(name: "sort") required this.sort});

  factory _$PpobProductDataItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobProductDataItemImplFromJson(json);

  @override
  @JsonKey(name: "icon_url")
  final String iconUrl;
  @override
  @JsonKey(name: "input_field_name")
  final String inputFieldName;
  @override
  @JsonKey(name: "product_id")
  final String productId;
  @override
  @JsonKey(name: "product_name")
  final String productName;
  @override
  @JsonKey(name: "sort")
  final int sort;

  @override
  String toString() {
    return 'PpobProductDataItem(iconUrl: $iconUrl, inputFieldName: $inputFieldName, productId: $productId, productName: $productName, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobProductDataItemImpl &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.inputFieldName, inputFieldName) ||
                other.inputFieldName == inputFieldName) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, iconUrl, inputFieldName, productId, productName, sort);

  /// Create a copy of PpobProductDataItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobProductDataItemImplCopyWith<_$PpobProductDataItemImpl> get copyWith =>
      __$$PpobProductDataItemImplCopyWithImpl<_$PpobProductDataItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobProductDataItemImplToJson(
      this,
    );
  }
}

abstract class _PpobProductDataItem implements PpobProductDataItem {
  const factory _PpobProductDataItem(
      {@JsonKey(name: "icon_url") required final String iconUrl,
      @JsonKey(name: "input_field_name") required final String inputFieldName,
      @JsonKey(name: "product_id") required final String productId,
      @JsonKey(name: "product_name") required final String productName,
      @JsonKey(name: "sort")
      required final int sort}) = _$PpobProductDataItemImpl;

  factory _PpobProductDataItem.fromJson(Map<String, dynamic> json) =
      _$PpobProductDataItemImpl.fromJson;

  @override
  @JsonKey(name: "icon_url")
  String get iconUrl;
  @override
  @JsonKey(name: "input_field_name")
  String get inputFieldName;
  @override
  @JsonKey(name: "product_id")
  String get productId;
  @override
  @JsonKey(name: "product_name")
  String get productName;
  @override
  @JsonKey(name: "sort")
  int get sort;

  /// Create a copy of PpobProductDataItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobProductDataItemImplCopyWith<_$PpobProductDataItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
