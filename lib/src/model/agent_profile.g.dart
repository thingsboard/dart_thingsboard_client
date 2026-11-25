// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentProfile extends AgentProfile {
  @override
  final AgentProfileId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? provisionKey;
  @override
  final String? provisionSecret;
  @override
  final AgentProvisionType? provisionType;
  @override
  final int? version;
  @override
  final bool? default_;

  factory _$AgentProfile([void Function(AgentProfileBuilder)? updates]) =>
      (AgentProfileBuilder()..update(updates))._build();

  _$AgentProfile._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.name,
    this.description,
    this.provisionKey,
    this.provisionSecret,
    this.provisionType,
    this.version,
    this.default_,
  }) : super._();
  @override
  AgentProfile rebuild(void Function(AgentProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentProfileBuilder toBuilder() => AgentProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentProfile &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        description == other.description &&
        provisionKey == other.provisionKey &&
        provisionSecret == other.provisionSecret &&
        provisionType == other.provisionType &&
        version == other.version &&
        default_ == other.default_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, provisionKey.hashCode);
    _$hash = $jc(_$hash, provisionSecret.hashCode);
    _$hash = $jc(_$hash, provisionType.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentProfile')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('description', description)
          ..add('provisionKey', provisionKey)
          ..add('provisionSecret', provisionSecret)
          ..add('provisionType', provisionType)
          ..add('version', version)
          ..add('default_', default_))
        .toString();
  }
}

class AgentProfileBuilder
    implements Builder<AgentProfile, AgentProfileBuilder> {
  _$AgentProfile? _$v;

  AgentProfileIdBuilder? _id;
  AgentProfileIdBuilder get id => _$this._id ??= AgentProfileIdBuilder();
  set id(AgentProfileIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _provisionKey;
  String? get provisionKey => _$this._provisionKey;
  set provisionKey(String? provisionKey) => _$this._provisionKey = provisionKey;

  String? _provisionSecret;
  String? get provisionSecret => _$this._provisionSecret;
  set provisionSecret(String? provisionSecret) =>
      _$this._provisionSecret = provisionSecret;

  AgentProvisionType? _provisionType;
  AgentProvisionType? get provisionType => _$this._provisionType;
  set provisionType(AgentProvisionType? provisionType) =>
      _$this._provisionType = provisionType;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  bool? _default_;
  bool? get default_ => _$this._default_;
  set default_(bool? default_) => _$this._default_ = default_;

  AgentProfileBuilder() {
    AgentProfile._defaults(this);
  }

  AgentProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _description = $v.description;
      _provisionKey = $v.provisionKey;
      _provisionSecret = $v.provisionSecret;
      _provisionType = $v.provisionType;
      _version = $v.version;
      _default_ = $v.default_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentProfile other) {
    _$v = other as _$AgentProfile;
  }

  @override
  void update(void Function(AgentProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentProfile build() => _build();

  _$AgentProfile _build() {
    _$AgentProfile _$result;
    try {
      _$result =
          _$v ??
          _$AgentProfile._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'AgentProfile',
              'name',
            ),
            description: description,
            provisionKey: provisionKey,
            provisionSecret: provisionSecret,
            provisionType: provisionType,
            version: version,
            default_: default_,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentProfile',
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
