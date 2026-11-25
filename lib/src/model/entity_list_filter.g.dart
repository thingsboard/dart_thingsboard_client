// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_list_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityListFilter extends EntityListFilter {
  @override
  final EntityType? entityType;
  @override
  final BuiltList<String>? entityList;
  @override
  final String type;

  factory _$EntityListFilter([
    void Function(EntityListFilterBuilder)? updates,
  ]) => (EntityListFilterBuilder()..update(updates))._build();

  _$EntityListFilter._({this.entityType, this.entityList, required this.type})
    : super._();
  @override
  EntityListFilter rebuild(void Function(EntityListFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityListFilterBuilder toBuilder() =>
      EntityListFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityListFilter &&
        entityType == other.entityType &&
        entityList == other.entityList &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, entityList.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityListFilter')
          ..add('entityType', entityType)
          ..add('entityList', entityList)
          ..add('type', type))
        .toString();
  }
}

class EntityListFilterBuilder
    implements
        Builder<EntityListFilter, EntityListFilterBuilder>,
        EntityFilterBuilder {
  _$EntityListFilter? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  ListBuilder<String>? _entityList;
  ListBuilder<String> get entityList =>
      _$this._entityList ??= ListBuilder<String>();
  set entityList(covariant ListBuilder<String>? entityList) =>
      _$this._entityList = entityList;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EntityListFilterBuilder() {
    EntityListFilter._defaults(this);
  }

  EntityListFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _entityList = $v.entityList?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityListFilter other) {
    _$v = other as _$EntityListFilter;
  }

  @override
  void update(void Function(EntityListFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityListFilter build() => _build();

  _$EntityListFilter _build() {
    _$EntityListFilter _$result;
    try {
      _$result =
          _$v ??
          _$EntityListFilter._(
            entityType: entityType,
            entityList: _entityList?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntityListFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityList';
        _entityList?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityListFilter',
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
