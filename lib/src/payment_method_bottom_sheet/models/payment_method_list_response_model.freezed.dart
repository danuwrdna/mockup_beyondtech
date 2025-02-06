// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodListResponseModel _$PaymentMethodListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PaymentMethodListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodListResponseModel {
  @JsonKey(name: "data")
  List<PaymentMethodItem> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status_code")
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethodListResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodListResponseModelCopyWith<PaymentMethodListResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodListResponseModelCopyWith<$Res> {
  factory $PaymentMethodListResponseModelCopyWith(
          PaymentMethodListResponseModel value,
          $Res Function(PaymentMethodListResponseModel) then) =
      _$PaymentMethodListResponseModelCopyWithImpl<$Res,
          PaymentMethodListResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<PaymentMethodItem> data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});
}

/// @nodoc
class _$PaymentMethodListResponseModelCopyWithImpl<$Res,
        $Val extends PaymentMethodListResponseModel>
    implements $PaymentMethodListResponseModelCopyWith<$Res> {
  _$PaymentMethodListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodListResponseModel
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
              as List<PaymentMethodItem>,
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
abstract class _$$PaymentMethodListResponseModelImplCopyWith<$Res>
    implements $PaymentMethodListResponseModelCopyWith<$Res> {
  factory _$$PaymentMethodListResponseModelImplCopyWith(
          _$PaymentMethodListResponseModelImpl value,
          $Res Function(_$PaymentMethodListResponseModelImpl) then) =
      __$$PaymentMethodListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") List<PaymentMethodItem> data,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status_code") String statusCode});
}

