// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_data_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityDataInfo extends EntityDataInfo {
  @override
  final bool? hasRelations;
  @override
  final bool? hasAttributes;
  @override
  final bool? hasCredentials;
  @override
  final bool? hasCalculatedFields;
  @override
  final bool? hasPermissions;
  @override
  final bool? hasGroupEntities;

  factory _$EntityDataInfo([void Function(EntityDataInfoBuilder)? updates]) =>
      (EntityDataInfoBuilder()..update(updates))._build();

  _$EntityDataInfo._({
    this.hasRelations,
    this.hasAttributes,
    this.hasCredentials,
    this.hasCalculatedFields,
    this.hasPermissions,
    this.hasGroupEntities,
  }) : super._();
  @override
  EntityDataInfo rebuild(void Function(EntityDataInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityDataInfoBuilder toBuilder() => EntityDataInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityDataInfo &&
        hasRelations == other.hasRelations &&
        hasAttributes == other.hasAttributes &&
        hasCredentials == other.hasCredentials &&
        hasCalculatedFields == other.hasCalculatedFields &&
        hasPermissions == other.hasPermissions &&
        hasGroupEntities == other.hasGroupEntities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hasRelations.hashCode);
    _$hash = $jc(_$hash, hasAttributes.hashCode);
    _$hash = $jc(_$hash, hasCredentials.hashCode);
    _$hash = $jc(_$hash, hasCalculatedFields.hashCode);
    _$hash = $jc(_$hash, hasPermissions.hashCode);
    _$hash = $jc(_$hash, hasGroupEntities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityDataInfo')
          ..add('hasRelations', hasRelations)
          ..add('hasAttributes', hasAttributes)
          ..add('hasCredentials', hasCredentials)
          ..add('hasCalculatedFields', hasCalculatedFields)
          ..add('hasPermissions', hasPermissions)
          ..add('hasGroupEntities', hasGroupEntities))
        .toString();
  }
}

class EntityDataInfoBuilder
    implements Builder<EntityDataInfo, EntityDataInfoBuilder> {
  _$EntityDataInfo? _$v;

  bool? _hasRelations;
  bool? get hasRelations => _$this._hasRelations;
  set hasRelations(bool? hasRelations) => _$this._hasRelations = hasRelations;

  bool? _hasAttributes;
  bool? get hasAttributes => _$this._hasAttributes;
  set hasAttributes(bool? hasAttributes) =>
      _$this._hasAttributes = hasAttributes;

  bool? _hasCredentials;
  bool? get hasCredentials => _$this._hasCredentials;
  set hasCredentials(bool? hasCredentials) =>
      _$this._hasCredentials = hasCredentials;

  bool? _hasCalculatedFields;
  bool? get hasCalculatedFields => _$this._hasCalculatedFields;
  set hasCalculatedFields(bool? hasCalculatedFields) =>
      _$this._hasCalculatedFields = hasCalculatedFields;

  bool? _hasPermissions;
  bool? get hasPermissions => _$this._hasPermissions;
  set hasPermissions(bool? hasPermissions) =>
      _$this._hasPermissions = hasPermissions;

  bool? _hasGroupEntities;
  bool? get hasGroupEntities => _$this._hasGroupEntities;
  set hasGroupEntities(bool? hasGroupEntities) =>
      _$this._hasGroupEntities = hasGroupEntities;

  EntityDataInfoBuilder() {
    EntityDataInfo._defaults(this);
  }

  EntityDataInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hasRelations = $v.hasRelations;
      _hasAttributes = $v.hasAttributes;
      _hasCredentials = $v.hasCredentials;
      _hasCalculatedFields = $v.hasCalculatedFields;
      _hasPermissions = $v.hasPermissions;
      _hasGroupEntities = $v.hasGroupEntities;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityDataInfo other) {
    _$v = other as _$EntityDataInfo;
  }

  @override
  void update(void Function(EntityDataInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityDataInfo build() => _build();

  _$EntityDataInfo _build() {
    final _$result =
        _$v ??
        _$EntityDataInfo._(
          hasRelations: hasRelations,
          hasAttributes: hasAttributes,
          hasCredentials: hasCredentials,
          hasCalculatedFields: hasCalculatedFields,
          hasPermissions: hasPermissions,
          hasGroupEntities: hasGroupEntities,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
