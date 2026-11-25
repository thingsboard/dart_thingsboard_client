// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_group_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityGroupFilter extends EntityGroupFilter {
  @override
  final EntityType? groupType;
  @override
  final bool? groupStateEntity;
  @override
  final EntityType? defaultStateGroupType;
  @override
  final String? defaultStateEntityGroup;
  @override
  final String? entityGroup;
  @override
  final String type;

  factory _$EntityGroupFilter([
    void Function(EntityGroupFilterBuilder)? updates,
  ]) => (EntityGroupFilterBuilder()..update(updates))._build();

  _$EntityGroupFilter._({
    this.groupType,
    this.groupStateEntity,
    this.defaultStateGroupType,
    this.defaultStateEntityGroup,
    this.entityGroup,
    required this.type,
  }) : super._();
  @override
  EntityGroupFilter rebuild(void Function(EntityGroupFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityGroupFilterBuilder toBuilder() =>
      EntityGroupFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityGroupFilter &&
        groupType == other.groupType &&
        groupStateEntity == other.groupStateEntity &&
        defaultStateGroupType == other.defaultStateGroupType &&
        defaultStateEntityGroup == other.defaultStateEntityGroup &&
        entityGroup == other.entityGroup &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupType.hashCode);
    _$hash = $jc(_$hash, groupStateEntity.hashCode);
    _$hash = $jc(_$hash, defaultStateGroupType.hashCode);
    _$hash = $jc(_$hash, defaultStateEntityGroup.hashCode);
    _$hash = $jc(_$hash, entityGroup.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityGroupFilter')
          ..add('groupType', groupType)
          ..add('groupStateEntity', groupStateEntity)
          ..add('defaultStateGroupType', defaultStateGroupType)
          ..add('defaultStateEntityGroup', defaultStateEntityGroup)
          ..add('entityGroup', entityGroup)
          ..add('type', type))
        .toString();
  }
}

class EntityGroupFilterBuilder
    implements
        Builder<EntityGroupFilter, EntityGroupFilterBuilder>,
        EntityFilterBuilder {
  _$EntityGroupFilter? _$v;

  EntityType? _groupType;
  EntityType? get groupType => _$this._groupType;
  set groupType(covariant EntityType? groupType) =>
      _$this._groupType = groupType;

  bool? _groupStateEntity;
  bool? get groupStateEntity => _$this._groupStateEntity;
  set groupStateEntity(covariant bool? groupStateEntity) =>
      _$this._groupStateEntity = groupStateEntity;

  EntityType? _defaultStateGroupType;
  EntityType? get defaultStateGroupType => _$this._defaultStateGroupType;
  set defaultStateGroupType(covariant EntityType? defaultStateGroupType) =>
      _$this._defaultStateGroupType = defaultStateGroupType;

  String? _defaultStateEntityGroup;
  String? get defaultStateEntityGroup => _$this._defaultStateEntityGroup;
  set defaultStateEntityGroup(covariant String? defaultStateEntityGroup) =>
      _$this._defaultStateEntityGroup = defaultStateEntityGroup;

  String? _entityGroup;
  String? get entityGroup => _$this._entityGroup;
  set entityGroup(covariant String? entityGroup) =>
      _$this._entityGroup = entityGroup;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EntityGroupFilterBuilder() {
    EntityGroupFilter._defaults(this);
  }

  EntityGroupFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupType = $v.groupType;
      _groupStateEntity = $v.groupStateEntity;
      _defaultStateGroupType = $v.defaultStateGroupType;
      _defaultStateEntityGroup = $v.defaultStateEntityGroup;
      _entityGroup = $v.entityGroup;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityGroupFilter other) {
    _$v = other as _$EntityGroupFilter;
  }

  @override
  void update(void Function(EntityGroupFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityGroupFilter build() => _build();

  _$EntityGroupFilter _build() {
    final _$result =
        _$v ??
        _$EntityGroupFilter._(
          groupType: groupType,
          groupStateEntity: groupStateEntity,
          defaultStateGroupType: defaultStateGroupType,
          defaultStateEntityGroup: defaultStateEntityGroup,
          entityGroup: entityGroup,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'EntityGroupFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
