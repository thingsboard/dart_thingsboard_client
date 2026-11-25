// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_group_list_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityGroupListFilter extends EntityGroupListFilter {
  @override
  final BuiltList<String>? entityGroupList;
  @override
  final EntityType? groupType;
  @override
  final String type;

  factory _$EntityGroupListFilter([
    void Function(EntityGroupListFilterBuilder)? updates,
  ]) => (EntityGroupListFilterBuilder()..update(updates))._build();

  _$EntityGroupListFilter._({
    this.entityGroupList,
    this.groupType,
    required this.type,
  }) : super._();
  @override
  EntityGroupListFilter rebuild(
    void Function(EntityGroupListFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityGroupListFilterBuilder toBuilder() =>
      EntityGroupListFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityGroupListFilter &&
        entityGroupList == other.entityGroupList &&
        groupType == other.groupType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityGroupList.hashCode);
    _$hash = $jc(_$hash, groupType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityGroupListFilter')
          ..add('entityGroupList', entityGroupList)
          ..add('groupType', groupType)
          ..add('type', type))
        .toString();
  }
}

class EntityGroupListFilterBuilder
    implements
        Builder<EntityGroupListFilter, EntityGroupListFilterBuilder>,
        EntityFilterBuilder {
  _$EntityGroupListFilter? _$v;

  ListBuilder<String>? _entityGroupList;
  ListBuilder<String> get entityGroupList =>
      _$this._entityGroupList ??= ListBuilder<String>();
  set entityGroupList(covariant ListBuilder<String>? entityGroupList) =>
      _$this._entityGroupList = entityGroupList;

  EntityType? _groupType;
  EntityType? get groupType => _$this._groupType;
  set groupType(covariant EntityType? groupType) =>
      _$this._groupType = groupType;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EntityGroupListFilterBuilder() {
    EntityGroupListFilter._defaults(this);
  }

  EntityGroupListFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityGroupList = $v.entityGroupList?.toBuilder();
      _groupType = $v.groupType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityGroupListFilter other) {
    _$v = other as _$EntityGroupListFilter;
  }

  @override
  void update(void Function(EntityGroupListFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityGroupListFilter build() => _build();

  _$EntityGroupListFilter _build() {
    _$EntityGroupListFilter _$result;
    try {
      _$result =
          _$v ??
          _$EntityGroupListFilter._(
            entityGroupList: _entityGroupList?.build(),
            groupType: groupType,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntityGroupListFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityGroupList';
        _entityGroupList?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityGroupListFilter',
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
