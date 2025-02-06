// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ppob_package_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PpobPackageResponseModel _$PpobPackageResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PpobPackageResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PpobPackageResponseModel {
  @JsonKey(name: "data")
  List<PpobPackageDataItem> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this PpobPackageResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobPackageResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobPackageResponseModelCopyWith<PpobPackageResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobPackageResponseModelCopyWith<$Res> {
  factory $PpobPackageResponseModelCopyWith(PpobPackageResponseModel value,
          $Res Function(PpobPackageResponseModel) then) =
      _$PpobPackageResponseModelCopyWithImpl<$Res, PpobPackageResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<PpobPackageDataItem> data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});
}

/// @nodoc
class _$PpobPackageResponseModelCopyWithImpl<$Res,
        $Val extends PpobPackageResponseModel>
    implements $PpobPackageResponseModelCopyWith<$Res> {
  _$PpobPackageResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobPackageResponseModel
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
              as List<PpobPackageDataItem>,
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
abstract class _$$PpobPackageResponseModelImplCopyWith<$Res>
    implements $PpobPackageResponseModelCopyWith<$Res> {
  factory _$$PpobPackageResponseModelImplCopyWith(
          _$PpobPackageResponseModelImpl value,
          $Res Function(_$PpobPackageResponseModelImpl) then) =
      __$$PpobPackageResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<PpobPackageDataItem> data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});
}

/// @nodoc
class __$$PpobPackageResponseModelImplCopyWithImpl<$Res>
    extends _$PpobPackageResponseModelCopyWithImpl<$Res,
        _$PpobPackageResponseModelImpl>
    implements _$$PpobPackageResponseModelImplCopyWith<$Res> {
  __$$PpobPackageResponseModelImplCopyWithImpl(
      _$PpobPackageResponseModelImpl _value,
      $Res Function(_$PpobPackageResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobPackageResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$PpobPackageResponseModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PpobPackageDataItem>,
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
class _$PpobPackageResponseModelImpl implements _PpobPackageResponseModel {
  const _$PpobPackageResponseModelImpl(
      {@JsonKey(name: "data") required final List<PpobPackageDataItem> data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status_code") required this.statusCode})
      : _data = data;

  factory _$PpobPackageResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobPackageResponseModelImplFromJson(json);

  final List<PpobPackageDataItem> _data;
  @override
  @JsonKey(name: "data")
  List<PpobPackageDataItem> get data {
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
    return 'PpobPackageResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobPackageResponseModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), message, statusCode);

  /// Create a copy of PpobPackageResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobPackageResponseModelImplCopyWith<_$PpobPackageResponseModelImpl>
      get copyWith => __$$PpobPackageResponseModelImplCopyWithImpl<
          _$PpobPackageResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobPackageResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PpobPackageResponseModel implements PpobPackageResponseModel {
  const factory _PpobPackageResponseModel(
          {@JsonKey(name: "data") required final List<PpobPackageDataItem> data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "status_code") required final String statusCode}) =
      _$PpobPackageResponseModelImpl;

  factory _PpobPackageResponseModel.fromJson(Map<String, dynamic> json) =
      _$PpobPackageResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<PpobPackageDataItem> get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "status_code")
  String get statusCode;

  /// Create a copy of PpobPackageResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobPackageResponseModelImplCopyWith<_$PpobPackageResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobPackageDataItem _$PpobPackageDataItemFromJson(Map<String, dynamic> json) {
  return _PpobPackageDataItem.fromJson(json);
}

/// @nodoc
mixin _$PpobPackageDataItem {
  @JsonKey(name: "denom_list")
  List<PpobPackageDataItemDenominationList>? get denominationList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "icon_url")
  String get iconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "package_name")
  String get packageName => throw _privateConstructorUsedError;
  @JsonKey(name: "package_type")
  String get packageType => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  int get sort => throw _privateConstructorUsedError;

  /// Serializes this PpobPackageDataItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobPackageDataItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobPackageDataItemCopyWith<PpobPackageDataItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobPackageDataItemCopyWith<$Res> {
  factory $PpobPackageDataItemCopyWith(
          PpobPackageDataItem value, $Res Function(PpobPackageDataItem) then) =
      _$PpobPackageDataItemCopyWithImpl<$Res, PpobPackageDataItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "denom_list")
      List<PpobPackageDataItemDenominationList>? denominationList,
      @JsonKey(name: "icon_url") String iconUrl,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "package_name") String packageName,
      @JsonKey(name: "package_type") String packageType,
      @JsonKey(name: "sort") int sort});
}

