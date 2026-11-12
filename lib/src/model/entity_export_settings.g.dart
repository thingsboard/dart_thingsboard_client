// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_export_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityExportSettings extends EntityExportSettings {
  @override
  final bool? exportRelations;
  @override
  final bool? exportAttributes;
  @override
  final bool? exportCredentials;
  @override
  final bool? exportCalculatedFields;
  @override
  final bool? exportPermissions;
  @override
  final bool? exportGroupEntities;
  @override
  final bool? embedGroupMembers;

  factory _$EntityExportSettings([
    void Function(EntityExportSettingsBuilder)? updates,
  ]) => (EntityExportSettingsBuilder()..update(updates))._build();

  _$EntityExportSettings._({
    this.exportRelations,
    this.exportAttributes,
    this.exportCredentials,
    this.exportCalculatedFields,
    this.exportPermissions,
    this.exportGroupEntities,
    this.embedGroupMembers,
  }) : super._();
  @override
  EntityExportSettings rebuild(
    void Function(EntityExportSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityExportSettingsBuilder toBuilder() =>
      EntityExportSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityExportSettings &&
        exportRelations == other.exportRelations &&
        exportAttributes == other.exportAttributes &&
        exportCredentials == other.exportCredentials &&
        exportCalculatedFields == other.exportCalculatedFields &&
        exportPermissions == other.exportPermissions &&
        exportGroupEntities == other.exportGroupEntities &&
        embedGroupMembers == other.embedGroupMembers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportRelations.hashCode);
    _$hash = $jc(_$hash, exportAttributes.hashCode);
    _$hash = $jc(_$hash, exportCredentials.hashCode);
    _$hash = $jc(_$hash, exportCalculatedFields.hashCode);
    _$hash = $jc(_$hash, exportPermissions.hashCode);
    _$hash = $jc(_$hash, exportGroupEntities.hashCode);
    _$hash = $jc(_$hash, embedGroupMembers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityExportSettings')
          ..add('exportRelations', exportRelations)
          ..add('exportAttributes', exportAttributes)
          ..add('exportCredentials', exportCredentials)
          ..add('exportCalculatedFields', exportCalculatedFields)
          ..add('exportPermissions', exportPermissions)
          ..add('exportGroupEntities', exportGroupEntities)
          ..add('embedGroupMembers', embedGroupMembers))
        .toString();
  }
}

class EntityExportSettingsBuilder
    implements Builder<EntityExportSettings, EntityExportSettingsBuilder> {
  _$EntityExportSettings? _$v;

  bool? _exportRelations;
  bool? get exportRelations => _$this._exportRelations;
  set exportRelations(bool? exportRelations) =>
      _$this._exportRelations = exportRelations;

  bool? _exportAttributes;
  bool? get exportAttributes => _$this._exportAttributes;
  set exportAttributes(bool? exportAttributes) =>
      _$this._exportAttributes = exportAttributes;

  bool? _exportCredentials;
  bool? get exportCredentials => _$this._exportCredentials;
  set exportCredentials(bool? exportCredentials) =>
      _$this._exportCredentials = exportCredentials;

  bool? _exportCalculatedFields;
  bool? get exportCalculatedFields => _$this._exportCalculatedFields;
  set exportCalculatedFields(bool? exportCalculatedFields) =>
      _$this._exportCalculatedFields = exportCalculatedFields;

  bool? _exportPermissions;
  bool? get exportPermissions => _$this._exportPermissions;
  set exportPermissions(bool? exportPermissions) =>
      _$this._exportPermissions = exportPermissions;

  bool? _exportGroupEntities;
  bool? get exportGroupEntities => _$this._exportGroupEntities;
  set exportGroupEntities(bool? exportGroupEntities) =>
      _$this._exportGroupEntities = exportGroupEntities;

  bool? _embedGroupMembers;
  bool? get embedGroupMembers => _$this._embedGroupMembers;
  set embedGroupMembers(bool? embedGroupMembers) =>
      _$this._embedGroupMembers = embedGroupMembers;

  EntityExportSettingsBuilder() {
    EntityExportSettings._defaults(this);
  }

  EntityExportSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportRelations = $v.exportRelations;
      _exportAttributes = $v.exportAttributes;
      _exportCredentials = $v.exportCredentials;
      _exportCalculatedFields = $v.exportCalculatedFields;
      _exportPermissions = $v.exportPermissions;
      _exportGroupEntities = $v.exportGroupEntities;
      _embedGroupMembers = $v.embedGroupMembers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityExportSettings other) {
    _$v = other as _$EntityExportSettings;
  }

  @override
  void update(void Function(EntityExportSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityExportSettings build() => _build();

  _$EntityExportSettings _build() {
    final _$result =
        _$v ??
        _$EntityExportSettings._(
          exportRelations: exportRelations,
          exportAttributes: exportAttributes,
          exportCredentials: exportCredentials,
          exportCalculatedFields: exportCalculatedFields,
          exportPermissions: exportPermissions,
          exportGroupEntities: exportGroupEntities,
          embedGroupMembers: embedGroupMembers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
