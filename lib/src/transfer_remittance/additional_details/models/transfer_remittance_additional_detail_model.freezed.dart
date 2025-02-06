// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_remittance_additional_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransferRemittanceAdditionalResponse
    _$TransferRemittanceAdditionalResponseFromJson(Map<String, dynamic> json) {
  return _TransferRemittanceAdditionalResponse.fromJson(json);
}

/// @nodoc
mixin _$TransferRemittanceAdditionalResponse {
  @JsonKey(name: 'status_code')
  String? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<TransferRemittanceAdditionalModel>? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this TransferRemittanceAdditionalResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransferRemittanceAdditionalResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransferRemittanceAdditionalResponseCopyWith<
          TransferRemittanceAdditionalResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferRemittanceAdditionalResponseCopyWith<$Res> {
  factory $TransferRemittanceAdditionalResponseCopyWith(
          TransferRemittanceAdditionalResponse value,
          $Res Function(TransferRemittanceAdditionalResponse) then) =
      _$TransferRemittanceAdditionalResponseCopyWithImpl<$Res,
          TransferRemittanceAdditionalResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') String? statusCode,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<TransferRemittanceAdditionalModel>? data});
}

/// @nodoc
class _$TransferRemittanceAdditionalResponseCopyWithImpl<$Res,
        $Val extends TransferRemittanceAdditionalResponse>
    implements $TransferRemittanceAdditionalResponseCopyWith<$Res> {
  _$TransferRemittanceAdditionalResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransferRemittanceAdditionalResponse
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
              as List<TransferRemittanceAdditionalModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferRemittanceAdditionalResponseImplCopyWith<$Res>
    implements $TransferRemittanceAdditionalResponseCopyWith<$Res> {
  factory _$$TransferRemittanceAdditionalResponseImplCopyWith(
          _$TransferRemittanceAdditionalResponseImpl value,
          $Res Function(_$TransferRemittanceAdditionalResponseImpl) then) =
      __$$TransferRemittanceAdditionalResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') String? statusCode,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<TransferRemittanceAdditionalModel>? data});
}

/// @nodoc
class __$$TransferRemittanceAdditionalResponseImplCopyWithImpl<$Res>
    extends _$TransferRemittanceAdditionalResponseCopyWithImpl<$Res,
        _$TransferRemittanceAdditionalResponseImpl>
    implements _$$TransferRemittanceAdditionalResponseImplCopyWith<$Res> {
  __$$TransferRemittanceAdditionalResponseImplCopyWithImpl(
      _$TransferRemittanceAdditionalResponseImpl _value,
      $Res Function(_$TransferRemittanceAdditionalResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferRemittanceAdditionalResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TransferRemittanceAdditionalResponseImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransferRemittanceAdditionalModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferRemittanceAdditionalResponseImpl
    implements _TransferRemittanceAdditionalResponse {
  _$TransferRemittanceAdditionalResponseImpl(
      {@JsonKey(name: 'status_code') this.statusCode,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data')
      final List<TransferRemittanceAdditionalModel>? data})
      : _data = data;

  factory _$TransferRemittanceAdditionalResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransferRemittanceAdditionalResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final String? statusCode;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<TransferRemittanceAdditionalModel>? _data;
  @override
  @JsonKey(name: 'data')
  List<TransferRemittanceAdditionalModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransferRemittanceAdditionalResponse(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferRemittanceAdditionalResponseImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of TransferRemittanceAdditionalResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferRemittanceAdditionalResponseImplCopyWith<
          _$TransferRemittanceAdditionalResponseImpl>
      get copyWith => __$$TransferRemittanceAdditionalResponseImplCopyWithImpl<
          _$TransferRemittanceAdditionalResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferRemittanceAdditionalResponseImplToJson(
      this,
    );
  }
}

abstract class _TransferRemittanceAdditionalResponse
    implements TransferRemittanceAdditionalResponse {
  factory _TransferRemittanceAdditionalResponse(
          {@JsonKey(name: 'status_code') final String? statusCode,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data')
          final List<TransferRemittanceAdditionalModel>? data}) =
      _$TransferRemittanceAdditionalResponseImpl;

  factory _TransferRemittanceAdditionalResponse.fromJson(
          Map<String, dynamic> json) =
      _$TransferRemittanceAdditionalResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  String? get statusCode;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<TransferRemittanceAdditionalModel>? get data;

  /// Create a copy of TransferRemittanceAdditionalResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransferRemittanceAdditionalResponseImplCopyWith<
          _$TransferRemittanceAdditionalResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransferRemittanceAdditionalModel _$TransferRemittanceAdditionalModelFromJson(
    Map<String, dynamic> json) {
  return _TransferRemittanceAdditionalModel.fromJson(json);
}

/// @nodoc
mixin _$TransferRemittanceAdditionalModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_enumeration_item')
  List<OccupationItem>? get items => throw _privateConstructorUsedError;

  /// Serializes this TransferRemittanceAdditionalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransferRemittanceAdditionalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransferRemittanceAdditionalModelCopyWith<TransferRemittanceAdditionalModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferRemittanceAdditionalModelCopyWith<$Res> {
  factory $TransferRemittanceAdditionalModelCopyWith(
          TransferRemittanceAdditionalModel value,
          $Res Function(TransferRemittanceAdditionalModel) then) =
      _$TransferRemittanceAdditionalModelCopyWithImpl<$Res,
          TransferRemittanceAdditionalModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'data_enumeration_item') List<OccupationItem>? items});
}

/// @nodoc
class _$TransferRemittanceAdditionalModelCopyWithImpl<$Res,
        $Val extends TransferRemittanceAdditionalModel>
    implements $TransferRemittanceAdditionalModelCopyWith<$Res> {
  _$TransferRemittanceAdditionalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransferRemittanceAdditionalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OccupationItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferRemittanceAdditionalModelImplCopyWith<$Res>
    implements $TransferRemittanceAdditionalModelCopyWith<$Res> {
  factory _$$TransferRemittanceAdditionalModelImplCopyWith(
          _$TransferRemittanceAdditionalModelImpl value,
          $Res Function(_$TransferRemittanceAdditionalModelImpl) then) =
      __$$TransferRemittanceAdditionalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'data_enumeration_item') List<OccupationItem>? items});
}

