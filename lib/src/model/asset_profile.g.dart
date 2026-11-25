// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssetProfile extends AssetProfile {
  @override
  final AssetProfileId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final RuleChainId? defaultRuleChainId;
  @override
  final DashboardId? defaultDashboardId;
  @override
  final String? defaultQueueName;
  @override
  final RuleChainId? defaultEdgeRuleChainId;
  @override
  final int? version;
  @override
  final bool? default_;

  factory _$AssetProfile([void Function(AssetProfileBuilder)? updates]) =>
      (AssetProfileBuilder()..update(updates))._build();

  _$AssetProfile._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.name,
    this.description,
    this.image,
    this.defaultRuleChainId,
    this.defaultDashboardId,
    this.defaultQueueName,
    this.defaultEdgeRuleChainId,
    this.version,
    this.default_,
  }) : super._();
  @override
  AssetProfile rebuild(void Function(AssetProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetProfileBuilder toBuilder() => AssetProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetProfile &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        defaultRuleChainId == other.defaultRuleChainId &&
        defaultDashboardId == other.defaultDashboardId &&
        defaultQueueName == other.defaultQueueName &&
        defaultEdgeRuleChainId == other.defaultEdgeRuleChainId &&
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
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, defaultRuleChainId.hashCode);
    _$hash = $jc(_$hash, defaultDashboardId.hashCode);
    _$hash = $jc(_$hash, defaultQueueName.hashCode);
    _$hash = $jc(_$hash, defaultEdgeRuleChainId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetProfile')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('defaultRuleChainId', defaultRuleChainId)
          ..add('defaultDashboardId', defaultDashboardId)
          ..add('defaultQueueName', defaultQueueName)
          ..add('defaultEdgeRuleChainId', defaultEdgeRuleChainId)
          ..add('version', version)
          ..add('default_', default_))
        .toString();
  }
}

class AssetProfileBuilder
    implements Builder<AssetProfile, AssetProfileBuilder> {
  _$AssetProfile? _$v;

  AssetProfileIdBuilder? _id;
  AssetProfileIdBuilder get id => _$this._id ??= AssetProfileIdBuilder();
  set id(AssetProfileIdBuilder? id) => _$this._id = id;

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

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  RuleChainIdBuilder? _defaultRuleChainId;
  RuleChainIdBuilder get defaultRuleChainId =>
      _$this._defaultRuleChainId ??= RuleChainIdBuilder();
  set defaultRuleChainId(RuleChainIdBuilder? defaultRuleChainId) =>
      _$this._defaultRuleChainId = defaultRuleChainId;

  DashboardIdBuilder? _defaultDashboardId;
  DashboardIdBuilder get defaultDashboardId =>
      _$this._defaultDashboardId ??= DashboardIdBuilder();
  set defaultDashboardId(DashboardIdBuilder? defaultDashboardId) =>
      _$this._defaultDashboardId = defaultDashboardId;

  String? _defaultQueueName;
  String? get defaultQueueName => _$this._defaultQueueName;
  set defaultQueueName(String? defaultQueueName) =>
      _$this._defaultQueueName = defaultQueueName;

  RuleChainIdBuilder? _defaultEdgeRuleChainId;
  RuleChainIdBuilder get defaultEdgeRuleChainId =>
      _$this._defaultEdgeRuleChainId ??= RuleChainIdBuilder();
  set defaultEdgeRuleChainId(RuleChainIdBuilder? defaultEdgeRuleChainId) =>
      _$this._defaultEdgeRuleChainId = defaultEdgeRuleChainId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  bool? _default_;
  bool? get default_ => _$this._default_;
  set default_(bool? default_) => _$this._default_ = default_;

  AssetProfileBuilder() {
    AssetProfile._defaults(this);
  }

  AssetProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _description = $v.description;
      _image = $v.image;
      _defaultRuleChainId = $v.defaultRuleChainId?.toBuilder();
      _defaultDashboardId = $v.defaultDashboardId?.toBuilder();
      _defaultQueueName = $v.defaultQueueName;
      _defaultEdgeRuleChainId = $v.defaultEdgeRuleChainId?.toBuilder();
      _version = $v.version;
      _default_ = $v.default_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetProfile other) {
    _$v = other as _$AssetProfile;
  }

  @override
  void update(void Function(AssetProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetProfile build() => _build();

  _$AssetProfile _build() {
    _$AssetProfile _$result;
    try {
      _$result =
          _$v ??
          _$AssetProfile._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: name,
            description: description,
            image: image,
            defaultRuleChainId: _defaultRuleChainId?.build(),
            defaultDashboardId: _defaultDashboardId?.build(),
            defaultQueueName: defaultQueueName,
            defaultEdgeRuleChainId: _defaultEdgeRuleChainId?.build(),
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

        _$failedField = 'defaultRuleChainId';
        _defaultRuleChainId?.build();
        _$failedField = 'defaultDashboardId';
        _defaultDashboardId?.build();

        _$failedField = 'defaultEdgeRuleChainId';
        _defaultEdgeRuleChainId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AssetProfile',
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
