// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_based_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContactBasedObject extends ContactBasedObject {
  @override
  final JsonObject? id;
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
  final String? name;

  factory _$ContactBasedObject([
    void Function(ContactBasedObjectBuilder)? updates,
  ]) => (ContactBasedObjectBuilder()..update(updates))._build();

  _$ContactBasedObject._({
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
    this.name,
  }) : super._();
  @override
  ContactBasedObject rebuild(
    void Function(ContactBasedObjectBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ContactBasedObjectBuilder toBuilder() =>
      ContactBasedObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactBasedObject &&
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
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContactBasedObject')
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
          ..add('name', name))
        .toString();
  }
}

class ContactBasedObjectBuilder
    implements Builder<ContactBasedObject, ContactBasedObjectBuilder> {
  _$ContactBasedObject? _$v;

  JsonObject? _id;
  JsonObject? get id => _$this._id;
  set id(JsonObject? id) => _$this._id = id;

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

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ContactBasedObjectBuilder() {
    ContactBasedObject._defaults(this);
  }

  ContactBasedObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactBasedObject other) {
    _$v = other as _$ContactBasedObject;
  }

  @override
  void update(void Function(ContactBasedObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContactBasedObject build() => _build();

  _$ContactBasedObject _build() {
    final _$result =
        _$v ??
        _$ContactBasedObject._(
          id: id,
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
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
