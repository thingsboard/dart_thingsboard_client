// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities_by_group_name_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntitiesByGroupNameFilter extends EntitiesByGroupNameFilter {
  @override
  final EntityType? groupType;
  @override
  final bool? groupStateEntity;
  @override
  final String? entityGroupNameFilter;
  @override
  final String? stateEntityParamName;
  @override
  final EntityId? ownerId;
  @override
  final String type;

  factory _$EntitiesByGroupNameFilter([
    void Function(EntitiesByGroupNameFilterBuilder)? updates,
  ]) => (EntitiesByGroupNameFilterBuilder()..update(updates))._build();

  _$EntitiesByGroupNameFilter._({
    this.groupType,
    this.groupStateEntity,
    this.entityGroupNameFilter,
    this.stateEntityParamName,
    this.ownerId,
    required this.type,
  }) : super._();
  @override
  EntitiesByGroupNameFilter rebuild(
    void Function(EntitiesByGroupNameFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntitiesByGroupNameFilterBuilder toBuilder() =>
      EntitiesByGroupNameFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntitiesByGroupNameFilter &&
        groupType == other.groupType &&
        groupStateEntity == other.groupStateEntity &&
        entityGroupNameFilter == other.entityGroupNameFilter &&
        stateEntityParamName == other.stateEntityParamName &&
        ownerId == other.ownerId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupType.hashCode);
    _$hash = $jc(_$hash, groupStateEntity.hashCode);
    _$hash = $jc(_$hash, entityGroupNameFilter.hashCode);
    _$hash = $jc(_$hash, stateEntityParamName.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntitiesByGroupNameFilter')
          ..add('groupType', groupType)
          ..add('groupStateEntity', groupStateEntity)
          ..add('entityGroupNameFilter', entityGroupNameFilter)
          ..add('stateEntityParamName', stateEntityParamName)
          ..add('ownerId', ownerId)
          ..add('type', type))
        .toString();
  }
}

class EntitiesByGroupNameFilterBuilder
    implements
        Builder<EntitiesByGroupNameFilter, EntitiesByGroupNameFilterBuilder>,
        EntityFilterBuilder {
  _$EntitiesByGroupNameFilter? _$v;

  EntityType? _groupType;
  EntityType? get groupType => _$this._groupType;
  set groupType(covariant EntityType? groupType) =>
      _$this._groupType = groupType;

  bool? _groupStateEntity;
  bool? get groupStateEntity => _$this._groupStateEntity;
  set groupStateEntity(covariant bool? groupStateEntity) =>
      _$this._groupStateEntity = groupStateEntity;

  String? _entityGroupNameFilter;
  String? get entityGroupNameFilter => _$this._entityGroupNameFilter;
  set entityGroupNameFilter(covariant String? entityGroupNameFilter) =>
      _$this._entityGroupNameFilter = entityGroupNameFilter;

  String? _stateEntityParamName;
  String? get stateEntityParamName => _$this._stateEntityParamName;
  set stateEntityParamName(covariant String? stateEntityParamName) =>
      _$this._stateEntityParamName = stateEntityParamName;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(covariant EntityId? ownerId) => _$this._ownerId = ownerId;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EntitiesByGroupNameFilterBuilder() {
    EntitiesByGroupNameFilter._defaults(this);
  }

  EntitiesByGroupNameFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupType = $v.groupType;
      _groupStateEntity = $v.groupStateEntity;
      _entityGroupNameFilter = $v.entityGroupNameFilter;
      _stateEntityParamName = $v.stateEntityParamName;
      _ownerId = $v.ownerId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntitiesByGroupNameFilter other) {
    _$v = other as _$EntitiesByGroupNameFilter;
  }

  @override
  void update(void Function(EntitiesByGroupNameFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntitiesByGroupNameFilter build() => _build();

  _$EntitiesByGroupNameFilter _build() {
    final _$result =
        _$v ??
        _$EntitiesByGroupNameFilter._(
          groupType: groupType,
          groupStateEntity: groupStateEntity,
          entityGroupNameFilter: entityGroupNameFilter,
          stateEntityParamName: stateEntityParamName,
          ownerId: ownerId,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'EntitiesByGroupNameFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