/// @nodoc
class _$PpobPackageDataItemCopyWithImpl<$Res, $Val extends PpobPackageDataItem>
    implements $PpobPackageDataItemCopyWith<$Res> {
  _$PpobPackageDataItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobPackageDataItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? denominationList = freezed,
    Object? iconUrl = null,
    Object? id = null,
    Object? packageName = null,
    Object? packageType = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      denominationList: freezed == denominationList
          ? _value.denominationList
          : denominationList // ignore: cast_nullable_to_non_nullable
              as List<PpobPackageDataItemDenominationList>?,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      packageType: null == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobPackageDataItemImplCopyWith<$Res>
    implements $PpobPackageDataItemCopyWith<$Res> {
  factory _$$PpobPackageDataItemImplCopyWith(_$PpobPackageDataItemImpl value,
          $Res Function(_$PpobPackageDataItemImpl) then) =
      __$$PpobPackageDataItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "denom_list")
      List<PpobPackageDataItemDenominationList>? denominationList,
      @JsonKey(name: "icon_url") String iconUrl,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "package_name") String packageName,
      @JsonKey(name: "package_type") String packageType,
      @JsonKey(name: "sort") int sort});
}

/// @nodoc
class __$$PpobPackageDataItemImplCopyWithImpl<$Res>
    extends _$PpobPackageDataItemCopyWithImpl<$Res, _$PpobPackageDataItemImpl>
    implements _$$PpobPackageDataItemImplCopyWith<$Res> {
  __$$PpobPackageDataItemImplCopyWithImpl(_$PpobPackageDataItemImpl _value,
      $Res Function(_$PpobPackageDataItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobPackageDataItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? denominationList = freezed,
    Object? iconUrl = null,
    Object? id = null,
    Object? packageName = null,
    Object? packageType = null,
    Object? sort = null,
  }) {
    return _then(_$PpobPackageDataItemImpl(
      denominationList: freezed == denominationList
          ? _value._denominationList
          : denominationList // ignore: cast_nullable_to_non_nullable
              as List<PpobPackageDataItemDenominationList>?,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      packageType: null == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
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
class _$PpobPackageDataItemImpl implements _PpobPackageDataItem {
  const _$PpobPackageDataItemImpl(
      {@JsonKey(name: "denom_list")
      required final List<PpobPackageDataItemDenominationList>?
          denominationList,
      @JsonKey(name: "icon_url") required this.iconUrl,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "package_name") required this.packageName,
      @JsonKey(name: "package_type") required this.packageType,
      @JsonKey(name: "sort") required this.sort})
      : _denominationList = denominationList;

  factory _$PpobPackageDataItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PpobPackageDataItemImplFromJson(json);

  final List<PpobPackageDataItemDenominationList>? _denominationList;
  @override
  @JsonKey(name: "denom_list")
  List<PpobPackageDataItemDenominationList>? get denominationList {
    final value = _denominationList;
    if (value == null) return null;
    if (_denominationList is EqualUnmodifiableListView)
      return _denominationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "icon_url")
  final String iconUrl;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "package_name")
  final String packageName;
  @override
  @JsonKey(name: "package_type")
  final String packageType;
  @override
  @JsonKey(name: "sort")
  final int sort;

  @override
  String toString() {
    return 'PpobPackageDataItem(denominationList: $denominationList, iconUrl: $iconUrl, id: $id, packageName: $packageName, packageType: $packageType, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobPackageDataItemImpl &&
            const DeepCollectionEquality()
                .equals(other._denominationList, _denominationList) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.packageType, packageType) ||
                other.packageType == packageType) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_denominationList),
      iconUrl,
      id,
      packageName,
      packageType,
      sort);

  /// Create a copy of PpobPackageDataItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobPackageDataItemImplCopyWith<_$PpobPackageDataItemImpl> get copyWith =>
      __$$PpobPackageDataItemImplCopyWithImpl<_$PpobPackageDataItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobPackageDataItemImplToJson(
      this,
    );
  }
}

