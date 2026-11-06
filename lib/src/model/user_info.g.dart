// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserInfo extends UserInfo {
  @override
  final UserId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String email;
  @override
  final Authority authority;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phone;
  @override
  final CustomMenuId? customMenuId;
  @override
  final int? version;
  @override
  final String? ownerName;
  @override
  final BuiltList<EntityInfo>? groups;
  @override
  final String? name;
  @override
  final EntityId? ownerId;

  factory _$UserInfo([void Function(UserInfoBuilder)? updates]) =>
      (UserInfoBuilder()..update(updates))._build();

  _$UserInfo._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.customerId,
    required this.email,
    required this.authority,
    this.firstName,
    this.lastName,
    this.phone,
    this.customMenuId,
    this.version,
    this.ownerName,
    this.groups,
    this.name,
    this.ownerId,
  }) : super._();
  @override
  UserInfo rebuild(void Function(UserInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoBuilder toBuilder() => UserInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        email == other.email &&
        authority == other.authority &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phone == other.phone &&
        customMenuId == other.customMenuId &&
        version == other.version &&
        ownerName == other.ownerName &&
        groups == other.groups &&
        name == other.name &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, authority.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, customMenuId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, ownerName.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('email', email)
          ..add('authority', authority)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('phone', phone)
          ..add('customMenuId', customMenuId)
          ..add('version', version)
          ..add('ownerName', ownerName)
          ..add('groups', groups)
          ..add('name', name)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class UserInfoBuilder implements Builder<UserInfo, UserInfoBuilder> {
  _$UserInfo? _$v;

  UserIdBuilder? _id;
  UserIdBuilder get id => _$this._id ??= UserIdBuilder();
  set id(UserIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  Authority? _authority;
  Authority? get authority => _$this._authority;
  set authority(Authority? authority) => _$this._authority = authority;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  CustomMenuIdBuilder? _customMenuId;
  CustomMenuIdBuilder get customMenuId =>
      _$this._customMenuId ??= CustomMenuIdBuilder();
  set customMenuId(CustomMenuIdBuilder? customMenuId) =>
      _$this._customMenuId = customMenuId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _ownerName;
  String? get ownerName => _$this._ownerName;
  set ownerName(String? ownerName) => _$this._ownerName = ownerName;

  ListBuilder<EntityInfo>? _groups;
  ListBuilder<EntityInfo> get groups =>
      _$this._groups ??= ListBuilder<EntityInfo>();
  set groups(ListBuilder<EntityInfo>? groups) => _$this._groups = groups;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  UserInfoBuilder() {
    UserInfo._defaults(this);
  }

  UserInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _email = $v.email;
      _authority = $v.authority;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _phone = $v.phone;
      _customMenuId = $v.customMenuId?.toBuilder();
      _version = $v.version;
      _ownerName = $v.ownerName;
      _groups = $v.groups?.toBuilder();
      _name = $v.name;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfo other) {
    _$v = other as _$UserInfo;
  }

  @override
  void update(void Function(UserInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfo build() => _build();

  _$UserInfo _build() {
    _$UserInfo _$result;
    try {
      _$result =
          _$v ??
          _$UserInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            email: BuiltValueNullFieldError.checkNotNull(
              email,
              r'UserInfo',
              'email',
            ),
            authority: BuiltValueNullFieldError.checkNotNull(
              authority,
              r'UserInfo',
              'authority',
            ),
            firstName: firstName,
            lastName: lastName,
            phone: phone,
            customMenuId: _customMenuId?.build(),
            version: version,
            ownerName: ownerName,
            groups: _groups?.build(),
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
        _$failedField = 'customerId';
        _customerId?.build();

        _$failedField = 'customMenuId';
        _customMenuId?.build();

        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserInfo',
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
