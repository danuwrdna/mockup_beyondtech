// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inquiry_postpaid_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InquiryPostpaidResponseModel _$InquiryPostpaidResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseModel.fromJson(json);
}

/// @nodoc
mixin _$InquiryPostpaidResponseModel {
  PostPaidData get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  String get statusCode => throw _privateConstructorUsedError;

  /// Serializes this InquiryPostpaidResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InquiryPostpaidResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InquiryPostpaidResponseModelCopyWith<InquiryPostpaidResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InquiryPostpaidResponseModelCopyWith<$Res> {
  factory $InquiryPostpaidResponseModelCopyWith(
          InquiryPostpaidResponseModel value,
          $Res Function(InquiryPostpaidResponseModel) then) =
      _$InquiryPostpaidResponseModelCopyWithImpl<$Res,
          InquiryPostpaidResponseModel>;
  @useResult
  $Res call(
      {PostPaidData data,
      String message,
      @JsonKey(name: 'status_code') String statusCode});

  $PostPaidDataCopyWith<$Res> get data;
}

/// @nodoc
class _$InquiryPostpaidResponseModelCopyWithImpl<$Res,
        $Val extends InquiryPostpaidResponseModel>
    implements $InquiryPostpaidResponseModelCopyWith<$Res> {
  _$InquiryPostpaidResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InquiryPostpaidResponseModel
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
              as PostPaidData,
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

  /// Create a copy of InquiryPostpaidResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostPaidDataCopyWith<$Res> get data {
    return $PostPaidDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseModelImplCopyWith<$Res>
    implements $InquiryPostpaidResponseModelCopyWith<$Res> {
  factory _$$ResponseModelImplCopyWith(
          _$ResponseModelImpl value, $Res Function(_$ResponseModelImpl) then) =
      __$$ResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostPaidData data,
      String message,
      @JsonKey(name: 'status_code') String statusCode});

  @override
  $PostPaidDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResponseModelImplCopyWithImpl<$Res>
    extends _$InquiryPostpaidResponseModelCopyWithImpl<$Res,
        _$ResponseModelImpl> implements _$$ResponseModelImplCopyWith<$Res> {
  __$$ResponseModelImplCopyWithImpl(
      _$ResponseModelImpl _value, $Res Function(_$ResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InquiryPostpaidResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$ResponseModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PostPaidData,
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
class _$ResponseModelImpl implements _ResponseModel {
  const _$ResponseModelImpl(
      {required this.data,
      required this.message,
      @JsonKey(name: 'status_code') required this.statusCode});

  factory _$ResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseModelImplFromJson(json);

  @override
  final PostPaidData data;
  @override
  final String message;
  @override
  @JsonKey(name: 'status_code')
  final String statusCode;

  @override
  String toString() {
    return 'InquiryPostpaidResponseModel(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, message, statusCode);

  /// Create a copy of InquiryPostpaidResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseModelImplCopyWith<_$ResponseModelImpl> get copyWith =>
      __$$ResponseModelImplCopyWithImpl<_$ResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseModel implements InquiryPostpaidResponseModel {
  const factory _ResponseModel(
          {required final PostPaidData data,
          required final String message,
          @JsonKey(name: 'status_code') required final String statusCode}) =
      _$ResponseModelImpl;

  factory _ResponseModel.fromJson(Map<String, dynamic> json) =
      _$ResponseModelImpl.fromJson;

  @override
  PostPaidData get data;
  @override
  String get message;
  @override
  @JsonKey(name: 'status_code')
  String get statusCode;

  /// Create a copy of InquiryPostpaidResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseModelImplCopyWith<_$ResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostPaidData _$PostPaidDataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$PostPaidData {
  Customer get customer => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_detail')
  TaxDetail get taxDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'trx_id')
  String get trxId => throw _privateConstructorUsedError;

  /// Serializes this PostPaidData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostPaidData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostPaidDataCopyWith<PostPaidData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPaidDataCopyWith<$Res> {
  factory $PostPaidDataCopyWith(
          PostPaidData value, $Res Function(PostPaidData) then) =
      _$PostPaidDataCopyWithImpl<$Res, PostPaidData>;
  @useResult
  $Res call(
      {Customer customer,
      @JsonKey(name: 'tax_detail') TaxDetail taxDetail,
      @JsonKey(name: 'trx_id') String trxId});

  $CustomerCopyWith<$Res> get customer;
  $TaxDetailCopyWith<$Res> get taxDetail;
}

/// @nodoc
class _$PostPaidDataCopyWithImpl<$Res, $Val extends PostPaidData>
    implements $PostPaidDataCopyWith<$Res> {
  _$PostPaidDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostPaidData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? taxDetail = null,
    Object? trxId = null,
  }) {
    return _then(_value.copyWith(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      taxDetail: null == taxDetail
          ? _value.taxDetail
          : taxDetail // ignore: cast_nullable_to_non_nullable
              as TaxDetail,
      trxId: null == trxId
          ? _value.trxId
          : trxId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PostPaidData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of PostPaidData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaxDetailCopyWith<$Res> get taxDetail {
    return $TaxDetailCopyWith<$Res>(_value.taxDetail, (value) {
      return _then(_value.copyWith(taxDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $PostPaidDataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Customer customer,
      @JsonKey(name: 'tax_detail') TaxDetail taxDetail,
      @JsonKey(name: 'trx_id') String trxId});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $TaxDetailCopyWith<$Res> get taxDetail;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$PostPaidDataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostPaidData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? taxDetail = null,
    Object? trxId = null,
  }) {
    return _then(_$DataImpl(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      taxDetail: null == taxDetail
          ? _value.taxDetail
          : taxDetail // ignore: cast_nullable_to_non_nullable
              as TaxDetail,
      trxId: null == trxId
          ? _value.trxId
          : trxId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {required this.customer,
      @JsonKey(name: 'tax_detail') required this.taxDetail,
      @JsonKey(name: 'trx_id') required this.trxId});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final Customer customer;
  @override
  @JsonKey(name: 'tax_detail')
  final TaxDetail taxDetail;
  @override
  @JsonKey(name: 'trx_id')
  final String trxId;

  @override
  String toString() {
    return 'PostPaidData(customer: $customer, taxDetail: $taxDetail, trxId: $trxId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.taxDetail, taxDetail) ||
                other.taxDetail == taxDetail) &&
            (identical(other.trxId, trxId) || other.trxId == trxId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customer, taxDetail, trxId);

  /// Create a copy of PostPaidData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements PostPaidData {
  const factory _Data(
      {required final Customer customer,
      @JsonKey(name: 'tax_detail') required final TaxDetail taxDetail,
      @JsonKey(name: 'trx_id') required final String trxId}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  Customer get customer;
  @override
  @JsonKey(name: 'tax_detail')
  TaxDetail get taxDetail;
  @override
  @JsonKey(name: 'trx_id')
  String get trxId;

  /// Create a copy of PostPaidData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_no')
  String get customerNo => throw _privateConstructorUsedError;

  /// Serializes this Customer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'customer_no') String customerNo});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? customerNo = null,
  }) {
    return _then(_value.copyWith(
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerNo: null == customerNo
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'customer_no') String customerNo});
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? customerNo = null,
  }) {
    return _then(_$CustomerImpl(
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerNo: null == customerNo
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerImpl implements _Customer {
  const _$CustomerImpl(
      {@JsonKey(name: 'customer_name') required this.customerName,
      @JsonKey(name: 'customer_no') required this.customerNo});

  factory _$CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerImplFromJson(json);

  @override
  @JsonKey(name: 'customer_name')
  final String customerName;
  @override
  @JsonKey(name: 'customer_no')
  final String customerNo;

  @override
  String toString() {
    return 'Customer(customerName: $customerName, customerNo: $customerNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerNo, customerNo) ||
                other.customerNo == customerNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerName, customerNo);

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerImplToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
          {@JsonKey(name: 'customer_name') required final String customerName,
          @JsonKey(name: 'customer_no') required final String customerNo}) =
      _$CustomerImpl;

  factory _Customer.fromJson(Map<String, dynamic> json) =
      _$CustomerImpl.fromJson;

  @override
  @JsonKey(name: 'customer_name')
  String get customerName;
  @override
  @JsonKey(name: 'customer_no')
  String get customerNo;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaxDetail _$TaxDetailFromJson(Map<String, dynamic> json) {
  return _TaxDetail.fromJson(json);
}

/// @nodoc
mixin _$TaxDetail {
  int get admin => throw _privateConstructorUsedError;
  @JsonKey(name: 'buyer_sku_code')
  String get buyerSkuCode => throw _privateConstructorUsedError;
  Desc get desc => throw _privateConstructorUsedError;
  Formatted get formatted => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get rc => throw _privateConstructorUsedError;
  @JsonKey(name: 'selling_price')
  int get sellingPrice => throw _privateConstructorUsedError;
  String get sn => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this TaxDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxDetailCopyWith<TaxDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxDetailCopyWith<$Res> {
  factory $TaxDetailCopyWith(TaxDetail value, $Res Function(TaxDetail) then) =
      _$TaxDetailCopyWithImpl<$Res, TaxDetail>;
  @useResult
  $Res call(
      {int admin,
      @JsonKey(name: 'buyer_sku_code') String buyerSkuCode,
      Desc desc,
      Formatted formatted,
      String message,
      int price,
      String rc,
      @JsonKey(name: 'selling_price') int sellingPrice,
      String sn,
      String status});

  $DescCopyWith<$Res> get desc;
  $FormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class _$TaxDetailCopyWithImpl<$Res, $Val extends TaxDetail>
    implements $TaxDetailCopyWith<$Res> {
  _$TaxDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? buyerSkuCode = null,
    Object? desc = null,
    Object? formatted = null,
    Object? message = null,
    Object? price = null,
    Object? rc = null,
    Object? sellingPrice = null,
    Object? sn = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as int,
      buyerSkuCode: null == buyerSkuCode
          ? _value.buyerSkuCode
          : buyerSkuCode // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as Desc,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rc: null == rc
          ? _value.rc
          : rc // ignore: cast_nullable_to_non_nullable
              as String,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sn: null == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DescCopyWith<$Res> get desc {
    return $DescCopyWith<$Res>(_value.desc, (value) {
      return _then(_value.copyWith(desc: value) as $Val);
    });
  }

  /// Create a copy of TaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormattedCopyWith<$Res> get formatted {
    return $FormattedCopyWith<$Res>(_value.formatted, (value) {
      return _then(_value.copyWith(formatted: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaxDetailImplCopyWith<$Res>
    implements $TaxDetailCopyWith<$Res> {
  factory _$$TaxDetailImplCopyWith(
          _$TaxDetailImpl value, $Res Function(_$TaxDetailImpl) then) =
      __$$TaxDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int admin,
      @JsonKey(name: 'buyer_sku_code') String buyerSkuCode,
      Desc desc,
      Formatted formatted,
      String message,
      int price,
      String rc,
      @JsonKey(name: 'selling_price') int sellingPrice,
      String sn,
      String status});

  @override
  $DescCopyWith<$Res> get desc;
  @override
  $FormattedCopyWith<$Res> get formatted;
}

/// @nodoc
class __$$TaxDetailImplCopyWithImpl<$Res>
    extends _$TaxDetailCopyWithImpl<$Res, _$TaxDetailImpl>
    implements _$$TaxDetailImplCopyWith<$Res> {
  __$$TaxDetailImplCopyWithImpl(
      _$TaxDetailImpl _value, $Res Function(_$TaxDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? buyerSkuCode = null,
    Object? desc = null,
    Object? formatted = null,
    Object? message = null,
    Object? price = null,
    Object? rc = null,
    Object? sellingPrice = null,
    Object? sn = null,
    Object? status = null,
  }) {
    return _then(_$TaxDetailImpl(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as int,
      buyerSkuCode: null == buyerSkuCode
          ? _value.buyerSkuCode
          : buyerSkuCode // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as Desc,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as Formatted,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rc: null == rc
          ? _value.rc
          : rc // ignore: cast_nullable_to_non_nullable
              as String,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sn: null == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxDetailImpl implements _TaxDetail {
  const _$TaxDetailImpl(
      {required this.admin,
      @JsonKey(name: 'buyer_sku_code') required this.buyerSkuCode,
      required this.desc,
      required this.formatted,
      required this.message,
      required this.price,
      required this.rc,
      @JsonKey(name: 'selling_price') required this.sellingPrice,
      required this.sn,
      required this.status});

  factory _$TaxDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxDetailImplFromJson(json);

  @override
  final int admin;
  @override
  @JsonKey(name: 'buyer_sku_code')
  final String buyerSkuCode;
  @override
  final Desc desc;
  @override
  final Formatted formatted;
  @override
  final String message;
  @override
  final int price;
  @override
  final String rc;
  @override
  @JsonKey(name: 'selling_price')
  final int sellingPrice;
  @override
  final String sn;
  @override
  final String status;

  @override
  String toString() {
    return 'TaxDetail(admin: $admin, buyerSkuCode: $buyerSkuCode, desc: $desc, formatted: $formatted, message: $message, price: $price, rc: $rc, sellingPrice: $sellingPrice, sn: $sn, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxDetailImpl &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.buyerSkuCode, buyerSkuCode) ||
                other.buyerSkuCode == buyerSkuCode) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rc, rc) || other.rc == rc) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.sn, sn) || other.sn == sn) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, admin, buyerSkuCode, desc,
      formatted, message, price, rc, sellingPrice, sn, status);

  /// Create a copy of TaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxDetailImplCopyWith<_$TaxDetailImpl> get copyWith =>
      __$$TaxDetailImplCopyWithImpl<_$TaxDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxDetailImplToJson(
      this,
    );
  }
}

abstract class _TaxDetail implements TaxDetail {
  const factory _TaxDetail(
      {required final int admin,
      @JsonKey(name: 'buyer_sku_code') required final String buyerSkuCode,
      required final Desc desc,
      required final Formatted formatted,
      required final String message,
      required final int price,
      required final String rc,
      @JsonKey(name: 'selling_price') required final int sellingPrice,
      required final String sn,
      required final String status}) = _$TaxDetailImpl;

  factory _TaxDetail.fromJson(Map<String, dynamic> json) =
      _$TaxDetailImpl.fromJson;

  @override
  int get admin;
  @override
  @JsonKey(name: 'buyer_sku_code')
  String get buyerSkuCode;
  @override
  Desc get desc;
  @override
  Formatted get formatted;
  @override
  String get message;
  @override
  int get price;
  @override
  String get rc;
  @override
  @JsonKey(name: 'selling_price')
  int get sellingPrice;
  @override
  String get sn;
  @override
  String get status;

  /// Create a copy of TaxDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxDetailImplCopyWith<_$TaxDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Desc _$DescFromJson(Map<String, dynamic> json) {
  return _Desc.fromJson(json);
}

/// @nodoc
mixin _$Desc {
  String get alamat => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_admin_stnk')
  String get biayaAdminStnk => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_admin_tnkb')
  String get biayaAdminTnkb => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_denda_bbn')
  String get biayaDendaBbn => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_denda_pkb')
  String get biayaDendaPkb => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_denda_swd')
  String get biayaDendaSwd => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_pajak_progresif')
  String get biayaPajakProgresif => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_parkir_pokok')
  String get biayaParkirPokok => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_pokok_bbn')
  String get biayaPokokBbn => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_pokok_pkb')
  String get biayaPokokPkb => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_pokok_swd')
  String get biayaPokokSwd => throw _privateConstructorUsedError;
  int get daya => throw _privateConstructorUsedError;
  List<Detail> get detail => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_name')
  String get itemName => throw _privateConstructorUsedError;
  @JsonKey(name: 'jatuh_temp')
  String get jatuhTemp => throw _privateConstructorUsedError;
  int get jht => throw _privateConstructorUsedError;
  int get jkk => throw _privateConstructorUsedError;
  int get jkm => throw _privateConstructorUsedError;
  int get jpk => throw _privateConstructorUsedError;
  int get jpn => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlah_peserta')
  String get jumlahPeserta => throw _privateConstructorUsedError;
  @JsonKey(name: 'kab_kota')
  String get kabKota => throw _privateConstructorUsedError;
  @JsonKey(name: 'kantor_cabang')
  String get kantorCabang => throw _privateConstructorUsedError;
  String get kecamatan => throw _privateConstructorUsedError;
  String get kelurahan => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode_divisi')
  String get kodeDivisi => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode_iuran')
  String get kodeIuran => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode_kab_kota')
  String get kodeKabKota => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode_program')
  String get kodeProgram => throw _privateConstructorUsedError;
  @JsonKey(name: 'lembar_tagihan')
  int get lembarTagihan => throw _privateConstructorUsedError;
  @JsonKey(name: 'luas_gedung')
  String get luasGedung => throw _privateConstructorUsedError;
  @JsonKey(name: 'luas_tanah')
  String get luasTanah => throw _privateConstructorUsedError;
  @JsonKey(name: 'merek_kb')
  String get merekKb => throw _privateConstructorUsedError;
  @JsonKey(name: 'milik_kenama')
  String get milikKenama => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_kb')
  String get modelKb => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_pol')
  String get noPol => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_rangka')
  String get noRangka => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_registrasi')
  String get noRegistrasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomor_identitas')
  String get nomorIdentitas => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomor_mesin')
  String get nomorMesin => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomor_polisi')
  String get nomorPolisi => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomor_rangka')
  String get nomorRangka => throw _privateConstructorUsedError;
  String get npp => throw _privateConstructorUsedError;
  @JsonKey(name: 'tahun_buatan')
  String get tahunBuatan => throw _privateConstructorUsedError;
  @JsonKey(name: 'tahun_pajak')
  String get tahunPajak => throw _privateConstructorUsedError;
  @JsonKey(name: 'tanggal_registrasi')
  String get tanggalRegistrasi => throw _privateConstructorUsedError;
  String get tarif => throw _privateConstructorUsedError;
  String get tenor => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_akhir_pajak_baru')
  String get tglAkhirPajakBaru => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_efektif')
  String get tglEfektif => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_expired')
  String get tglExpired => throw _privateConstructorUsedError;
  String get transaksi => throw _privateConstructorUsedError;

  /// Serializes this Desc to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Desc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DescCopyWith<Desc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescCopyWith<$Res> {
  factory $DescCopyWith(Desc value, $Res Function(Desc) then) =
      _$DescCopyWithImpl<$Res, Desc>;
  @useResult
  $Res call(
      {String alamat,
      @JsonKey(name: 'biaya_admin_stnk') String biayaAdminStnk,
      @JsonKey(name: 'biaya_admin_tnkb') String biayaAdminTnkb,
      @JsonKey(name: 'biaya_denda_bbn') String biayaDendaBbn,
      @JsonKey(name: 'biaya_denda_pkb') String biayaDendaPkb,
      @JsonKey(name: 'biaya_denda_swd') String biayaDendaSwd,
      @JsonKey(name: 'biaya_pajak_progresif') String biayaPajakProgresif,
      @JsonKey(name: 'biaya_parkir_pokok') String biayaParkirPokok,
      @JsonKey(name: 'biaya_pokok_bbn') String biayaPokokBbn,
      @JsonKey(name: 'biaya_pokok_pkb') String biayaPokokPkb,
      @JsonKey(name: 'biaya_pokok_swd') String biayaPokokSwd,
      int daya,
      List<Detail> detail,
      @JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'jatuh_temp') String jatuhTemp,
      int jht,
      int jkk,
      int jkm,
      int jpk,
      int jpn,
      @JsonKey(name: 'jumlah_peserta') String jumlahPeserta,
      @JsonKey(name: 'kab_kota') String kabKota,
      @JsonKey(name: 'kantor_cabang') String kantorCabang,
      String kecamatan,
      String kelurahan,
      @JsonKey(name: 'kode_divisi') String kodeDivisi,
      @JsonKey(name: 'kode_iuran') String kodeIuran,
      @JsonKey(name: 'kode_kab_kota') String kodeKabKota,
      @JsonKey(name: 'kode_program') String kodeProgram,
      @JsonKey(name: 'lembar_tagihan') int lembarTagihan,
      @JsonKey(name: 'luas_gedung') String luasGedung,
      @JsonKey(name: 'luas_tanah') String luasTanah,
      @JsonKey(name: 'merek_kb') String merekKb,
      @JsonKey(name: 'milik_kenama') String milikKenama,
      @JsonKey(name: 'model_kb') String modelKb,
      @JsonKey(name: 'no_pol') String noPol,
      @JsonKey(name: 'no_rangka') String noRangka,
      @JsonKey(name: 'no_registrasi') String noRegistrasi,
      @JsonKey(name: 'nomor_identitas') String nomorIdentitas,
      @JsonKey(name: 'nomor_mesin') String nomorMesin,
      @JsonKey(name: 'nomor_polisi') String nomorPolisi,
      @JsonKey(name: 'nomor_rangka') String nomorRangka,
      String npp,
      @JsonKey(name: 'tahun_buatan') String tahunBuatan,
      @JsonKey(name: 'tahun_pajak') String tahunPajak,
      @JsonKey(name: 'tanggal_registrasi') String tanggalRegistrasi,
      String tarif,
      String tenor,
      @JsonKey(name: 'tgl_akhir_pajak_baru') String tglAkhirPajakBaru,
      @JsonKey(name: 'tgl_efektif') String tglEfektif,
      @JsonKey(name: 'tgl_expired') String tglExpired,
      String transaksi});
}

/// @nodoc
class _$DescCopyWithImpl<$Res, $Val extends Desc>
    implements $DescCopyWith<$Res> {
  _$DescCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Desc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alamat = null,
    Object? biayaAdminStnk = null,
    Object? biayaAdminTnkb = null,
    Object? biayaDendaBbn = null,
    Object? biayaDendaPkb = null,
    Object? biayaDendaSwd = null,
    Object? biayaPajakProgresif = null,
    Object? biayaParkirPokok = null,
    Object? biayaPokokBbn = null,
    Object? biayaPokokPkb = null,
    Object? biayaPokokSwd = null,
    Object? daya = null,
    Object? detail = null,
    Object? itemName = null,
    Object? jatuhTemp = null,
    Object? jht = null,
    Object? jkk = null,
    Object? jkm = null,
    Object? jpk = null,
    Object? jpn = null,
    Object? jumlahPeserta = null,
    Object? kabKota = null,
    Object? kantorCabang = null,
    Object? kecamatan = null,
    Object? kelurahan = null,
    Object? kodeDivisi = null,
    Object? kodeIuran = null,
    Object? kodeKabKota = null,
    Object? kodeProgram = null,
    Object? lembarTagihan = null,
    Object? luasGedung = null,
    Object? luasTanah = null,
    Object? merekKb = null,
    Object? milikKenama = null,
    Object? modelKb = null,
    Object? noPol = null,
    Object? noRangka = null,
    Object? noRegistrasi = null,
    Object? nomorIdentitas = null,
    Object? nomorMesin = null,
    Object? nomorPolisi = null,
    Object? nomorRangka = null,
    Object? npp = null,
    Object? tahunBuatan = null,
    Object? tahunPajak = null,
    Object? tanggalRegistrasi = null,
    Object? tarif = null,
    Object? tenor = null,
    Object? tglAkhirPajakBaru = null,
    Object? tglEfektif = null,
    Object? tglExpired = null,
    Object? transaksi = null,
  }) {
    return _then(_value.copyWith(
      alamat: null == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String,
      biayaAdminStnk: null == biayaAdminStnk
          ? _value.biayaAdminStnk
          : biayaAdminStnk // ignore: cast_nullable_to_non_nullable
              as String,
      biayaAdminTnkb: null == biayaAdminTnkb
          ? _value.biayaAdminTnkb
          : biayaAdminTnkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaBbn: null == biayaDendaBbn
          ? _value.biayaDendaBbn
          : biayaDendaBbn // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaPkb: null == biayaDendaPkb
          ? _value.biayaDendaPkb
          : biayaDendaPkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaSwd: null == biayaDendaSwd
          ? _value.biayaDendaSwd
          : biayaDendaSwd // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPajakProgresif: null == biayaPajakProgresif
          ? _value.biayaPajakProgresif
          : biayaPajakProgresif // ignore: cast_nullable_to_non_nullable
              as String,
      biayaParkirPokok: null == biayaParkirPokok
          ? _value.biayaParkirPokok
          : biayaParkirPokok // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokBbn: null == biayaPokokBbn
          ? _value.biayaPokokBbn
          : biayaPokokBbn // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokPkb: null == biayaPokokPkb
          ? _value.biayaPokokPkb
          : biayaPokokPkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokSwd: null == biayaPokokSwd
          ? _value.biayaPokokSwd
          : biayaPokokSwd // ignore: cast_nullable_to_non_nullable
              as String,
      daya: null == daya
          ? _value.daya
          : daya // ignore: cast_nullable_to_non_nullable
              as int,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Detail>,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      jatuhTemp: null == jatuhTemp
          ? _value.jatuhTemp
          : jatuhTemp // ignore: cast_nullable_to_non_nullable
              as String,
      jht: null == jht
          ? _value.jht
          : jht // ignore: cast_nullable_to_non_nullable
              as int,
      jkk: null == jkk
          ? _value.jkk
          : jkk // ignore: cast_nullable_to_non_nullable
              as int,
      jkm: null == jkm
          ? _value.jkm
          : jkm // ignore: cast_nullable_to_non_nullable
              as int,
      jpk: null == jpk
          ? _value.jpk
          : jpk // ignore: cast_nullable_to_non_nullable
              as int,
      jpn: null == jpn
          ? _value.jpn
          : jpn // ignore: cast_nullable_to_non_nullable
              as int,
      jumlahPeserta: null == jumlahPeserta
          ? _value.jumlahPeserta
          : jumlahPeserta // ignore: cast_nullable_to_non_nullable
              as String,
      kabKota: null == kabKota
          ? _value.kabKota
          : kabKota // ignore: cast_nullable_to_non_nullable
              as String,
      kantorCabang: null == kantorCabang
          ? _value.kantorCabang
          : kantorCabang // ignore: cast_nullable_to_non_nullable
              as String,
      kecamatan: null == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String,
      kelurahan: null == kelurahan
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as String,
      kodeDivisi: null == kodeDivisi
          ? _value.kodeDivisi
          : kodeDivisi // ignore: cast_nullable_to_non_nullable
              as String,
      kodeIuran: null == kodeIuran
          ? _value.kodeIuran
          : kodeIuran // ignore: cast_nullable_to_non_nullable
              as String,
      kodeKabKota: null == kodeKabKota
          ? _value.kodeKabKota
          : kodeKabKota // ignore: cast_nullable_to_non_nullable
              as String,
      kodeProgram: null == kodeProgram
          ? _value.kodeProgram
          : kodeProgram // ignore: cast_nullable_to_non_nullable
              as String,
      lembarTagihan: null == lembarTagihan
          ? _value.lembarTagihan
          : lembarTagihan // ignore: cast_nullable_to_non_nullable
              as int,
      luasGedung: null == luasGedung
          ? _value.luasGedung
          : luasGedung // ignore: cast_nullable_to_non_nullable
              as String,
      luasTanah: null == luasTanah
          ? _value.luasTanah
          : luasTanah // ignore: cast_nullable_to_non_nullable
              as String,
      merekKb: null == merekKb
          ? _value.merekKb
          : merekKb // ignore: cast_nullable_to_non_nullable
              as String,
      milikKenama: null == milikKenama
          ? _value.milikKenama
          : milikKenama // ignore: cast_nullable_to_non_nullable
              as String,
      modelKb: null == modelKb
          ? _value.modelKb
          : modelKb // ignore: cast_nullable_to_non_nullable
              as String,
      noPol: null == noPol
          ? _value.noPol
          : noPol // ignore: cast_nullable_to_non_nullable
              as String,
      noRangka: null == noRangka
          ? _value.noRangka
          : noRangka // ignore: cast_nullable_to_non_nullable
              as String,
      noRegistrasi: null == noRegistrasi
          ? _value.noRegistrasi
          : noRegistrasi // ignore: cast_nullable_to_non_nullable
              as String,
      nomorIdentitas: null == nomorIdentitas
          ? _value.nomorIdentitas
          : nomorIdentitas // ignore: cast_nullable_to_non_nullable
              as String,
      nomorMesin: null == nomorMesin
          ? _value.nomorMesin
          : nomorMesin // ignore: cast_nullable_to_non_nullable
              as String,
      nomorPolisi: null == nomorPolisi
          ? _value.nomorPolisi
          : nomorPolisi // ignore: cast_nullable_to_non_nullable
              as String,
      nomorRangka: null == nomorRangka
          ? _value.nomorRangka
          : nomorRangka // ignore: cast_nullable_to_non_nullable
              as String,
      npp: null == npp
          ? _value.npp
          : npp // ignore: cast_nullable_to_non_nullable
              as String,
      tahunBuatan: null == tahunBuatan
          ? _value.tahunBuatan
          : tahunBuatan // ignore: cast_nullable_to_non_nullable
              as String,
      tahunPajak: null == tahunPajak
          ? _value.tahunPajak
          : tahunPajak // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalRegistrasi: null == tanggalRegistrasi
          ? _value.tanggalRegistrasi
          : tanggalRegistrasi // ignore: cast_nullable_to_non_nullable
              as String,
      tarif: null == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as String,
      tenor: null == tenor
          ? _value.tenor
          : tenor // ignore: cast_nullable_to_non_nullable
              as String,
      tglAkhirPajakBaru: null == tglAkhirPajakBaru
          ? _value.tglAkhirPajakBaru
          : tglAkhirPajakBaru // ignore: cast_nullable_to_non_nullable
              as String,
      tglEfektif: null == tglEfektif
          ? _value.tglEfektif
          : tglEfektif // ignore: cast_nullable_to_non_nullable
              as String,
      tglExpired: null == tglExpired
          ? _value.tglExpired
          : tglExpired // ignore: cast_nullable_to_non_nullable
              as String,
      transaksi: null == transaksi
          ? _value.transaksi
          : transaksi // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DescImplCopyWith<$Res> implements $DescCopyWith<$Res> {
  factory _$$DescImplCopyWith(
          _$DescImpl value, $Res Function(_$DescImpl) then) =
      __$$DescImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String alamat,
      @JsonKey(name: 'biaya_admin_stnk') String biayaAdminStnk,
      @JsonKey(name: 'biaya_admin_tnkb') String biayaAdminTnkb,
      @JsonKey(name: 'biaya_denda_bbn') String biayaDendaBbn,
      @JsonKey(name: 'biaya_denda_pkb') String biayaDendaPkb,
      @JsonKey(name: 'biaya_denda_swd') String biayaDendaSwd,
      @JsonKey(name: 'biaya_pajak_progresif') String biayaPajakProgresif,
      @JsonKey(name: 'biaya_parkir_pokok') String biayaParkirPokok,
      @JsonKey(name: 'biaya_pokok_bbn') String biayaPokokBbn,
      @JsonKey(name: 'biaya_pokok_pkb') String biayaPokokPkb,
      @JsonKey(name: 'biaya_pokok_swd') String biayaPokokSwd,
      int daya,
      List<Detail> detail,
      @JsonKey(name: 'item_name') String itemName,
      @JsonKey(name: 'jatuh_temp') String jatuhTemp,
      int jht,
      int jkk,
      int jkm,
      int jpk,
      int jpn,
      @JsonKey(name: 'jumlah_peserta') String jumlahPeserta,
      @JsonKey(name: 'kab_kota') String kabKota,
      @JsonKey(name: 'kantor_cabang') String kantorCabang,
      String kecamatan,
      String kelurahan,
      @JsonKey(name: 'kode_divisi') String kodeDivisi,
      @JsonKey(name: 'kode_iuran') String kodeIuran,
      @JsonKey(name: 'kode_kab_kota') String kodeKabKota,
      @JsonKey(name: 'kode_program') String kodeProgram,
      @JsonKey(name: 'lembar_tagihan') int lembarTagihan,
      @JsonKey(name: 'luas_gedung') String luasGedung,
      @JsonKey(name: 'luas_tanah') String luasTanah,
      @JsonKey(name: 'merek_kb') String merekKb,
      @JsonKey(name: 'milik_kenama') String milikKenama,
      @JsonKey(name: 'model_kb') String modelKb,
      @JsonKey(name: 'no_pol') String noPol,
      @JsonKey(name: 'no_rangka') String noRangka,
      @JsonKey(name: 'no_registrasi') String noRegistrasi,
      @JsonKey(name: 'nomor_identitas') String nomorIdentitas,
      @JsonKey(name: 'nomor_mesin') String nomorMesin,
      @JsonKey(name: 'nomor_polisi') String nomorPolisi,
      @JsonKey(name: 'nomor_rangka') String nomorRangka,
      String npp,
      @JsonKey(name: 'tahun_buatan') String tahunBuatan,
      @JsonKey(name: 'tahun_pajak') String tahunPajak,
      @JsonKey(name: 'tanggal_registrasi') String tanggalRegistrasi,
      String tarif,
      String tenor,
      @JsonKey(name: 'tgl_akhir_pajak_baru') String tglAkhirPajakBaru,
      @JsonKey(name: 'tgl_efektif') String tglEfektif,
      @JsonKey(name: 'tgl_expired') String tglExpired,
      String transaksi});
}

/// @nodoc
class __$$DescImplCopyWithImpl<$Res>
    extends _$DescCopyWithImpl<$Res, _$DescImpl>
    implements _$$DescImplCopyWith<$Res> {
  __$$DescImplCopyWithImpl(_$DescImpl _value, $Res Function(_$DescImpl) _then)
      : super(_value, _then);

  /// Create a copy of Desc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alamat = null,
    Object? biayaAdminStnk = null,
    Object? biayaAdminTnkb = null,
    Object? biayaDendaBbn = null,
    Object? biayaDendaPkb = null,
    Object? biayaDendaSwd = null,
    Object? biayaPajakProgresif = null,
    Object? biayaParkirPokok = null,
    Object? biayaPokokBbn = null,
    Object? biayaPokokPkb = null,
    Object? biayaPokokSwd = null,
    Object? daya = null,
    Object? detail = null,
    Object? itemName = null,
    Object? jatuhTemp = null,
    Object? jht = null,
    Object? jkk = null,
    Object? jkm = null,
    Object? jpk = null,
    Object? jpn = null,
    Object? jumlahPeserta = null,
    Object? kabKota = null,
    Object? kantorCabang = null,
    Object? kecamatan = null,
    Object? kelurahan = null,
    Object? kodeDivisi = null,
    Object? kodeIuran = null,
    Object? kodeKabKota = null,
    Object? kodeProgram = null,
    Object? lembarTagihan = null,
    Object? luasGedung = null,
    Object? luasTanah = null,
    Object? merekKb = null,
    Object? milikKenama = null,
    Object? modelKb = null,
    Object? noPol = null,
    Object? noRangka = null,
    Object? noRegistrasi = null,
    Object? nomorIdentitas = null,
    Object? nomorMesin = null,
    Object? nomorPolisi = null,
    Object? nomorRangka = null,
    Object? npp = null,
    Object? tahunBuatan = null,
    Object? tahunPajak = null,
    Object? tanggalRegistrasi = null,
    Object? tarif = null,
    Object? tenor = null,
    Object? tglAkhirPajakBaru = null,
    Object? tglEfektif = null,
    Object? tglExpired = null,
    Object? transaksi = null,
  }) {
    return _then(_$DescImpl(
      alamat: null == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String,
      biayaAdminStnk: null == biayaAdminStnk
          ? _value.biayaAdminStnk
          : biayaAdminStnk // ignore: cast_nullable_to_non_nullable
              as String,
      biayaAdminTnkb: null == biayaAdminTnkb
          ? _value.biayaAdminTnkb
          : biayaAdminTnkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaBbn: null == biayaDendaBbn
          ? _value.biayaDendaBbn
          : biayaDendaBbn // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaPkb: null == biayaDendaPkb
          ? _value.biayaDendaPkb
          : biayaDendaPkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaDendaSwd: null == biayaDendaSwd
          ? _value.biayaDendaSwd
          : biayaDendaSwd // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPajakProgresif: null == biayaPajakProgresif
          ? _value.biayaPajakProgresif
          : biayaPajakProgresif // ignore: cast_nullable_to_non_nullable
              as String,
      biayaParkirPokok: null == biayaParkirPokok
          ? _value.biayaParkirPokok
          : biayaParkirPokok // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokBbn: null == biayaPokokBbn
          ? _value.biayaPokokBbn
          : biayaPokokBbn // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokPkb: null == biayaPokokPkb
          ? _value.biayaPokokPkb
          : biayaPokokPkb // ignore: cast_nullable_to_non_nullable
              as String,
      biayaPokokSwd: null == biayaPokokSwd
          ? _value.biayaPokokSwd
          : biayaPokokSwd // ignore: cast_nullable_to_non_nullable
              as String,
      daya: null == daya
          ? _value.daya
          : daya // ignore: cast_nullable_to_non_nullable
              as int,
      detail: null == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Detail>,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      jatuhTemp: null == jatuhTemp
          ? _value.jatuhTemp
          : jatuhTemp // ignore: cast_nullable_to_non_nullable
              as String,
      jht: null == jht
          ? _value.jht
          : jht // ignore: cast_nullable_to_non_nullable
              as int,
      jkk: null == jkk
          ? _value.jkk
          : jkk // ignore: cast_nullable_to_non_nullable
              as int,
      jkm: null == jkm
          ? _value.jkm
          : jkm // ignore: cast_nullable_to_non_nullable
              as int,
      jpk: null == jpk
          ? _value.jpk
          : jpk // ignore: cast_nullable_to_non_nullable
              as int,
      jpn: null == jpn
          ? _value.jpn
          : jpn // ignore: cast_nullable_to_non_nullable
              as int,
      jumlahPeserta: null == jumlahPeserta
          ? _value.jumlahPeserta
          : jumlahPeserta // ignore: cast_nullable_to_non_nullable
              as String,
      kabKota: null == kabKota
          ? _value.kabKota
          : kabKota // ignore: cast_nullable_to_non_nullable
              as String,
      kantorCabang: null == kantorCabang
          ? _value.kantorCabang
          : kantorCabang // ignore: cast_nullable_to_non_nullable
              as String,
      kecamatan: null == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String,
      kelurahan: null == kelurahan
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as String,
      kodeDivisi: null == kodeDivisi
          ? _value.kodeDivisi
          : kodeDivisi // ignore: cast_nullable_to_non_nullable
              as String,
      kodeIuran: null == kodeIuran
          ? _value.kodeIuran
          : kodeIuran // ignore: cast_nullable_to_non_nullable
              as String,
      kodeKabKota: null == kodeKabKota
          ? _value.kodeKabKota
          : kodeKabKota // ignore: cast_nullable_to_non_nullable
              as String,
      kodeProgram: null == kodeProgram
          ? _value.kodeProgram
          : kodeProgram // ignore: cast_nullable_to_non_nullable
              as String,
      lembarTagihan: null == lembarTagihan
          ? _value.lembarTagihan
          : lembarTagihan // ignore: cast_nullable_to_non_nullable
              as int,
      luasGedung: null == luasGedung
          ? _value.luasGedung
          : luasGedung // ignore: cast_nullable_to_non_nullable
              as String,
      luasTanah: null == luasTanah
          ? _value.luasTanah
          : luasTanah // ignore: cast_nullable_to_non_nullable
              as String,
      merekKb: null == merekKb
          ? _value.merekKb
          : merekKb // ignore: cast_nullable_to_non_nullable
              as String,
      milikKenama: null == milikKenama
          ? _value.milikKenama
          : milikKenama // ignore: cast_nullable_to_non_nullable
              as String,
      modelKb: null == modelKb
          ? _value.modelKb
          : modelKb // ignore: cast_nullable_to_non_nullable
              as String,
      noPol: null == noPol
          ? _value.noPol
          : noPol // ignore: cast_nullable_to_non_nullable
              as String,
      noRangka: null == noRangka
          ? _value.noRangka
          : noRangka // ignore: cast_nullable_to_non_nullable
              as String,
      noRegistrasi: null == noRegistrasi
          ? _value.noRegistrasi
          : noRegistrasi // ignore: cast_nullable_to_non_nullable
              as String,
      nomorIdentitas: null == nomorIdentitas
          ? _value.nomorIdentitas
          : nomorIdentitas // ignore: cast_nullable_to_non_nullable
              as String,
      nomorMesin: null == nomorMesin
          ? _value.nomorMesin
          : nomorMesin // ignore: cast_nullable_to_non_nullable
              as String,
      nomorPolisi: null == nomorPolisi
          ? _value.nomorPolisi
          : nomorPolisi // ignore: cast_nullable_to_non_nullable
              as String,
      nomorRangka: null == nomorRangka
          ? _value.nomorRangka
          : nomorRangka // ignore: cast_nullable_to_non_nullable
              as String,
      npp: null == npp
          ? _value.npp
          : npp // ignore: cast_nullable_to_non_nullable
              as String,
      tahunBuatan: null == tahunBuatan
          ? _value.tahunBuatan
          : tahunBuatan // ignore: cast_nullable_to_non_nullable
              as String,
      tahunPajak: null == tahunPajak
          ? _value.tahunPajak
          : tahunPajak // ignore: cast_nullable_to_non_nullable
              as String,
      tanggalRegistrasi: null == tanggalRegistrasi
          ? _value.tanggalRegistrasi
          : tanggalRegistrasi // ignore: cast_nullable_to_non_nullable
              as String,
      tarif: null == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as String,
      tenor: null == tenor
          ? _value.tenor
          : tenor // ignore: cast_nullable_to_non_nullable
              as String,
      tglAkhirPajakBaru: null == tglAkhirPajakBaru
          ? _value.tglAkhirPajakBaru
          : tglAkhirPajakBaru // ignore: cast_nullable_to_non_nullable
              as String,
      tglEfektif: null == tglEfektif
          ? _value.tglEfektif
          : tglEfektif // ignore: cast_nullable_to_non_nullable
              as String,
      tglExpired: null == tglExpired
          ? _value.tglExpired
          : tglExpired // ignore: cast_nullable_to_non_nullable
              as String,
      transaksi: null == transaksi
          ? _value.transaksi
          : transaksi // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DescImpl implements _Desc {
  const _$DescImpl(
      {required this.alamat,
      @JsonKey(name: 'biaya_admin_stnk') required this.biayaAdminStnk,
      @JsonKey(name: 'biaya_admin_tnkb') required this.biayaAdminTnkb,
      @JsonKey(name: 'biaya_denda_bbn') required this.biayaDendaBbn,
      @JsonKey(name: 'biaya_denda_pkb') required this.biayaDendaPkb,
      @JsonKey(name: 'biaya_denda_swd') required this.biayaDendaSwd,
      @JsonKey(name: 'biaya_pajak_progresif') required this.biayaPajakProgresif,
      @JsonKey(name: 'biaya_parkir_pokok') required this.biayaParkirPokok,
      @JsonKey(name: 'biaya_pokok_bbn') required this.biayaPokokBbn,
      @JsonKey(name: 'biaya_pokok_pkb') required this.biayaPokokPkb,
      @JsonKey(name: 'biaya_pokok_swd') required this.biayaPokokSwd,
      required this.daya,
      required final List<Detail> detail,
      @JsonKey(name: 'item_name') required this.itemName,
      @JsonKey(name: 'jatuh_temp') required this.jatuhTemp,
      required this.jht,
      required this.jkk,
      required this.jkm,
      required this.jpk,
      required this.jpn,
      @JsonKey(name: 'jumlah_peserta') required this.jumlahPeserta,
      @JsonKey(name: 'kab_kota') required this.kabKota,
      @JsonKey(name: 'kantor_cabang') required this.kantorCabang,
      required this.kecamatan,
      required this.kelurahan,
      @JsonKey(name: 'kode_divisi') required this.kodeDivisi,
      @JsonKey(name: 'kode_iuran') required this.kodeIuran,
      @JsonKey(name: 'kode_kab_kota') required this.kodeKabKota,
      @JsonKey(name: 'kode_program') required this.kodeProgram,
      @JsonKey(name: 'lembar_tagihan') required this.lembarTagihan,
      @JsonKey(name: 'luas_gedung') required this.luasGedung,
      @JsonKey(name: 'luas_tanah') required this.luasTanah,
      @JsonKey(name: 'merek_kb') required this.merekKb,
      @JsonKey(name: 'milik_kenama') required this.milikKenama,
      @JsonKey(name: 'model_kb') required this.modelKb,
      @JsonKey(name: 'no_pol') required this.noPol,
      @JsonKey(name: 'no_rangka') required this.noRangka,
      @JsonKey(name: 'no_registrasi') required this.noRegistrasi,
      @JsonKey(name: 'nomor_identitas') required this.nomorIdentitas,
      @JsonKey(name: 'nomor_mesin') required this.nomorMesin,
      @JsonKey(name: 'nomor_polisi') required this.nomorPolisi,
      @JsonKey(name: 'nomor_rangka') required this.nomorRangka,
      required this.npp,
      @JsonKey(name: 'tahun_buatan') required this.tahunBuatan,
      @JsonKey(name: 'tahun_pajak') required this.tahunPajak,
      @JsonKey(name: 'tanggal_registrasi') required this.tanggalRegistrasi,
      required this.tarif,
      required this.tenor,
      @JsonKey(name: 'tgl_akhir_pajak_baru') required this.tglAkhirPajakBaru,
      @JsonKey(name: 'tgl_efektif') required this.tglEfektif,
      @JsonKey(name: 'tgl_expired') required this.tglExpired,
      required this.transaksi})
      : _detail = detail;

  factory _$DescImpl.fromJson(Map<String, dynamic> json) =>
      _$$DescImplFromJson(json);

  @override
  final String alamat;
  @override
  @JsonKey(name: 'biaya_admin_stnk')
  final String biayaAdminStnk;
  @override
  @JsonKey(name: 'biaya_admin_tnkb')
  final String biayaAdminTnkb;
  @override
  @JsonKey(name: 'biaya_denda_bbn')
  final String biayaDendaBbn;
  @override
  @JsonKey(name: 'biaya_denda_pkb')
  final String biayaDendaPkb;
  @override
  @JsonKey(name: 'biaya_denda_swd')
  final String biayaDendaSwd;
  @override
  @JsonKey(name: 'biaya_pajak_progresif')
  final String biayaPajakProgresif;
  @override
  @JsonKey(name: 'biaya_parkir_pokok')
  final String biayaParkirPokok;
  @override
  @JsonKey(name: 'biaya_pokok_bbn')
  final String biayaPokokBbn;
  @override
  @JsonKey(name: 'biaya_pokok_pkb')
  final String biayaPokokPkb;
  @override
  @JsonKey(name: 'biaya_pokok_swd')
  final String biayaPokokSwd;
  @override
  final int daya;
  final List<Detail> _detail;
  @override
  List<Detail> get detail {
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detail);
  }

  @override
  @JsonKey(name: 'item_name')
  final String itemName;
  @override
  @JsonKey(name: 'jatuh_temp')
  final String jatuhTemp;
  @override
  final int jht;
  @override
  final int jkk;
  @override
  final int jkm;
  @override
  final int jpk;
  @override
  final int jpn;
  @override
  @JsonKey(name: 'jumlah_peserta')
  final String jumlahPeserta;
  @override
  @JsonKey(name: 'kab_kota')
  final String kabKota;
  @override
  @JsonKey(name: 'kantor_cabang')
  final String kantorCabang;
  @override
  final String kecamatan;
  @override
  final String kelurahan;
  @override
  @JsonKey(name: 'kode_divisi')
  final String kodeDivisi;
  @override
  @JsonKey(name: 'kode_iuran')
  final String kodeIuran;
  @override
  @JsonKey(name: 'kode_kab_kota')
  final String kodeKabKota;
  @override
  @JsonKey(name: 'kode_program')
  final String kodeProgram;
  @override
  @JsonKey(name: 'lembar_tagihan')
  final int lembarTagihan;
  @override
  @JsonKey(name: 'luas_gedung')
  final String luasGedung;
  @override
  @JsonKey(name: 'luas_tanah')
  final String luasTanah;
  @override
  @JsonKey(name: 'merek_kb')
  final String merekKb;
  @override
  @JsonKey(name: 'milik_kenama')
  final String milikKenama;
  @override
  @JsonKey(name: 'model_kb')
  final String modelKb;
  @override
  @JsonKey(name: 'no_pol')
  final String noPol;
  @override
  @JsonKey(name: 'no_rangka')
  final String noRangka;
  @override
  @JsonKey(name: 'no_registrasi')
  final String noRegistrasi;
  @override
  @JsonKey(name: 'nomor_identitas')
  final String nomorIdentitas;
  @override
  @JsonKey(name: 'nomor_mesin')
  final String nomorMesin;
  @override
  @JsonKey(name: 'nomor_polisi')
  final String nomorPolisi;
  @override
  @JsonKey(name: 'nomor_rangka')
  final String nomorRangka;
  @override
  final String npp;
  @override
  @JsonKey(name: 'tahun_buatan')
  final String tahunBuatan;
  @override
  @JsonKey(name: 'tahun_pajak')
  final String tahunPajak;
  @override
  @JsonKey(name: 'tanggal_registrasi')
  final String tanggalRegistrasi;
  @override
  final String tarif;
  @override
  final String tenor;
  @override
  @JsonKey(name: 'tgl_akhir_pajak_baru')
  final String tglAkhirPajakBaru;
  @override
  @JsonKey(name: 'tgl_efektif')
  final String tglEfektif;
  @override
  @JsonKey(name: 'tgl_expired')
  final String tglExpired;
  @override
  final String transaksi;

  @override
  String toString() {
    return 'Desc(alamat: $alamat, biayaAdminStnk: $biayaAdminStnk, biayaAdminTnkb: $biayaAdminTnkb, biayaDendaBbn: $biayaDendaBbn, biayaDendaPkb: $biayaDendaPkb, biayaDendaSwd: $biayaDendaSwd, biayaPajakProgresif: $biayaPajakProgresif, biayaParkirPokok: $biayaParkirPokok, biayaPokokBbn: $biayaPokokBbn, biayaPokokPkb: $biayaPokokPkb, biayaPokokSwd: $biayaPokokSwd, daya: $daya, detail: $detail, itemName: $itemName, jatuhTemp: $jatuhTemp, jht: $jht, jkk: $jkk, jkm: $jkm, jpk: $jpk, jpn: $jpn, jumlahPeserta: $jumlahPeserta, kabKota: $kabKota, kantorCabang: $kantorCabang, kecamatan: $kecamatan, kelurahan: $kelurahan, kodeDivisi: $kodeDivisi, kodeIuran: $kodeIuran, kodeKabKota: $kodeKabKota, kodeProgram: $kodeProgram, lembarTagihan: $lembarTagihan, luasGedung: $luasGedung, luasTanah: $luasTanah, merekKb: $merekKb, milikKenama: $milikKenama, modelKb: $modelKb, noPol: $noPol, noRangka: $noRangka, noRegistrasi: $noRegistrasi, nomorIdentitas: $nomorIdentitas, nomorMesin: $nomorMesin, nomorPolisi: $nomorPolisi, nomorRangka: $nomorRangka, npp: $npp, tahunBuatan: $tahunBuatan, tahunPajak: $tahunPajak, tanggalRegistrasi: $tanggalRegistrasi, tarif: $tarif, tenor: $tenor, tglAkhirPajakBaru: $tglAkhirPajakBaru, tglEfektif: $tglEfektif, tglExpired: $tglExpired, transaksi: $transaksi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescImpl &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.biayaAdminStnk, biayaAdminStnk) ||
                other.biayaAdminStnk == biayaAdminStnk) &&
            (identical(other.biayaAdminTnkb, biayaAdminTnkb) ||
                other.biayaAdminTnkb == biayaAdminTnkb) &&
            (identical(other.biayaDendaBbn, biayaDendaBbn) ||
                other.biayaDendaBbn == biayaDendaBbn) &&
            (identical(other.biayaDendaPkb, biayaDendaPkb) ||
                other.biayaDendaPkb == biayaDendaPkb) &&
            (identical(other.biayaDendaSwd, biayaDendaSwd) ||
                other.biayaDendaSwd == biayaDendaSwd) &&
            (identical(other.biayaPajakProgresif, biayaPajakProgresif) ||
                other.biayaPajakProgresif == biayaPajakProgresif) &&
            (identical(other.biayaParkirPokok, biayaParkirPokok) ||
                other.biayaParkirPokok == biayaParkirPokok) &&
            (identical(other.biayaPokokBbn, biayaPokokBbn) ||
                other.biayaPokokBbn == biayaPokokBbn) &&
            (identical(other.biayaPokokPkb, biayaPokokPkb) ||
                other.biayaPokokPkb == biayaPokokPkb) &&
            (identical(other.biayaPokokSwd, biayaPokokSwd) ||
                other.biayaPokokSwd == biayaPokokSwd) &&
            (identical(other.daya, daya) || other.daya == daya) &&
            const DeepCollectionEquality().equals(other._detail, _detail) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.jatuhTemp, jatuhTemp) ||
                other.jatuhTemp == jatuhTemp) &&
            (identical(other.jht, jht) || other.jht == jht) &&
            (identical(other.jkk, jkk) || other.jkk == jkk) &&
            (identical(other.jkm, jkm) || other.jkm == jkm) &&
            (identical(other.jpk, jpk) || other.jpk == jpk) &&
            (identical(other.jpn, jpn) || other.jpn == jpn) &&
            (identical(other.jumlahPeserta, jumlahPeserta) ||
                other.jumlahPeserta == jumlahPeserta) &&
            (identical(other.kabKota, kabKota) || other.kabKota == kabKota) &&
            (identical(other.kantorCabang, kantorCabang) ||
                other.kantorCabang == kantorCabang) &&
            (identical(other.kecamatan, kecamatan) ||
                other.kecamatan == kecamatan) &&
            (identical(other.kelurahan, kelurahan) ||
                other.kelurahan == kelurahan) &&
            (identical(other.kodeDivisi, kodeDivisi) ||
                other.kodeDivisi == kodeDivisi) &&
            (identical(other.kodeIuran, kodeIuran) ||
                other.kodeIuran == kodeIuran) &&
            (identical(other.kodeKabKota, kodeKabKota) ||
                other.kodeKabKota == kodeKabKota) &&
            (identical(other.kodeProgram, kodeProgram) ||
                other.kodeProgram == kodeProgram) &&
            (identical(other.lembarTagihan, lembarTagihan) ||
                other.lembarTagihan == lembarTagihan) &&
            (identical(other.luasGedung, luasGedung) ||
                other.luasGedung == luasGedung) &&
            (identical(other.luasTanah, luasTanah) ||
                other.luasTanah == luasTanah) &&
            (identical(other.merekKb, merekKb) || other.merekKb == merekKb) &&
            (identical(other.milikKenama, milikKenama) ||
                other.milikKenama == milikKenama) &&
            (identical(other.modelKb, modelKb) || other.modelKb == modelKb) &&
            (identical(other.noPol, noPol) || other.noPol == noPol) &&
            (identical(other.noRangka, noRangka) ||
                other.noRangka == noRangka) &&
            (identical(other.noRegistrasi, noRegistrasi) ||
                other.noRegistrasi == noRegistrasi) &&
            (identical(other.nomorIdentitas, nomorIdentitas) ||
                other.nomorIdentitas == nomorIdentitas) &&
            (identical(other.nomorMesin, nomorMesin) ||
                other.nomorMesin == nomorMesin) &&
            (identical(other.nomorPolisi, nomorPolisi) ||
                other.nomorPolisi == nomorPolisi) &&
            (identical(other.nomorRangka, nomorRangka) ||
                other.nomorRangka == nomorRangka) &&
            (identical(other.npp, npp) || other.npp == npp) &&
            (identical(other.tahunBuatan, tahunBuatan) ||
                other.tahunBuatan == tahunBuatan) &&
            (identical(other.tahunPajak, tahunPajak) ||
                other.tahunPajak == tahunPajak) &&
            (identical(other.tanggalRegistrasi, tanggalRegistrasi) ||
                other.tanggalRegistrasi == tanggalRegistrasi) &&
            (identical(other.tarif, tarif) || other.tarif == tarif) &&
            (identical(other.tenor, tenor) || other.tenor == tenor) &&
            (identical(other.tglAkhirPajakBaru, tglAkhirPajakBaru) ||
                other.tglAkhirPajakBaru == tglAkhirPajakBaru) &&
            (identical(other.tglEfektif, tglEfektif) ||
                other.tglEfektif == tglEfektif) &&
            (identical(other.tglExpired, tglExpired) ||
                other.tglExpired == tglExpired) &&
            (identical(other.transaksi, transaksi) ||
                other.transaksi == transaksi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        alamat,
        biayaAdminStnk,
        biayaAdminTnkb,
        biayaDendaBbn,
        biayaDendaPkb,
        biayaDendaSwd,
        biayaPajakProgresif,
        biayaParkirPokok,
        biayaPokokBbn,
        biayaPokokPkb,
        biayaPokokSwd,
        daya,
        const DeepCollectionEquality().hash(_detail),
        itemName,
        jatuhTemp,
        jht,
        jkk,
        jkm,
        jpk,
        jpn,
        jumlahPeserta,
        kabKota,
        kantorCabang,
        kecamatan,
        kelurahan,
        kodeDivisi,
        kodeIuran,
        kodeKabKota,
        kodeProgram,
        lembarTagihan,
        luasGedung,
        luasTanah,
        merekKb,
        milikKenama,
        modelKb,
        noPol,
        noRangka,
        noRegistrasi,
        nomorIdentitas,
        nomorMesin,
        nomorPolisi,
        nomorRangka,
        npp,
        tahunBuatan,
        tahunPajak,
        tanggalRegistrasi,
        tarif,
        tenor,
        tglAkhirPajakBaru,
        tglEfektif,
        tglExpired,
        transaksi
      ]);

  /// Create a copy of Desc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DescImplCopyWith<_$DescImpl> get copyWith =>
      __$$DescImplCopyWithImpl<_$DescImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DescImplToJson(
      this,
    );
  }
}

abstract class _Desc implements Desc {
  const factory _Desc(
      {required final String alamat,
      @JsonKey(name: 'biaya_admin_stnk') required final String biayaAdminStnk,
      @JsonKey(name: 'biaya_admin_tnkb') required final String biayaAdminTnkb,
      @JsonKey(name: 'biaya_denda_bbn') required final String biayaDendaBbn,
      @JsonKey(name: 'biaya_denda_pkb') required final String biayaDendaPkb,
      @JsonKey(name: 'biaya_denda_swd') required final String biayaDendaSwd,
      @JsonKey(name: 'biaya_pajak_progresif')
      required final String biayaPajakProgresif,
      @JsonKey(name: 'biaya_parkir_pokok')
      required final String biayaParkirPokok,
      @JsonKey(name: 'biaya_pokok_bbn') required final String biayaPokokBbn,
      @JsonKey(name: 'biaya_pokok_pkb') required final String biayaPokokPkb,
      @JsonKey(name: 'biaya_pokok_swd') required final String biayaPokokSwd,
      required final int daya,
      required final List<Detail> detail,
      @JsonKey(name: 'item_name') required final String itemName,
      @JsonKey(name: 'jatuh_temp') required final String jatuhTemp,
      required final int jht,
      required final int jkk,
      required final int jkm,
      required final int jpk,
      required final int jpn,
      @JsonKey(name: 'jumlah_peserta') required final String jumlahPeserta,
      @JsonKey(name: 'kab_kota') required final String kabKota,
      @JsonKey(name: 'kantor_cabang') required final String kantorCabang,
      required final String kecamatan,
      required final String kelurahan,
      @JsonKey(name: 'kode_divisi') required final String kodeDivisi,
      @JsonKey(name: 'kode_iuran') required final String kodeIuran,
      @JsonKey(name: 'kode_kab_kota') required final String kodeKabKota,
      @JsonKey(name: 'kode_program') required final String kodeProgram,
      @JsonKey(name: 'lembar_tagihan') required final int lembarTagihan,
      @JsonKey(name: 'luas_gedung') required final String luasGedung,
      @JsonKey(name: 'luas_tanah') required final String luasTanah,
      @JsonKey(name: 'merek_kb') required final String merekKb,
      @JsonKey(name: 'milik_kenama') required final String milikKenama,
      @JsonKey(name: 'model_kb') required final String modelKb,
      @JsonKey(name: 'no_pol') required final String noPol,
      @JsonKey(name: 'no_rangka') required final String noRangka,
      @JsonKey(name: 'no_registrasi') required final String noRegistrasi,
      @JsonKey(name: 'nomor_identitas') required final String nomorIdentitas,
      @JsonKey(name: 'nomor_mesin') required final String nomorMesin,
      @JsonKey(name: 'nomor_polisi') required final String nomorPolisi,
      @JsonKey(name: 'nomor_rangka') required final String nomorRangka,
      required final String npp,
      @JsonKey(name: 'tahun_buatan') required final String tahunBuatan,
      @JsonKey(name: 'tahun_pajak') required final String tahunPajak,
      @JsonKey(name: 'tanggal_registrasi')
      required final String tanggalRegistrasi,
      required final String tarif,
      required final String tenor,
      @JsonKey(name: 'tgl_akhir_pajak_baru')
      required final String tglAkhirPajakBaru,
      @JsonKey(name: 'tgl_efektif') required final String tglEfektif,
      @JsonKey(name: 'tgl_expired') required final String tglExpired,
      required final String transaksi}) = _$DescImpl;

  factory _Desc.fromJson(Map<String, dynamic> json) = _$DescImpl.fromJson;

  @override
  String get alamat;
  @override
  @JsonKey(name: 'biaya_admin_stnk')
  String get biayaAdminStnk;
  @override
  @JsonKey(name: 'biaya_admin_tnkb')
  String get biayaAdminTnkb;
  @override
  @JsonKey(name: 'biaya_denda_bbn')
  String get biayaDendaBbn;
  @override
  @JsonKey(name: 'biaya_denda_pkb')
  String get biayaDendaPkb;
  @override
  @JsonKey(name: 'biaya_denda_swd')
  String get biayaDendaSwd;
  @override
  @JsonKey(name: 'biaya_pajak_progresif')
  String get biayaPajakProgresif;
  @override
  @JsonKey(name: 'biaya_parkir_pokok')
  String get biayaParkirPokok;
  @override
  @JsonKey(name: 'biaya_pokok_bbn')
  String get biayaPokokBbn;
  @override
  @JsonKey(name: 'biaya_pokok_pkb')
  String get biayaPokokPkb;
  @override
  @JsonKey(name: 'biaya_pokok_swd')
  String get biayaPokokSwd;
  @override
  int get daya;
  @override
  List<Detail> get detail;
  @override
  @JsonKey(name: 'item_name')
  String get itemName;
  @override
  @JsonKey(name: 'jatuh_temp')
  String get jatuhTemp;
  @override
  int get jht;
  @override
  int get jkk;
  @override
  int get jkm;
  @override
  int get jpk;
  @override
  int get jpn;
  @override
  @JsonKey(name: 'jumlah_peserta')
  String get jumlahPeserta;
  @override
  @JsonKey(name: 'kab_kota')
  String get kabKota;
  @override
  @JsonKey(name: 'kantor_cabang')
  String get kantorCabang;
  @override
  String get kecamatan;
  @override
  String get kelurahan;
  @override
  @JsonKey(name: 'kode_divisi')
  String get kodeDivisi;
  @override
  @JsonKey(name: 'kode_iuran')
  String get kodeIuran;
  @override
  @JsonKey(name: 'kode_kab_kota')
  String get kodeKabKota;
  @override
  @JsonKey(name: 'kode_program')
  String get kodeProgram;
  @override
  @JsonKey(name: 'lembar_tagihan')
  int get lembarTagihan;
  @override
  @JsonKey(name: 'luas_gedung')
  String get luasGedung;
  @override
  @JsonKey(name: 'luas_tanah')
  String get luasTanah;
  @override
  @JsonKey(name: 'merek_kb')
  String get merekKb;
  @override
  @JsonKey(name: 'milik_kenama')
  String get milikKenama;
  @override
  @JsonKey(name: 'model_kb')
  String get modelKb;
  @override
  @JsonKey(name: 'no_pol')
  String get noPol;
  @override
  @JsonKey(name: 'no_rangka')
  String get noRangka;
  @override
  @JsonKey(name: 'no_registrasi')
  String get noRegistrasi;
  @override
  @JsonKey(name: 'nomor_identitas')
  String get nomorIdentitas;
  @override
  @JsonKey(name: 'nomor_mesin')
  String get nomorMesin;
  @override
  @JsonKey(name: 'nomor_polisi')
  String get nomorPolisi;
  @override
  @JsonKey(name: 'nomor_rangka')
  String get nomorRangka;
  @override
  String get npp;
  @override
  @JsonKey(name: 'tahun_buatan')
  String get tahunBuatan;
  @override
  @JsonKey(name: 'tahun_pajak')
  String get tahunPajak;
  @override
  @JsonKey(name: 'tanggal_registrasi')
  String get tanggalRegistrasi;
  @override
  String get tarif;
  @override
  String get tenor;
  @override
  @JsonKey(name: 'tgl_akhir_pajak_baru')
  String get tglAkhirPajakBaru;
  @override
  @JsonKey(name: 'tgl_efektif')
  String get tglEfektif;
  @override
  @JsonKey(name: 'tgl_expired')
  String get tglExpired;
  @override
  String get transaksi;

  /// Create a copy of Desc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DescImplCopyWith<_$DescImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
mixin _$Detail {
  String get admin => throw _privateConstructorUsedError;
  @JsonKey(name: 'biaya_lain')
  String get biayaLain => throw _privateConstructorUsedError;
  String get denda => throw _privateConstructorUsedError;
  @JsonKey(name: 'meter_akhir')
  String get meterAkhir => throw _privateConstructorUsedError;
  @JsonKey(name: 'meter_awal')
  String get meterAwal => throw _privateConstructorUsedError;
  @JsonKey(name: 'nilai_tagihan')
  String get nilaiTagihan => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_ref')
  String get noRef => throw _privateConstructorUsedError;
  String get periode => throw _privateConstructorUsedError;

  /// Serializes this Detail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res, Detail>;
  @useResult
  $Res call(
      {String admin,
      @JsonKey(name: 'biaya_lain') String biayaLain,
      String denda,
      @JsonKey(name: 'meter_akhir') String meterAkhir,
      @JsonKey(name: 'meter_awal') String meterAwal,
      @JsonKey(name: 'nilai_tagihan') String nilaiTagihan,
      @JsonKey(name: 'no_ref') String noRef,
      String periode});
}

/// @nodoc
class _$DetailCopyWithImpl<$Res, $Val extends Detail>
    implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? biayaLain = null,
    Object? denda = null,
    Object? meterAkhir = null,
    Object? meterAwal = null,
    Object? nilaiTagihan = null,
    Object? noRef = null,
    Object? periode = null,
  }) {
    return _then(_value.copyWith(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as String,
      biayaLain: null == biayaLain
          ? _value.biayaLain
          : biayaLain // ignore: cast_nullable_to_non_nullable
              as String,
      denda: null == denda
          ? _value.denda
          : denda // ignore: cast_nullable_to_non_nullable
              as String,
      meterAkhir: null == meterAkhir
          ? _value.meterAkhir
          : meterAkhir // ignore: cast_nullable_to_non_nullable
              as String,
      meterAwal: null == meterAwal
          ? _value.meterAwal
          : meterAwal // ignore: cast_nullable_to_non_nullable
              as String,
      nilaiTagihan: null == nilaiTagihan
          ? _value.nilaiTagihan
          : nilaiTagihan // ignore: cast_nullable_to_non_nullable
              as String,
      noRef: null == noRef
          ? _value.noRef
          : noRef // ignore: cast_nullable_to_non_nullable
              as String,
      periode: null == periode
          ? _value.periode
          : periode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailImplCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$$DetailImplCopyWith(
          _$DetailImpl value, $Res Function(_$DetailImpl) then) =
      __$$DetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String admin,
      @JsonKey(name: 'biaya_lain') String biayaLain,
      String denda,
      @JsonKey(name: 'meter_akhir') String meterAkhir,
      @JsonKey(name: 'meter_awal') String meterAwal,
      @JsonKey(name: 'nilai_tagihan') String nilaiTagihan,
      @JsonKey(name: 'no_ref') String noRef,
      String periode});
}

/// @nodoc
class __$$DetailImplCopyWithImpl<$Res>
    extends _$DetailCopyWithImpl<$Res, _$DetailImpl>
    implements _$$DetailImplCopyWith<$Res> {
  __$$DetailImplCopyWithImpl(
      _$DetailImpl _value, $Res Function(_$DetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admin = null,
    Object? biayaLain = null,
    Object? denda = null,
    Object? meterAkhir = null,
    Object? meterAwal = null,
    Object? nilaiTagihan = null,
    Object? noRef = null,
    Object? periode = null,
  }) {
    return _then(_$DetailImpl(
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as String,
      biayaLain: null == biayaLain
          ? _value.biayaLain
          : biayaLain // ignore: cast_nullable_to_non_nullable
              as String,
      denda: null == denda
          ? _value.denda
          : denda // ignore: cast_nullable_to_non_nullable
              as String,
      meterAkhir: null == meterAkhir
          ? _value.meterAkhir
          : meterAkhir // ignore: cast_nullable_to_non_nullable
              as String,
      meterAwal: null == meterAwal
          ? _value.meterAwal
          : meterAwal // ignore: cast_nullable_to_non_nullable
              as String,
      nilaiTagihan: null == nilaiTagihan
          ? _value.nilaiTagihan
          : nilaiTagihan // ignore: cast_nullable_to_non_nullable
              as String,
      noRef: null == noRef
          ? _value.noRef
          : noRef // ignore: cast_nullable_to_non_nullable
              as String,
      periode: null == periode
          ? _value.periode
          : periode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailImpl implements _Detail {
  const _$DetailImpl(
      {required this.admin,
      @JsonKey(name: 'biaya_lain') required this.biayaLain,
      required this.denda,
      @JsonKey(name: 'meter_akhir') required this.meterAkhir,
      @JsonKey(name: 'meter_awal') required this.meterAwal,
      @JsonKey(name: 'nilai_tagihan') required this.nilaiTagihan,
      @JsonKey(name: 'no_ref') required this.noRef,
      required this.periode});

  factory _$DetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailImplFromJson(json);

  @override
  final String admin;
  @override
  @JsonKey(name: 'biaya_lain')
  final String biayaLain;
  @override
  final String denda;
  @override
  @JsonKey(name: 'meter_akhir')
  final String meterAkhir;
  @override
  @JsonKey(name: 'meter_awal')
  final String meterAwal;
  @override
  @JsonKey(name: 'nilai_tagihan')
  final String nilaiTagihan;
  @override
  @JsonKey(name: 'no_ref')
  final String noRef;
  @override
  final String periode;

  @override
  String toString() {
    return 'Detail(admin: $admin, biayaLain: $biayaLain, denda: $denda, meterAkhir: $meterAkhir, meterAwal: $meterAwal, nilaiTagihan: $nilaiTagihan, noRef: $noRef, periode: $periode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailImpl &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.biayaLain, biayaLain) ||
                other.biayaLain == biayaLain) &&
            (identical(other.denda, denda) || other.denda == denda) &&
            (identical(other.meterAkhir, meterAkhir) ||
                other.meterAkhir == meterAkhir) &&
            (identical(other.meterAwal, meterAwal) ||
                other.meterAwal == meterAwal) &&
            (identical(other.nilaiTagihan, nilaiTagihan) ||
                other.nilaiTagihan == nilaiTagihan) &&
            (identical(other.noRef, noRef) || other.noRef == noRef) &&
            (identical(other.periode, periode) || other.periode == periode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, admin, biayaLain, denda,
      meterAkhir, meterAwal, nilaiTagihan, noRef, periode);

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      __$$DetailImplCopyWithImpl<_$DetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailImplToJson(
      this,
    );
  }
}

abstract class _Detail implements Detail {
  const factory _Detail(
      {required final String admin,
      @JsonKey(name: 'biaya_lain') required final String biayaLain,
      required final String denda,
      @JsonKey(name: 'meter_akhir') required final String meterAkhir,
      @JsonKey(name: 'meter_awal') required final String meterAwal,
      @JsonKey(name: 'nilai_tagihan') required final String nilaiTagihan,
      @JsonKey(name: 'no_ref') required final String noRef,
      required final String periode}) = _$DetailImpl;

  factory _Detail.fromJson(Map<String, dynamic> json) = _$DetailImpl.fromJson;

  @override
  String get admin;
  @override
  @JsonKey(name: 'biaya_lain')
  String get biayaLain;
  @override
  String get denda;
  @override
  @JsonKey(name: 'meter_akhir')
  String get meterAkhir;
  @override
  @JsonKey(name: 'meter_awal')
  String get meterAwal;
  @override
  @JsonKey(name: 'nilai_tagihan')
  String get nilaiTagihan;
  @override
  @JsonKey(name: 'no_ref')
  String get noRef;
  @override
  String get periode;

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Formatted _$FormattedFromJson(Map<String, dynamic> json) {
  return _Formatted.fromJson(json);
}

/// @nodoc
mixin _$Formatted {
  String get price => throw _privateConstructorUsedError;

  /// Serializes this Formatted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Formatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormattedCopyWith<Formatted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormattedCopyWith<$Res> {
  factory $FormattedCopyWith(Formatted value, $Res Function(Formatted) then) =
      _$FormattedCopyWithImpl<$Res, Formatted>;
  @useResult
  $Res call({String price});
}

/// @nodoc
class _$FormattedCopyWithImpl<$Res, $Val extends Formatted>
    implements $FormattedCopyWith<$Res> {
  _$FormattedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Formatted
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
abstract class _$$FormattedImplCopyWith<$Res>
    implements $FormattedCopyWith<$Res> {
  factory _$$FormattedImplCopyWith(
          _$FormattedImpl value, $Res Function(_$FormattedImpl) then) =
      __$$FormattedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String price});
}

/// @nodoc
class __$$FormattedImplCopyWithImpl<$Res>
    extends _$FormattedCopyWithImpl<$Res, _$FormattedImpl>
    implements _$$FormattedImplCopyWith<$Res> {
  __$$FormattedImplCopyWithImpl(
      _$FormattedImpl _value, $Res Function(_$FormattedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Formatted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$FormattedImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormattedImpl implements _Formatted {
  const _$FormattedImpl({required this.price});

  factory _$FormattedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormattedImplFromJson(json);

  @override
  final String price;

  @override
  String toString() {
    return 'Formatted(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormattedImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price);

  /// Create a copy of Formatted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormattedImplCopyWith<_$FormattedImpl> get copyWith =>
      __$$FormattedImplCopyWithImpl<_$FormattedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormattedImplToJson(
      this,
    );
  }
}

abstract class _Formatted implements Formatted {
  const factory _Formatted({required final String price}) = _$FormattedImpl;

  factory _Formatted.fromJson(Map<String, dynamic> json) =
      _$FormattedImpl.fromJson;

  @override
  String get price;

  /// Create a copy of Formatted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormattedImplCopyWith<_$FormattedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