abstract class _PpobPackageDataItem implements PpobPackageDataItem {
  const factory _PpobPackageDataItem(
          {@JsonKey(name: "denom_list")
          required final List<PpobPackageDataItemDenominationList>?
              denominationList,
          @JsonKey(name: "icon_url") required final String iconUrl,
          @JsonKey(name: "id") required final String id,
          @JsonKey(name: "package_name") required final String packageName,
          @JsonKey(name: "package_type") required final String packageType,
          @JsonKey(name: "sort") required final int sort}) =
      _$PpobPackageDataItemImpl;

  factory _PpobPackageDataItem.fromJson(Map<String, dynamic> json) =
      _$PpobPackageDataItemImpl.fromJson;

  @override
  @JsonKey(name: "denom_list")
  List<PpobPackageDataItemDenominationList>? get denominationList;
  @override
  @JsonKey(name: "icon_url")
  String get iconUrl;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "package_name")
  String get packageName;
  @override
  @JsonKey(name: "package_type")
  String get packageType;
  @override
  @JsonKey(name: "sort")
  int get sort;

  /// Create a copy of PpobPackageDataItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobPackageDataItemImplCopyWith<_$PpobPackageDataItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PpobPackageDataItemDenominationList
    _$PpobPackageDataItemDenominationListFromJson(Map<String, dynamic> json) {
  return _PpobPackageDataItemDenominationList.fromJson(json);
}

