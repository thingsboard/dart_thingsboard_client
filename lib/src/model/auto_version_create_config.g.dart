// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_version_create_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AutoVersionCreateConfig extends AutoVersionCreateConfig {
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
  final String? branch;

  factory _$AutoVersionCreateConfig([
    void Function(AutoVersionCreateConfigBuilder)? updates,
  ]) => (AutoVersionCreateConfigBuilder()..update(updates))._build();

  _$AutoVersionCreateConfig._({
    this.saveRelations,
    this.saveAttributes,
    this.saveCredentials,
    this.saveCalculatedFields,
    this.savePermissions,
    this.saveGroupEntities,
    this.branch,
  }) : super._();
  @override
  AutoVersionCreateConfig rebuild(
    void Function(AutoVersionCreateConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AutoVersionCreateConfigBuilder toBuilder() =>
      AutoVersionCreateConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoVersionCreateConfig &&
        saveRelations == other.saveRelations &&
        saveAttributes == other.saveAttributes &&
        saveCredentials == other.saveCredentials &&
        saveCalculatedFields == other.saveCalculatedFields &&
        savePermissions == other.savePermissions &&
        saveGroupEntities == other.saveGroupEntities &&
        branch == other.branch;
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
    _$hash = $jc(_$hash, branch.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AutoVersionCreateConfig')
          ..add('saveRelations', saveRelations)
          ..add('saveAttributes', saveAttributes)
          ..add('saveCredentials', saveCredentials)
          ..add('saveCalculatedFields', saveCalculatedFields)
          ..add('savePermissions', savePermissions)
          ..add('saveGroupEntities', saveGroupEntities)
          ..add('branch', branch))
        .toString();
  }
}

class AutoVersionCreateConfigBuilder
    implements
        Builder<AutoVersionCreateConfig, AutoVersionCreateConfigBuilder> {
  _$AutoVersionCreateConfig? _$v;

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

  String? _branch;
  String? get branch => _$this._branch;
  set branch(String? branch) => _$this._branch = branch;

  AutoVersionCreateConfigBuilder() {
    AutoVersionCreateConfig._defaults(this);
  }

  AutoVersionCreateConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _saveRelations = $v.saveRelations;
      _saveAttributes = $v.saveAttributes;
      _saveCredentials = $v.saveCredentials;
      _saveCalculatedFields = $v.saveCalculatedFields;
      _savePermissions = $v.savePermissions;
      _saveGroupEntities = $v.saveGroupEntities;
      _branch = $v.branch;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoVersionCreateConfig other) {
    _$v = other as _$AutoVersionCreateConfig;
  }

  @override
  void update(void Function(AutoVersionCreateConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AutoVersionCreateConfig build() => _build();

  _$AutoVersionCreateConfig _build() {
    final _$result =
        _$v ??
        _$AutoVersionCreateConfig._(
          saveRelations: saveRelations,
          saveAttributes: saveAttributes,
          saveCredentials: saveCredentials,
          saveCalculatedFields: saveCalculatedFields,
          savePermissions: savePermissions,
          saveGroupEntities: saveGroupEntities,
          branch: branch,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
