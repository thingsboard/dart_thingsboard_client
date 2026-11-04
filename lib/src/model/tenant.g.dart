// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Tenant extends Tenant {
  @override
  final TenantId? id;
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
  final String? region;
  @override
  final TenantProfileId? tenantProfileId;
  @override
  final int? version;
  @override
  final String? name;

  factory _$Tenant([void Function(TenantBuilder)? updates]) =>
      (TenantBuilder()..update(updates))._build();

  _$Tenant._({
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
    this.region,
    this.tenantProfileId,
    this.version,
    this.name,
  }) : super._();
  @override
  Tenant rebuild(void Function(TenantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantBuilder toBuilder() => TenantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tenant &&
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
        region == other.region &&
        tenantProfileId == other.tenantProfileId &&
        version == other.version &&
        name == other.name;
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
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, tenantProfileId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Tenant')
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
          ..add('region', region)
          ..add('tenantProfileId', tenantProfileId)
          ..add('version', version)
          ..add('name', name))
        .toString();
  }
}

class TenantBuilder implements Builder<Tenant, TenantBuilder> {
  _$Tenant? _$v;

  TenantIdBuilder? _id;
  TenantIdBuilder get id => _$this._id ??= TenantIdBuilder();
  set id(TenantIdBuilder? id) => _$this._id = id;

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

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  TenantProfileIdBuilder? _tenantProfileId;
  TenantProfileIdBuilder get tenantProfileId =>
      _$this._tenantProfileId ??= TenantProfileIdBuilder();
  set tenantProfileId(TenantProfileIdBuilder? tenantProfileId) =>
      _$this._tenantProfileId = tenantProfileId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TenantBuilder() {
    Tenant._defaults(this);
  }

  TenantBuilder get _$this {
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
      _region = $v.region;
      _tenantProfileId = $v.tenantProfileId?.toBuilder();
      _version = $v.version;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tenant other) {
    _$v = other as _$Tenant;
  }

  @override
  void update(void Function(TenantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tenant build() => _build();

  _$Tenant _build() {
    _$Tenant _$result;
    try {
      _$result =
          _$v ??
          _$Tenant._(
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
              r'Tenant',
              'title',
            ),
            region: region,
            tenantProfileId: _tenantProfileId?.build(),
            version: version,
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantProfileId';
        _tenantProfileId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Tenant',
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