/// @nodoc
mixin _$PpobPackageDataItemDenominationList {
  @JsonKey(name: "formatted")
  PpobPackageDataItemPriceFormatted get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "omitempty")
  String get omitEmpty => throw _privateConstructorUsedError;
  @JsonKey(name: "originalPrice")
  int get originalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;

  /// Serializes this PpobPackageDataItemDenominationList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobPackageDataItemDenominationList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobPackageDataItemDenominationListCopyWith<
          PpobPackageDataItemDenominationList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobPackageDataItemDenominationListCopyWith<$Res> {
  factory $PpobPackageDataItemDenominationListCopyWith(
          PpobPackageDataItemDenominationList value,
          $Res Function(PpobPackageDataItemDenominationList) then) =
      _$PpobPackageDataItemDenominationListCopyWithImpl<$Res,
          PpobPackageDataItemDenominationList>;
  @useResult
  $Res call(
      {@JsonKey(name: "formatted") PpobPackageDataItemPriceFormatted formatted,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "omitempty") String omitEmpty,
      @JsonKey(name: "originalPrice") int originalPrice,
      @JsonKey(name: "price") int price});

  $PpobPackageDataItemPriceFormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class _$PpobPackageDataItemDenominationListCopyWithImpl<$Res,
        $Val extends PpobPackageDataItemDenominationList>
    implements $PpobPackageDataItemDenominationListCopyWith<$Res> {
  _$PpobPackageDataItemDenominationListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobPackageDataItemDenominationList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? id = null,
    Object? name = null,
    Object? omitEmpty = null,
    Object? originalPrice = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as PpobPackageDataItemPriceFormatted,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      omitEmpty: null == omitEmpty
          ? _value.omitEmpty
          : omitEmpty // ignore: cast_nullable_to_non_nullable
              as String,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PpobPackageDataItemDenominationList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PpobPackageDataItemPriceFormattedCopyWith<$Res> get formatted {
    return $PpobPackageDataItemPriceFormattedCopyWith<$Res>(_value.formatted,
        (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PpobPackageDataItemDenominationListImplCopyWith<$Res>
    implements $PpobPackageDataItemDenominationListCopyWith<$Res> {
  factory _$$PpobPackageDataItemDenominationListImplCopyWith(
          _$PpobPackageDataItemDenominationListImpl value,
          $Res Function(_$PpobPackageDataItemDenominationListImpl) then) =
      __$$PpobPackageDataItemDenominationListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "formatted") PpobPackageDataItemPriceFormatted formatted,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "omitempty") String omitEmpty,
      @JsonKey(name: "originalPrice") int originalPrice,
      @JsonKey(name: "price") int price});

  @override
  $PpobPackageDataItemPriceFormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class __$$PpobPackageDataItemDenominationListImplCopyWithImpl<$Res>
    extends _$PpobPackageDataItemDenominationListCopyWithImpl<$Res,
        _$PpobPackageDataItemDenominationListImpl>
    implements _$$PpobPackageDataItemDenominationListImplCopyWith<$Res> {
  __$$PpobPackageDataItemDenominationListImplCopyWithImpl(
      _$PpobPackageDataItemDenominationListImpl _value,
      $Res Function(_$PpobPackageDataItemDenominationListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobPackageDataItemDenominationList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatted = null,
    Object? id = null,
    Object? name = null,
    Object? omitEmpty = null,
    Object? originalPrice = null,
    Object? price = null,
  }) {
    return _then(_$PpobPackageDataItemDenominationListImpl(
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as PpobPackageDataItemPriceFormatted,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      omitEmpty: null == omitEmpty
          ? _value.omitEmpty
          : omitEmpty // ignore: cast_nullable_to_non_nullable
              as String,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobPackageDataItemDenominationListImpl
    implements _PpobPackageDataItemDenominationList {
  const _$PpobPackageDataItemDenominationListImpl(
      {@JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "omitempty") required this.omitEmpty,
      @JsonKey(name: "originalPrice") required this.originalPrice,
      @JsonKey(name: "price") required this.price});

  factory _$PpobPackageDataItemDenominationListImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobPackageDataItemDenominationListImplFromJson(json);

  @override
  @JsonKey(name: "formatted")
  final PpobPackageDataItemPriceFormatted formatted;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "omitempty")
  final String omitEmpty;
  @override
  @JsonKey(name: "originalPrice")
  final int originalPrice;
  @override
  @JsonKey(name: "price")
  final int price;

  @override
  String toString() {
    return 'PpobPackageDataItemDenominationList(formatted: $formatted, id: $id, name: $name, omitEmpty: $omitEmpty, originalPrice: $originalPrice, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobPackageDataItemDenominationListImpl &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.omitEmpty, omitEmpty) ||
                other.omitEmpty == omitEmpty) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, formatted, id, name, omitEmpty, originalPrice, price);

  /// Create a copy of PpobPackageDataItemDenominationList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobPackageDataItemDenominationListImplCopyWith<
          _$PpobPackageDataItemDenominationListImpl>
      get copyWith => __$$PpobPackageDataItemDenominationListImplCopyWithImpl<
          _$PpobPackageDataItemDenominationListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobPackageDataItemDenominationListImplToJson(
      this,
    );
  }
}

abstract class _PpobPackageDataItemDenominationList
    implements PpobPackageDataItemDenominationList {
  const factory _PpobPackageDataItemDenominationList(
          {@JsonKey(name: "formatted")
          required final PpobPackageDataItemPriceFormatted formatted,
          @JsonKey(name: "id") required final String id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "omitempty") required final String omitEmpty,
          @JsonKey(name: "originalPrice") required final int originalPrice,
          @JsonKey(name: "price") required final int price}) =
      _$PpobPackageDataItemDenominationListImpl;

  factory _PpobPackageDataItemDenominationList.fromJson(
          Map<String, dynamic> json) =
      _$PpobPackageDataItemDenominationListImpl.fromJson;

  @override
  @JsonKey(name: "formatted")
  PpobPackageDataItemPriceFormatted get formatted;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "omitempty")
  String get omitEmpty;
  @override
  @JsonKey(name: "originalPrice")
  int get originalPrice;
  @override
  @JsonKey(name: "price")
  int get price;

  /// Create a copy of PpobPackageDataItemDenominationList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobPackageDataItemDenominationListImplCopyWith<
          _$PpobPackageDataItemDenominationListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PpobPackageDataItemPriceFormatted _$PpobPackageDataItemPriceFormattedFromJson(
    Map<String, dynamic> json) {
  return _PpobPackageDataItemPriceFormatted.fromJson(json);
}

