// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_type_version_create_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityTypeVersionCreateConfig extends EntityTypeVersionCreateConfig {
  @override
  final bool? saveRelations;
  @override
  final bool? saveAttributes;
  @override
  final bool? saveCredentials;
  @override
  final bool? saveCalculatedFields;
  @override
  final bool? savePermissions;
  @override
  final bool? saveGroupEntities;
  @override
  final SyncStrategy? syncStrategy;
  @override
  final BuiltList<String>? entityIds;
  @override
  final bool? allEntities;

  factory _$EntityTypeVersionCreateConfig([
    void Function(EntityTypeVersionCreateConfigBuilder)? updates,
  ]) => (EntityTypeVersionCreateConfigBuilder()..update(updates))._build();

  _$EntityTypeVersionCreateConfig._({
    this.saveRelations,
    this.saveAttributes,
    this.saveCredentials,
    this.saveCalculatedFields,
    this.savePermissions,
    this.saveGroupEntities,
    this.syncStrategy,
    this.entityIds,
    this.allEntities,
  }) : super._();
  @override
  EntityTypeVersionCreateConfig rebuild(
    void Function(EntityTypeVersionCreateConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityTypeVersionCreateConfigBuilder toBuilder() =>
      EntityTypeVersionCreateConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityTypeVersionCreateConfig &&
        saveRelations == other.saveRelations &&
        saveAttributes == other.saveAttributes &&
        saveCredentials == other.saveCredentials &&
        saveCalculatedFields == other.saveCalculatedFields &&
        savePermissions == other.savePermissions &&
        saveGroupEntities == other.saveGroupEntities &&
        syncStrategy == other.syncStrategy &&
        entityIds == other.entityIds &&
        allEntities == other.allEntities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, saveRelations.hashCode);
    _$hash = $jc(_$hash, saveAttributes.hashCode);
    _$hash = $jc(_$hash, saveCredentials.hashCode);
    _$hash = $jc(_$hash, saveCalculatedFields.hashCode);
    _$hash = $jc(_$hash, savePermissions.hashCode);
    _$hash = $jc(_$hash, saveGroupEntities.hashCode);
    _$hash = $jc(_$hash, syncStrategy.hashCode);
    _$hash = $jc(_$hash, entityIds.hashCode);
    _$hash = $jc(_$hash, allEntities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityTypeVersionCreateConfig')
          ..add('saveRelations', saveRelations)
          ..add('saveAttributes', saveAttributes)
          ..add('saveCredentials', saveCredentials)
          ..add('saveCalculatedFields', saveCalculatedFields)
          ..add('savePermissions', savePermissions)
          ..add('saveGroupEntities', saveGroupEntities)
          ..add('syncStrategy', syncStrategy)
          ..add('entityIds', entityIds)
          ..add('allEntities', allEntities))
        .toString();
  }
}

class EntityTypeVersionCreateConfigBuilder
    implements
        Builder<
          EntityTypeVersionCreateConfig,
          EntityTypeVersionCreateConfigBuilder
        > {
  _$EntityTypeVersionCreateConfig? _$v;

  bool? _saveRelations;
  bool? get saveRelations => _$this._saveRelations;
  set saveRelations(bool? saveRelations) =>
      _$this._saveRelations = saveRelations;

  bool? _saveAttributes;
  bool? get saveAttributes => _$this._saveAttributes;
  set saveAttributes(bool? saveAttributes) =>
      _$this._saveAttributes = saveAttributes;

  bool? _saveCredentials;
  bool? get saveCredentials => _$this._saveCredentials;
  set saveCredentials(bool? saveCredentials) =>
      _$this._saveCredentials = saveCredentials;

  bool? _saveCalculatedFields;
  bool? get saveCalculatedFields => _$this._saveCalculatedFields;
  set saveCalculatedFields(bool? saveCalculatedFields) =>
      _$this._saveCalculatedFields = saveCalculatedFields;

  bool? _savePermissions;
  bool? get savePermissions => _$this._savePermissions;
  set savePermissions(bool? savePermissions) =>
      _$this._savePermissions = savePermissions;

  bool? _saveGroupEntities;
  bool? get saveGroupEntities => _$this._saveGroupEntities;
  set saveGroupEntities(bool? saveGroupEntities) =>
      _$this._saveGroupEntities = saveGroupEntities;

  SyncStrategy? _syncStrategy;
  SyncStrategy? get syncStrategy => _$this._syncStrategy;
  set syncStrategy(SyncStrategy? syncStrategy) =>
      _$this._syncStrategy = syncStrategy;

  ListBuilder<String>? _entityIds;
  ListBuilder<String> get entityIds =>
      _$this._entityIds ??= ListBuilder<String>();
  set entityIds(ListBuilder<String>? entityIds) =>
      _$this._entityIds = entityIds;

  bool? _allEntities;
  bool? get allEntities => _$this._allEntities;
  set allEntities(bool? allEntities) => _$this._allEntities = allEntities;

  EntityTypeVersionCreateConfigBuilder() {
    EntityTypeVersionCreateConfig._defaults(this);
  }

  EntityTypeVersionCreateConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _saveRelations = $v.saveRelations;
      _saveAttributes = $v.saveAttributes;
      _saveCredentials = $v.saveCredentials;
      _saveCalculatedFields = $v.saveCalculatedFields;
      _savePermissions = $v.savePermissions;
      _saveGroupEntities = $v.saveGroupEntities;
      _syncStrategy = $v.syncStrategy;
      _entityIds = $v.entityIds?.toBuilder();
      _allEntities = $v.allEntities;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityTypeVersionCreateConfig other) {
    _$v = other as _$EntityTypeVersionCreateConfig;
  }

  @override
  void update(void Function(EntityTypeVersionCreateConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityTypeVersionCreateConfig build() => _build();

  _$EntityTypeVersionCreateConfig _build() {
    _$EntityTypeVersionCreateConfig _$result;
    try {
      _$result =
          _$v ??
          _$EntityTypeVersionCreateConfig._(
            saveRelations: saveRelations,
            saveAttributes: saveAttributes,
            saveCredentials: saveCredentials,
            saveCalculatedFields: saveCalculatedFields,
            savePermissions: savePermissions,
            saveGroupEntities: saveGroupEntities,
            syncStrategy: syncStrategy,
            entityIds: _entityIds?.build(),
            allEntities: allEntities,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityIds';
        _entityIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityTypeVersionCreateConfig',
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
