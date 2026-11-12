// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_load_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VersionLoadConfig extends VersionLoadConfig {
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

  factory _$VersionLoadConfig([
    void Function(VersionLoadConfigBuilder)? updates,
  ]) => (VersionLoadConfigBuilder()..update(updates))._build();

  _$VersionLoadConfig._({
    this.loadRelations,
    this.loadAttributes,
    this.loadCredentials,
    this.loadCalculatedFields,
    this.loadPermissions,
    this.loadGroupEntities,
    this.autoGenerateIntegrationKey,
  }) : super._();
  @override
  VersionLoadConfig rebuild(void Function(VersionLoadConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VersionLoadConfigBuilder toBuilder() =>
      VersionLoadConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VersionLoadConfig &&
        loadRelations == other.loadRelations &&
        loadAttributes == other.loadAttributes &&
        loadCredentials == other.loadCredentials &&
        loadCalculatedFields == other.loadCalculatedFields &&
        loadPermissions == other.loadPermissions &&
        loadGroupEntities == other.loadGroupEntities &&
        autoGenerateIntegrationKey == other.autoGenerateIntegrationKey;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VersionLoadConfig')
          ..add('loadRelations', loadRelations)
          ..add('loadAttributes', loadAttributes)
          ..add('loadCredentials', loadCredentials)
          ..add('loadCalculatedFields', loadCalculatedFields)
          ..add('loadPermissions', loadPermissions)
          ..add('loadGroupEntities', loadGroupEntities)
          ..add('autoGenerateIntegrationKey', autoGenerateIntegrationKey))
        .toString();
  }
}

class VersionLoadConfigBuilder
    implements Builder<VersionLoadConfig, VersionLoadConfigBuilder> {
  _$VersionLoadConfig? _$v;

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

  VersionLoadConfigBuilder() {
    VersionLoadConfig._defaults(this);
  }

  VersionLoadConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loadRelations = $v.loadRelations;
      _loadAttributes = $v.loadAttributes;
      _loadCredentials = $v.loadCredentials;
      _loadCalculatedFields = $v.loadCalculatedFields;
      _loadPermissions = $v.loadPermissions;
      _loadGroupEntities = $v.loadGroupEntities;
      _autoGenerateIntegrationKey = $v.autoGenerateIntegrationKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VersionLoadConfig other) {
    _$v = other as _$VersionLoadConfig;
  }

  @override
  void update(void Function(VersionLoadConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VersionLoadConfig build() => _build();

  _$VersionLoadConfig _build() {
    final _$result =
        _$v ??
        _$VersionLoadConfig._(
          loadRelations: loadRelations,
          loadAttributes: loadAttributes,
          loadCredentials: loadCredentials,
          loadCalculatedFields: loadCalculatedFields,
          loadPermissions: loadPermissions,
          loadGroupEntities: loadGroupEntities,
          autoGenerateIntegrationKey: autoGenerateIntegrationKey,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