/// @nodoc
mixin _$PpobPackageDataItemPriceFormatted {
  @JsonKey(name: "price")
  String get price => throw _privateConstructorUsedError;

  /// Serializes this PpobPackageDataItemPriceFormatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PpobPackageDataItemPriceFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PpobPackageDataItemPriceFormattedCopyWith<PpobPackageDataItemPriceFormatted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpobPackageDataItemPriceFormattedCopyWith<$Res> {
  factory $PpobPackageDataItemPriceFormattedCopyWith(
          PpobPackageDataItemPriceFormatted value,
          $Res Function(PpobPackageDataItemPriceFormatted) then) =
      _$PpobPackageDataItemPriceFormattedCopyWithImpl<$Res,
          PpobPackageDataItemPriceFormatted>;
  @useResult
  $Res call({@JsonKey(name: "price") String price});
}

/// @nodoc
class _$PpobPackageDataItemPriceFormattedCopyWithImpl<$Res,
        $Val extends PpobPackageDataItemPriceFormatted>
    implements $PpobPackageDataItemPriceFormattedCopyWith<$Res> {
  _$PpobPackageDataItemPriceFormattedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PpobPackageDataItemPriceFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PpobPackageDataItemPriceFormattedImplCopyWith<$Res>
    implements $PpobPackageDataItemPriceFormattedCopyWith<$Res> {
  factory _$$PpobPackageDataItemPriceFormattedImplCopyWith(
          _$PpobPackageDataItemPriceFormattedImpl value,
          $Res Function(_$PpobPackageDataItemPriceFormattedImpl) then) =
      __$$PpobPackageDataItemPriceFormattedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "price") String price});
}

/// @nodoc
class __$$PpobPackageDataItemPriceFormattedImplCopyWithImpl<$Res>
    extends _$PpobPackageDataItemPriceFormattedCopyWithImpl<$Res,
        _$PpobPackageDataItemPriceFormattedImpl>
    implements _$$PpobPackageDataItemPriceFormattedImplCopyWith<$Res> {
  __$$PpobPackageDataItemPriceFormattedImplCopyWithImpl(
      _$PpobPackageDataItemPriceFormattedImpl _value,
      $Res Function(_$PpobPackageDataItemPriceFormattedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PpobPackageDataItemPriceFormatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$PpobPackageDataItemPriceFormattedImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PpobPackageDataItemPriceFormattedImpl
    implements _PpobPackageDataItemPriceFormatted {
  const _$PpobPackageDataItemPriceFormattedImpl(
      {@JsonKey(name: "price") required this.price});

  factory _$PpobPackageDataItemPriceFormattedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PpobPackageDataItemPriceFormattedImplFromJson(json);

  @override
  @JsonKey(name: "price")
  final String price;

  @override
  String toString() {
    return 'PpobPackageDataItemPriceFormatted(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PpobPackageDataItemPriceFormattedImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price);

  /// Create a copy of PpobPackageDataItemPriceFormatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PpobPackageDataItemPriceFormattedImplCopyWith<
          _$PpobPackageDataItemPriceFormattedImpl>
      get copyWith => __$$PpobPackageDataItemPriceFormattedImplCopyWithImpl<
          _$PpobPackageDataItemPriceFormattedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PpobPackageDataItemPriceFormattedImplToJson(
      this,
    );
  }
}

abstract class _PpobPackageDataItemPriceFormatted
    implements PpobPackageDataItemPriceFormatted {
  const factory _PpobPackageDataItemPriceFormatted(
          {@JsonKey(name: "price") required final String price}) =
      _$PpobPackageDataItemPriceFormattedImpl;

  factory _PpobPackageDataItemPriceFormatted.fromJson(
          Map<String, dynamic> json) =
      _$PpobPackageDataItemPriceFormattedImpl.fromJson;

  @override
  @JsonKey(name: "price")
  String get price;

  /// Create a copy of PpobPackageDataItemPriceFormatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PpobPackageDataItemPriceFormattedImplCopyWith<
          _$PpobPackageDataItemPriceFormattedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
