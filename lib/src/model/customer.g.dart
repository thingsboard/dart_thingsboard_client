// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Customer extends Customer {
  @override
  final CustomerId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final String? country;
  @override
  final String? state;
  @override
  final String? city;
  @override
  final String? address;
  @override
  final String? address2;
  @override
  final String? zip;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String title;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? parentCustomerId;
  @override
  final int? version;
  @override
  final CustomMenuId? customMenuId;
  @override
  final CustomerId? customerId;
  @override
  final String? name;
  @override
  final EntityId? ownerId;

  factory _$Customer([void Function(CustomerBuilder)? updates]) =>
      (CustomerBuilder()..update(updates))._build();

  _$Customer._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.country,
    this.state,
    this.city,
    this.address,
    this.address2,
    this.zip,
    this.phone,
    this.email,
    required this.title,
    this.tenantId,
    this.parentCustomerId,
    this.version,
    this.customMenuId,
    this.customerId,
    this.name,
    this.ownerId,
  }) : super._();
  @override
  Customer rebuild(void Function(CustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerBuilder toBuilder() => CustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Customer &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        country == other.country &&
        state == other.state &&
        city == other.city &&
        address == other.address &&
        address2 == other.address2 &&
        zip == other.zip &&
        phone == other.phone &&
        email == other.email &&
        title == other.title &&
        tenantId == other.tenantId &&
        parentCustomerId == other.parentCustomerId &&
        version == other.version &&
        customMenuId == other.customMenuId &&
        customerId == other.customerId &&
        name == other.name &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, address2.hashCode);
    _$hash = $jc(_$hash, zip.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, parentCustomerId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, customMenuId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Customer')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('country', country)
          ..add('state', state)
          ..add('city', city)
          ..add('address', address)
          ..add('address2', address2)
          ..add('zip', zip)
          ..add('phone', phone)
          ..add('email', email)
          ..add('title', title)
          ..add('tenantId', tenantId)
          ..add('parentCustomerId', parentCustomerId)
          ..add('version', version)
          ..add('customMenuId', customMenuId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class CustomerBuilder implements Builder<Customer, CustomerBuilder> {
  _$Customer? _$v;

  CustomerIdBuilder? _id;
  CustomerIdBuilder get id => _$this._id ??= CustomerIdBuilder();
  set id(CustomerIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _address2;
  String? get address2 => _$this._address2;
  set address2(String? address2) => _$this._address2 = address2;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _parentCustomerId;
  CustomerIdBuilder get parentCustomerId =>
      _$this._parentCustomerId ??= CustomerIdBuilder();
  set parentCustomerId(CustomerIdBuilder? parentCustomerId) =>
      _$this._parentCustomerId = parentCustomerId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  CustomMenuIdBuilder? _customMenuId;
  CustomMenuIdBuilder get customMenuId =>
      _$this._customMenuId ??= CustomMenuIdBuilder();
  set customMenuId(CustomMenuIdBuilder? customMenuId) =>
      _$this._customMenuId = customMenuId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  CustomerBuilder() {
    Customer._defaults(this);
  }

  CustomerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _country = $v.country;
      _state = $v.state;
      _city = $v.city;
      _address = $v.address;
      _address2 = $v.address2;
      _zip = $v.zip;
      _phone = $v.phone;
      _email = $v.email;
      _title = $v.title;
      _tenantId = $v.tenantId?.toBuilder();
      _parentCustomerId = $v.parentCustomerId?.toBuilder();
      _version = $v.version;
      _customMenuId = $v.customMenuId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _name = $v.name;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Customer other) {
    _$v = other as _$Customer;
  }

  @override
  void update(void Function(CustomerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Customer build() => _build();

  _$Customer _build() {
    _$Customer _$result;
    try {
      _$result =
          _$v ??
          _$Customer._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            country: country,
            state: state,
            city: city,
            address: address,
            address2: address2,
            zip: zip,
            phone: phone,
            email: email,
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'Customer',
              'title',
            ),
            tenantId: _tenantId?.build(),
            parentCustomerId: _parentCustomerId?.build(),
            version: version,
            customMenuId: _customMenuId?.build(),
            customerId: _customerId?.build(),
            name: name,
            ownerId: ownerId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'parentCustomerId';
        _parentCustomerId?.build();

        _$failedField = 'customMenuId';
        _customMenuId?.build();
        _$failedField = 'customerId';
        _customerId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Customer',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
