// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_type_version_load_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityTypeVersionLoadConfig extends EntityTypeVersionLoadConfig {
  @override
  final bool? loadRelations;
  @override
  final bool? loadAttributes;
  @override
  final bool? loadCredentials;
  @override
  final bool? loadCalculatedFields;
  @override
  final bool? loadPermissions;
  @override
  final bool? loadGroupEntities;
  @override
  final bool? autoGenerateIntegrationKey;
  @override
  final bool? removeOtherEntities;
  @override
  final bool? findExistingEntityByName;

  factory _$EntityTypeVersionLoadConfig([
    void Function(EntityTypeVersionLoadConfigBuilder)? updates,
  ]) => (EntityTypeVersionLoadConfigBuilder()..update(updates))._build();

  _$EntityTypeVersionLoadConfig._({
    this.loadRelations,
    this.loadAttributes,
    this.loadCredentials,
    this.loadCalculatedFields,
    this.loadPermissions,
    this.loadGroupEntities,
    this.autoGenerateIntegrationKey,
    this.removeOtherEntities,
    this.findExistingEntityByName,
  }) : super._();
  @override
  EntityTypeVersionLoadConfig rebuild(
    void Function(EntityTypeVersionLoadConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityTypeVersionLoadConfigBuilder toBuilder() =>
      EntityTypeVersionLoadConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityTypeVersionLoadConfig &&
        loadRelations == other.loadRelations &&
        loadAttributes == other.loadAttributes &&
        loadCredentials == other.loadCredentials &&
        loadCalculatedFields == other.loadCalculatedFields &&
        loadPermissions == other.loadPermissions &&
        loadGroupEntities == other.loadGroupEntities &&
        autoGenerateIntegrationKey == other.autoGenerateIntegrationKey &&
        removeOtherEntities == other.removeOtherEntities &&
        findExistingEntityByName == other.findExistingEntityByName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loadRelations.hashCode);
    _$hash = $jc(_$hash, loadAttributes.hashCode);
    _$hash = $jc(_$hash, loadCredentials.hashCode);
    _$hash = $jc(_$hash, loadCalculatedFields.hashCode);
    _$hash = $jc(_$hash, loadPermissions.hashCode);
    _$hash = $jc(_$hash, loadGroupEntities.hashCode);
    _$hash = $jc(_$hash, autoGenerateIntegrationKey.hashCode);
    _$hash = $jc(_$hash, removeOtherEntities.hashCode);
    _$hash = $jc(_$hash, findExistingEntityByName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityTypeVersionLoadConfig')
          ..add('loadRelations', loadRelations)
          ..add('loadAttributes', loadAttributes)
          ..add('loadCredentials', loadCredentials)
          ..add('loadCalculatedFields', loadCalculatedFields)
          ..add('loadPermissions', loadPermissions)
          ..add('loadGroupEntities', loadGroupEntities)
          ..add('autoGenerateIntegrationKey', autoGenerateIntegrationKey)
          ..add('removeOtherEntities', removeOtherEntities)
          ..add('findExistingEntityByName', findExistingEntityByName))
        .toString();
  }
}

class EntityTypeVersionLoadConfigBuilder
    implements
        Builder<
          EntityTypeVersionLoadConfig,
          EntityTypeVersionLoadConfigBuilder
        > {
  _$EntityTypeVersionLoadConfig? _$v;

  bool? _loadRelations;
  bool? get loadRelations => _$this._loadRelations;
  set loadRelations(bool? loadRelations) =>
      _$this._loadRelations = loadRelations;

  bool? _loadAttributes;
  bool? get loadAttributes => _$this._loadAttributes;
  set loadAttributes(bool? loadAttributes) =>
      _$this._loadAttributes = loadAttributes;

  bool? _loadCredentials;
  bool? get loadCredentials => _$this._loadCredentials;
  set loadCredentials(bool? loadCredentials) =>
      _$this._loadCredentials = loadCredentials;

  bool? _loadCalculatedFields;
  bool? get loadCalculatedFields => _$this._loadCalculatedFields;
  set loadCalculatedFields(bool? loadCalculatedFields) =>
      _$this._loadCalculatedFields = loadCalculatedFields;

  bool? _loadPermissions;
  bool? get loadPermissions => _$this._loadPermissions;
  set loadPermissions(bool? loadPermissions) =>
      _$this._loadPermissions = loadPermissions;

  bool? _loadGroupEntities;
  bool? get loadGroupEntities => _$this._loadGroupEntities;
  set loadGroupEntities(bool? loadGroupEntities) =>
      _$this._loadGroupEntities = loadGroupEntities;

  bool? _autoGenerateIntegrationKey;
  bool? get autoGenerateIntegrationKey => _$this._autoGenerateIntegrationKey;
  set autoGenerateIntegrationKey(bool? autoGenerateIntegrationKey) =>
      _$this._autoGenerateIntegrationKey = autoGenerateIntegrationKey;

  bool? _removeOtherEntities;
  bool? get removeOtherEntities => _$this._removeOtherEntities;
  set removeOtherEntities(bool? removeOtherEntities) =>
      _$this._removeOtherEntities = removeOtherEntities;

  bool? _findExistingEntityByName;
  bool? get findExistingEntityByName => _$this._findExistingEntityByName;
  set findExistingEntityByName(bool? findExistingEntityByName) =>
      _$this._findExistingEntityByName = findExistingEntityByName;

  EntityTypeVersionLoadConfigBuilder() {
    EntityTypeVersionLoadConfig._defaults(this);
  }

  EntityTypeVersionLoadConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loadRelations = $v.loadRelations;
      _loadAttributes = $v.loadAttributes;
      _loadCredentials = $v.loadCredentials;
      _loadCalculatedFields = $v.loadCalculatedFields;
      _loadPermissions = $v.loadPermissions;
      _loadGroupEntities = $v.loadGroupEntities;
      _autoGenerateIntegrationKey = $v.autoGenerateIntegrationKey;
      _removeOtherEntities = $v.removeOtherEntities;
      _findExistingEntityByName = $v.findExistingEntityByName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityTypeVersionLoadConfig other) {
    _$v = other as _$EntityTypeVersionLoadConfig;
  }

  @override
  void update(void Function(EntityTypeVersionLoadConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityTypeVersionLoadConfig build() => _build();

  _$EntityTypeVersionLoadConfig _build() {
    final _$result =
        _$v ??
        _$EntityTypeVersionLoadConfig._(
          loadRelations: loadRelations,
          loadAttributes: loadAttributes,
          loadCredentials: loadCredentials,
          loadCalculatedFields: loadCalculatedFields,
          loadPermissions: loadPermissions,
          loadGroupEntities: loadGroupEntities,
          autoGenerateIntegrationKey: autoGenerateIntegrationKey,
          removeOtherEntities: removeOtherEntities,
          findExistingEntityByName: findExistingEntityByName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