/// @nodoc
class __$$TransferRemittanceAdditionalModelImplCopyWithImpl<$Res>
    extends _$TransferRemittanceAdditionalModelCopyWithImpl<$Res,
        _$TransferRemittanceAdditionalModelImpl>
    implements _$$TransferRemittanceAdditionalModelImplCopyWith<$Res> {
  __$$TransferRemittanceAdditionalModelImplCopyWithImpl(
      _$TransferRemittanceAdditionalModelImpl _value,
      $Res Function(_$TransferRemittanceAdditionalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferRemittanceAdditionalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? items = freezed,
  }) {
    return _then(_$TransferRemittanceAdditionalModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OccupationItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferRemittanceAdditionalModelImpl
    implements _TransferRemittanceAdditionalModel {
  _$TransferRemittanceAdditionalModelImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'data_enumeration_item')
      final List<OccupationItem>? items})
      : _items = items;

  factory _$TransferRemittanceAdditionalModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransferRemittanceAdditionalModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  final List<OccupationItem>? _items;
  @override
  @JsonKey(name: 'data_enumeration_item')
  List<OccupationItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransferRemittanceAdditionalModel(name: $name, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferRemittanceAdditionalModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_items));

  /// Create a copy of TransferRemittanceAdditionalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferRemittanceAdditionalModelImplCopyWith<
          _$TransferRemittanceAdditionalModelImpl>
      get copyWith => __$$TransferRemittanceAdditionalModelImplCopyWithImpl<
          _$TransferRemittanceAdditionalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferRemittanceAdditionalModelImplToJson(
      this,
    );
  }
}

abstract class _TransferRemittanceAdditionalModel
    implements TransferRemittanceAdditionalModel {
  factory _TransferRemittanceAdditionalModel(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'data_enumeration_item')
          final List<OccupationItem>? items}) =
      _$TransferRemittanceAdditionalModelImpl;

  factory _TransferRemittanceAdditionalModel.fromJson(
          Map<String, dynamic> json) =
      _$TransferRemittanceAdditionalModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'data_enumeration_item')
  List<OccupationItem>? get items;

  /// Create a copy of TransferRemittanceAdditionalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransferRemittanceAdditionalModelImplCopyWith<
          _$TransferRemittanceAdditionalModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OccupationItem _$OccupationItemFromJson(Map<String, dynamic> json) {
  return _OccupationItem.fromJson(json);
}

/// @nodoc
mixin _$OccupationItem {
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this OccupationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OccupationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OccupationItemCopyWith<OccupationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupationItemCopyWith<$Res> {
  factory $OccupationItemCopyWith(
          OccupationItem value, $Res Function(OccupationItem) then) =
      _$OccupationItemCopyWithImpl<$Res, OccupationItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String? value,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$OccupationItemCopyWithImpl<$Res, $Val extends OccupationItem>
    implements $OccupationItemCopyWith<$Res> {
  _$OccupationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OccupationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OccupationItemImplCopyWith<$Res>
    implements $OccupationItemCopyWith<$Res> {
  factory _$$OccupationItemImplCopyWith(_$OccupationItemImpl value,
          $Res Function(_$OccupationItemImpl) then) =
      __$$OccupationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String? value,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$OccupationItemImplCopyWithImpl<$Res>
    extends _$OccupationItemCopyWithImpl<$Res, _$OccupationItemImpl>
    implements _$$OccupationItemImplCopyWith<$Res> {
  __$$OccupationItemImplCopyWithImpl(
      _$OccupationItemImpl _value, $Res Function(_$OccupationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OccupationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? description = freezed,
  }) {
    return _then(_$OccupationItemImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OccupationItemImpl implements _OccupationItem {
  _$OccupationItemImpl(
      {@JsonKey(name: 'value') this.value,
      @JsonKey(name: 'description') this.description});

  factory _$OccupationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OccupationItemImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String? value;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'OccupationItem(value: $value, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccupationItemImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, description);

  /// Create a copy of OccupationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OccupationItemImplCopyWith<_$OccupationItemImpl> get copyWith =>
      __$$OccupationItemImplCopyWithImpl<_$OccupationItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OccupationItemImplToJson(
      this,
    );
  }
}

abstract class _OccupationItem implements OccupationItem {
  factory _OccupationItem(
          {@JsonKey(name: 'value') final String? value,
          @JsonKey(name: 'description') final String? description}) =
      _$OccupationItemImpl;

  factory _OccupationItem.fromJson(Map<String, dynamic> json) =
      _$OccupationItemImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String? get value;
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of OccupationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OccupationItemImplCopyWith<_$OccupationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
