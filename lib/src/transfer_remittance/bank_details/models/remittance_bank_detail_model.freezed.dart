// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remittance_bank_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemittanceBankDetail _$RemittanceBankDetailFromJson(Map<String, dynamic> json) {
  return _RemittanceBankDetail.fromJson(json);
}

/// @nodoc
mixin _$RemittanceBankDetail {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this RemittanceBankDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RemittanceBankDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RemittanceBankDetailCopyWith<RemittanceBankDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemittanceBankDetailCopyWith<$Res> {
  factory $RemittanceBankDetailCopyWith(RemittanceBankDetail value,
          $Res Function(RemittanceBankDetail) then) =
      _$RemittanceBankDetailCopyWithImpl<$Res, RemittanceBankDetail>;
  @useResult
  $Res call({int id, String name, String email});
}

/// @nodoc
class _$RemittanceBankDetailCopyWithImpl<$Res,
        $Val extends RemittanceBankDetail>
    implements $RemittanceBankDetailCopyWith<$Res> {
  _$RemittanceBankDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RemittanceBankDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemittanceBankDetailImplCopyWith<$Res>
    implements $RemittanceBankDetailCopyWith<$Res> {
  factory _$$RemittanceBankDetailImplCopyWith(_$RemittanceBankDetailImpl value,
          $Res Function(_$RemittanceBankDetailImpl) then) =
      __$$RemittanceBankDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String email});
}

/// @nodoc
class __$$RemittanceBankDetailImplCopyWithImpl<$Res>
    extends _$RemittanceBankDetailCopyWithImpl<$Res, _$RemittanceBankDetailImpl>
    implements _$$RemittanceBankDetailImplCopyWith<$Res> {
  __$$RemittanceBankDetailImplCopyWithImpl(_$RemittanceBankDetailImpl _value,
      $Res Function(_$RemittanceBankDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of RemittanceBankDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$RemittanceBankDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemittanceBankDetailImpl implements _RemittanceBankDetail {
  const _$RemittanceBankDetailImpl(
      {required this.id, required this.name, required this.email});

  factory _$RemittanceBankDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemittanceBankDetailImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'RemittanceBankDetail(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemittanceBankDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  /// Create a copy of RemittanceBankDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemittanceBankDetailImplCopyWith<_$RemittanceBankDetailImpl>
      get copyWith =>
          __$$RemittanceBankDetailImplCopyWithImpl<_$RemittanceBankDetailImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemittanceBankDetailImplToJson(
      this,
    );
  }
}

abstract class _RemittanceBankDetail implements RemittanceBankDetail {
  const factory _RemittanceBankDetail(
      {required final int id,
      required final String name,
      required final String email}) = _$RemittanceBankDetailImpl;

  factory _RemittanceBankDetail.fromJson(Map<String, dynamic> json) =
      _$RemittanceBankDetailImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;

  /// Create a copy of RemittanceBankDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemittanceBankDetailImplCopyWith<_$RemittanceBankDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
