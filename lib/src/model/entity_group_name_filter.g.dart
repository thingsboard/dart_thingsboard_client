// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_group_name_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityGroupNameFilter extends EntityGroupNameFilter {
  @override
  final EntityType? groupType;
  @override
  final String? entityGroupNameFilter;
  @override
  final String type;

  factory _$EntityGroupNameFilter([
    void Function(EntityGroupNameFilterBuilder)? updates,
  ]) => (EntityGroupNameFilterBuilder()..update(updates))._build();

  _$EntityGroupNameFilter._({
    this.groupType,
    this.entityGroupNameFilter,
    required this.type,
  }) : super._();
  @override
  EntityGroupNameFilter rebuild(
    void Function(EntityGroupNameFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityGroupNameFilterBuilder toBuilder() =>
      EntityGroupNameFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityGroupNameFilter &&
        groupType == other.groupType &&
        entityGroupNameFilter == other.entityGroupNameFilter &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupType.hashCode);
    _$hash = $jc(_$hash, entityGroupNameFilter.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityGroupNameFilter')
          ..add('groupType', groupType)
          ..add('entityGroupNameFilter', entityGroupNameFilter)
          ..add('type', type))
        .toString();
  }
}

class EntityGroupNameFilterBuilder
    implements
        Builder<EntityGroupNameFilter, EntityGroupNameFilterBuilder>,
        EntityFilterBuilder {
  _$EntityGroupNameFilter? _$v;

  EntityType? _groupType;
  EntityType? get groupType => _$this._groupType;
  set groupType(covariant EntityType? groupType) =>
      _$this._groupType = groupType;

  String? _entityGroupNameFilter;
  String? get entityGroupNameFilter => _$this._entityGroupNameFilter;
  set entityGroupNameFilter(covariant String? entityGroupNameFilter) =>
      _$this._entityGroupNameFilter = entityGroupNameFilter;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EntityGroupNameFilterBuilder() {
    EntityGroupNameFilter._defaults(this);
  }

  EntityGroupNameFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupType = $v.groupType;
      _entityGroupNameFilter = $v.entityGroupNameFilter;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityGroupNameFilter other) {
    _$v = other as _$EntityGroupNameFilter;
  }

  @override
  void update(void Function(EntityGroupNameFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityGroupNameFilter build() => _build();

  _$EntityGroupNameFilter _build() {
    final _$result =
        _$v ??
        _$EntityGroupNameFilter._(
          groupType: groupType,
          entityGroupNameFilter: entityGroupNameFilter,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'EntityGroupNameFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