/// @nodoc
class __$$PaymentMethodListResponseModelImplCopyWithImpl<$Res>
    extends _$PaymentMethodListResponseModelCopyWithImpl<$Res,
        _$PaymentMethodListResponseModelImpl>
    implements _$$PaymentMethodListResponseModelImplCopyWith<$Res> {
  __$$PaymentMethodListResponseModelImplCopyWithImpl(
      _$PaymentMethodListResponseModelImpl _value,
      $Res Function(_$PaymentMethodListResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$PaymentMethodListResponseModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodItem>,
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
class _$PaymentMethodListResponseModelImpl
    implements _PaymentMethodListResponseModel {
  const _$PaymentMethodListResponseModelImpl(
      {@JsonKey(name: "data") required final List<PaymentMethodItem> data,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status_code") required this.statusCode})
      : _data = data;

  factory _$PaymentMethodListResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaymentMethodListResponseModelImplFromJson(json);

  final List<PaymentMethodItem> _data;
  @override
  @JsonKey(name: "data")
  List<PaymentMethodItem> get data {
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
    return 'PaymentMethodListResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodListResponseModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), message, statusCode);

  /// Create a copy of PaymentMethodListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodListResponseModelImplCopyWith<
          _$PaymentMethodListResponseModelImpl>
      get copyWith => __$$PaymentMethodListResponseModelImplCopyWithImpl<
          _$PaymentMethodListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodListResponseModel
    implements PaymentMethodListResponseModel {
  const factory _PaymentMethodListResponseModel(
          {@JsonKey(name: "data") required final List<PaymentMethodItem> data,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "status_code") required final String statusCode}) =
      _$PaymentMethodListResponseModelImpl;

  factory _PaymentMethodListResponseModel.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodListResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<PaymentMethodItem> get data;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "status_code")
  String get statusCode;

  /// Create a copy of PaymentMethodListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodListResponseModelImplCopyWith<
          _$PaymentMethodListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentMethodItem _$PaymentMethodItemFromJson(Map<String, dynamic> json) {
  return _PaymentMethodItem.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodItem {
  @JsonKey(name: "currency_prefix")
  String get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_type")
  String get currencyType => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted")
  FormattedPaymentMethodNominal get formatted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "icon_url")
  String get iconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "min_amount")
  int get minAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_code")
  String get paymentCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_group")
  String get paymentGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_name")
  String get paymentName => throw _privateConstructorUsedError;
  @JsonKey(name: "status_transaction")
  String get statusTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_fee")
  double get totalFee => throw _privateConstructorUsedError;
  @JsonKey(name: "user_balance")
  int get userBalance => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethodItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodItemCopyWith<PaymentMethodItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodItemCopyWith<$Res> {
  factory $PaymentMethodItemCopyWith(
          PaymentMethodItem value, $Res Function(PaymentMethodItem) then) =
      _$PaymentMethodItemCopyWithImpl<$Res, PaymentMethodItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "currency_prefix") String currencyPrefix,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "formatted") FormattedPaymentMethodNominal formatted,
      @JsonKey(name: "icon_url") String iconUrl,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "min_amount") int minAmount,
      @JsonKey(name: "payment_code") String paymentCode,
      @JsonKey(name: "payment_group") String paymentGroup,
      @JsonKey(name: "payment_name") String paymentName,
      @JsonKey(name: "status_transaction") String statusTransaction,
      @JsonKey(name: "total_amount") double totalAmount,
      @JsonKey(name: "total_fee") double totalFee,
      @JsonKey(name: "user_balance") int userBalance});

  $FormattedPaymentMethodNominalCopyWith<$Res> get formatted;
}

/// @nodoc
class _$PaymentMethodItemCopyWithImpl<$Res, $Val extends PaymentMethodItem>
    implements $PaymentMethodItemCopyWith<$Res> {
  _$PaymentMethodItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyPrefix = null,
    Object? currencyType = null,
    Object? formatted = null,
    Object? iconUrl = null,
    Object? id = null,
    Object? isActive = null,
    Object? minAmount = null,
    Object? paymentCode = null,
    Object? paymentGroup = null,
    Object? paymentName = null,
    Object? statusTransaction = null,
    Object? totalAmount = null,
    Object? totalFee = null,
    Object? userBalance = null,
  }) {
    return _then(_value.copyWith(
      currencyPrefix: null == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as FormattedPaymentMethodNominal,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      minAmount: null == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int,
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGroup: null == paymentGroup
          ? _value.paymentGroup
          : paymentGroup // ignore: cast_nullable_to_non_nullable
              as String,
      paymentName: null == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String,
      statusTransaction: null == statusTransaction
          ? _value.statusTransaction
          : statusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as double,
      userBalance: null == userBalance
          ? _value.userBalance
          : userBalance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PaymentMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormattedPaymentMethodNominalCopyWith<$Res> get formatted {
    return $FormattedPaymentMethodNominalCopyWith<$Res>(_value.formatted,
        (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentMethodItemImplCopyWith<$Res>
    implements $PaymentMethodItemCopyWith<$Res> {
  factory _$$PaymentMethodItemImplCopyWith(_$PaymentMethodItemImpl value,
          $Res Function(_$PaymentMethodItemImpl) then) =
      __$$PaymentMethodItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "currency_prefix") String currencyPrefix,
      @JsonKey(name: "currency_type") String currencyType,
      @JsonKey(name: "formatted") FormattedPaymentMethodNominal formatted,
      @JsonKey(name: "icon_url") String iconUrl,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "min_amount") int minAmount,
      @JsonKey(name: "payment_code") String paymentCode,
      @JsonKey(name: "payment_group") String paymentGroup,
      @JsonKey(name: "payment_name") String paymentName,
      @JsonKey(name: "status_transaction") String statusTransaction,
      @JsonKey(name: "total_amount") double totalAmount,
      @JsonKey(name: "total_fee") double totalFee,
      @JsonKey(name: "user_balance") int userBalance});

  @override
  $FormattedPaymentMethodNominalCopyWith<$Res> get formatted;
}

/// @nodoc
class __$$PaymentMethodItemImplCopyWithImpl<$Res>
    extends _$PaymentMethodItemCopyWithImpl<$Res, _$PaymentMethodItemImpl>
    implements _$$PaymentMethodItemImplCopyWith<$Res> {
  __$$PaymentMethodItemImplCopyWithImpl(_$PaymentMethodItemImpl _value,
      $Res Function(_$PaymentMethodItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyPrefix = null,
    Object? currencyType = null,
    Object? formatted = null,
    Object? iconUrl = null,
    Object? id = null,
    Object? isActive = null,
    Object? minAmount = null,
    Object? paymentCode = null,
    Object? paymentGroup = null,
    Object? paymentName = null,
    Object? statusTransaction = null,
    Object? totalAmount = null,
    Object? totalFee = null,
    Object? userBalance = null,
  }) {
    return _then(_$PaymentMethodItemImpl(
      currencyPrefix: null == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as FormattedPaymentMethodNominal,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      minAmount: null == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int,
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGroup: null == paymentGroup
          ? _value.paymentGroup
          : paymentGroup // ignore: cast_nullable_to_non_nullable
              as String,
      paymentName: null == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String,
      statusTransaction: null == statusTransaction
          ? _value.statusTransaction
          : statusTransaction // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as double,
      userBalance: null == userBalance
          ? _value.userBalance
          : userBalance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodItemImpl implements _PaymentMethodItem {
  const _$PaymentMethodItemImpl(
      {@JsonKey(name: "currency_prefix") required this.currencyPrefix,
      @JsonKey(name: "currency_type") required this.currencyType,
      @JsonKey(name: "formatted") required this.formatted,
      @JsonKey(name: "icon_url") required this.iconUrl,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "is_active") required this.isActive,
      @JsonKey(name: "min_amount") required this.minAmount,
      @JsonKey(name: "payment_code") required this.paymentCode,
      @JsonKey(name: "payment_group") required this.paymentGroup,
      @JsonKey(name: "payment_name") required this.paymentName,
      @JsonKey(name: "status_transaction") required this.statusTransaction,
      @JsonKey(name: "total_amount") required this.totalAmount,
      @JsonKey(name: "total_fee") required this.totalFee,
      @JsonKey(name: "user_balance") required this.userBalance});

  factory _$PaymentMethodItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodItemImplFromJson(json);

  @override
  @JsonKey(name: "currency_prefix")
  final String currencyPrefix;
  @override
  @JsonKey(name: "currency_type")
  final String currencyType;
  @override
  @JsonKey(name: "formatted")
  final FormattedPaymentMethodNominal formatted;
  @override
  @JsonKey(name: "icon_url")
  final String iconUrl;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;
  @override
  @JsonKey(name: "min_amount")
  final int minAmount;
  @override
  @JsonKey(name: "payment_code")
  final String paymentCode;
  @override
  @JsonKey(name: "payment_group")
  final String paymentGroup;
  @override
  @JsonKey(name: "payment_name")
  final String paymentName;
  @override
  @JsonKey(name: "status_transaction")
  final String statusTransaction;
  @override
  @JsonKey(name: "total_amount")
  final double totalAmount;
  @override
  @JsonKey(name: "total_fee")
  final double totalFee;
  @override
  @JsonKey(name: "user_balance")
  final int userBalance;

  @override
  String toString() {
    return 'PaymentMethodItem(currencyPrefix: $currencyPrefix, currencyType: $currencyType, formatted: $formatted, iconUrl: $iconUrl, id: $id, isActive: $isActive, minAmount: $minAmount, paymentCode: $paymentCode, paymentGroup: $paymentGroup, paymentName: $paymentName, statusTransaction: $statusTransaction, totalAmount: $totalAmount, totalFee: $totalFee, userBalance: $userBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodItemImpl &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.paymentGroup, paymentGroup) ||
                other.paymentGroup == paymentGroup) &&
            (identical(other.paymentName, paymentName) ||
                other.paymentName == paymentName) &&
            (identical(other.statusTransaction, statusTransaction) ||
                other.statusTransaction == statusTransaction) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.userBalance, userBalance) ||
                other.userBalance == userBalance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currencyPrefix,
      currencyType,
      formatted,
      iconUrl,
      id,
      isActive,
      minAmount,
      paymentCode,
      paymentGroup,
      paymentName,
      statusTransaction,
      totalAmount,
      totalFee,
      userBalance);

  /// Create a copy of PaymentMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodItemImplCopyWith<_$PaymentMethodItemImpl> get copyWith =>
      __$$PaymentMethodItemImplCopyWithImpl<_$PaymentMethodItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodItemImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodItem implements PaymentMethodItem {
  const factory _PaymentMethodItem(
      {@JsonKey(name: "currency_prefix") required final String currencyPrefix,
      @JsonKey(name: "currency_type") required final String currencyType,
      @JsonKey(name: "formatted")
      required final FormattedPaymentMethodNominal formatted,
      @JsonKey(name: "icon_url") required final String iconUrl,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "is_active") required final bool isActive,
      @JsonKey(name: "min_amount") required final int minAmount,
      @JsonKey(name: "payment_code") required final String paymentCode,
      @JsonKey(name: "payment_group") required final String paymentGroup,
      @JsonKey(name: "payment_name") required final String paymentName,
      @JsonKey(name: "status_transaction")
      required final String statusTransaction,
      @JsonKey(name: "total_amount") required final double totalAmount,
      @JsonKey(name: "total_fee") required final double totalFee,
      @JsonKey(name: "user_balance")
      required final int userBalance}) = _$PaymentMethodItemImpl;

  factory _PaymentMethodItem.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodItemImpl.fromJson;

  @override
  @JsonKey(name: "currency_prefix")
  String get currencyPrefix;
  @override
  @JsonKey(name: "currency_type")
  String get currencyType;
  @override
  @JsonKey(name: "formatted")
  FormattedPaymentMethodNominal get formatted;
  @override
  @JsonKey(name: "icon_url")
  String get iconUrl;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(name: "min_amount")
  int get minAmount;
  @override
  @JsonKey(name: "payment_code")
  String get paymentCode;
  @override
  @JsonKey(name: "payment_group")
  String get paymentGroup;
  @override
  @JsonKey(name: "payment_name")
  String get paymentName;
  @override
  @JsonKey(name: "status_transaction")
  String get statusTransaction;
  @override
  @JsonKey(name: "total_amount")
  double get totalAmount;
  @override
  @JsonKey(name: "total_fee")
  double get totalFee;
  @override
  @JsonKey(name: "user_balance")
  int get userBalance;

  /// Create a copy of PaymentMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodItemImplCopyWith<_$PaymentMethodItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormattedPaymentMethodNominal _$FormattedPaymentMethodNominalFromJson(
    Map<String, dynamic> json) {
  return _FormattedPaymentMethodNominal.fromJson(json);
}

/// @nodoc
mixin _$FormattedPaymentMethodNominal {
  @JsonKey(name: "total_fee")
  String get totalFee => throw _privateConstructorUsedError;
  @JsonKey(name: "total_payment")
  String get totalPayment => throw _privateConstructorUsedError;
  @JsonKey(name: "user_balance")
  String get userBalance => throw _privateConstructorUsedError;

  /// Serializes this FormattedPaymentMethodNominal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormattedPaymentMethodNominal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormattedPaymentMethodNominalCopyWith<FormattedPaymentMethodNominal>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormattedPaymentMethodNominalCopyWith<$Res> {
  factory $FormattedPaymentMethodNominalCopyWith(
          FormattedPaymentMethodNominal value,
          $Res Function(FormattedPaymentMethodNominal) then) =
      _$FormattedPaymentMethodNominalCopyWithImpl<$Res,
          FormattedPaymentMethodNominal>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_fee") String totalFee,
      @JsonKey(name: "total_payment") String totalPayment,
      @JsonKey(name: "user_balance") String userBalance});
}

/// @nodoc
class _$FormattedPaymentMethodNominalCopyWithImpl<$Res,
        $Val extends FormattedPaymentMethodNominal>
    implements $FormattedPaymentMethodNominalCopyWith<$Res> {
  _$FormattedPaymentMethodNominalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormattedPaymentMethodNominal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalFee = null,
    Object? totalPayment = null,
    Object? userBalance = null,
  }) {
    return _then(_value.copyWith(
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String,
      totalPayment: null == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as String,
      userBalance: null == userBalance
          ? _value.userBalance
          : userBalance // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormattedPaymentMethodNominalImplCopyWith<$Res>
    implements $FormattedPaymentMethodNominalCopyWith<$Res> {
  factory _$$FormattedPaymentMethodNominalImplCopyWith(
          _$FormattedPaymentMethodNominalImpl value,
          $Res Function(_$FormattedPaymentMethodNominalImpl) then) =
      __$$FormattedPaymentMethodNominalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_fee") String totalFee,
      @JsonKey(name: "total_payment") String totalPayment,
      @JsonKey(name: "user_balance") String userBalance});
}

/// @nodoc
class __$$FormattedPaymentMethodNominalImplCopyWithImpl<$Res>
    extends _$FormattedPaymentMethodNominalCopyWithImpl<$Res,
        _$FormattedPaymentMethodNominalImpl>
    implements _$$FormattedPaymentMethodNominalImplCopyWith<$Res> {
  __$$FormattedPaymentMethodNominalImplCopyWithImpl(
      _$FormattedPaymentMethodNominalImpl _value,
      $Res Function(_$FormattedPaymentMethodNominalImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormattedPaymentMethodNominal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalFee = null,
    Object? totalPayment = null,
    Object? userBalance = null,
  }) {
    return _then(_$FormattedPaymentMethodNominalImpl(
      totalFee: null == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String,
      totalPayment: null == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as String,
      userBalance: null == userBalance
          ? _value.userBalance
          : userBalance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormattedPaymentMethodNominalImpl
    implements _FormattedPaymentMethodNominal {
  const _$FormattedPaymentMethodNominalImpl(
      {@JsonKey(name: "total_fee") required this.totalFee,
      @JsonKey(name: "total_payment") required this.totalPayment,
      @JsonKey(name: "user_balance") required this.userBalance});

  factory _$FormattedPaymentMethodNominalImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FormattedPaymentMethodNominalImplFromJson(json);

  @override
  @JsonKey(name: "total_fee")
  final String totalFee;
  @override
  @JsonKey(name: "total_payment")
  final String totalPayment;
  @override
  @JsonKey(name: "user_balance")
  final String userBalance;

  @override
  String toString() {
    return 'FormattedPaymentMethodNominal(totalFee: $totalFee, totalPayment: $totalPayment, userBalance: $userBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormattedPaymentMethodNominalImpl &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee) &&
            (identical(other.totalPayment, totalPayment) ||
                other.totalPayment == totalPayment) &&
            (identical(other.userBalance, userBalance) ||
                other.userBalance == userBalance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalFee, totalPayment, userBalance);

  /// Create a copy of FormattedPaymentMethodNominal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormattedPaymentMethodNominalImplCopyWith<
          _$FormattedPaymentMethodNominalImpl>
      get copyWith => __$$FormattedPaymentMethodNominalImplCopyWithImpl<
          _$FormattedPaymentMethodNominalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormattedPaymentMethodNominalImplToJson(
      this,
    );
  }
}

abstract class _FormattedPaymentMethodNominal
    implements FormattedPaymentMethodNominal {
  const factory _FormattedPaymentMethodNominal(
          {@JsonKey(name: "total_fee") required final String totalFee,
          @JsonKey(name: "total_payment") required final String totalPayment,
          @JsonKey(name: "user_balance") required final String userBalance}) =
      _$FormattedPaymentMethodNominalImpl;

  factory _FormattedPaymentMethodNominal.fromJson(Map<String, dynamic> json) =
      _$FormattedPaymentMethodNominalImpl.fromJson;

  @override
  @JsonKey(name: "total_fee")
  String get totalFee;
  @override
  @JsonKey(name: "total_payment")
  String get totalPayment;
  @override
  @JsonKey(name: "user_balance")
  String get userBalance;

  /// Create a copy of FormattedPaymentMethodNominal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormattedPaymentMethodNominalImplCopyWith<
          _$FormattedPaymentMethodNominalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
