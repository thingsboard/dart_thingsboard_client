// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_view_export_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityViewExportData extends EntityViewExportData {
  @override
  final ExportableEntity? entity;
  @override
  final BuiltList<EntityRelation>? relations;
  @override
  final BuiltMap<String, BuiltList<AttributeExportData>>? attributes;
  @override
  final BuiltList<CalculatedField>? calculatedFields;
  @override
  final EntityType entityType;

  factory _$EntityViewExportData([
    void Function(EntityViewExportDataBuilder)? updates,
  ]) => (EntityViewExportDataBuilder()..update(updates))._build();

  _$EntityViewExportData._({
    this.entity,
    this.relations,
    this.attributes,
    this.calculatedFields,
    required this.entityType,
  }) : super._();
  @override
  EntityViewExportData rebuild(
    void Function(EntityViewExportDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityViewExportDataBuilder toBuilder() =>
      EntityViewExportDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityViewExportData &&
        entity == other.entity &&
        relations == other.relations &&
        attributes == other.attributes &&
        calculatedFields == other.calculatedFields &&
        entityType == other.entityType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entity.hashCode);
    _$hash = $jc(_$hash, relations.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, calculatedFields.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityViewExportData')
          ..add('entity', entity)
          ..add('relations', relations)
          ..add('attributes', attributes)
          ..add('calculatedFields', calculatedFields)
          ..add('entityType', entityType))
        .toString();
  }
}

class EntityViewExportDataBuilder
    implements
        Builder<EntityViewExportData, EntityViewExportDataBuilder>,
        EntityExportDataBuilder {
  _$EntityViewExportData? _$v;

  ExportableEntityBuilder? _entity;
  ExportableEntityBuilder get entity =>
      _$this._entity ??= ExportableEntityBuilder();
  set entity(covariant ExportableEntityBuilder? entity) =>
      _$this._entity = entity;

  ListBuilder<EntityRelation>? _relations;
  ListBuilder<EntityRelation> get relations =>
      _$this._relations ??= ListBuilder<EntityRelation>();
  set relations(covariant ListBuilder<EntityRelation>? relations) =>
      _$this._relations = relations;

  MapBuilder<String, BuiltList<AttributeExportData>>? _attributes;
  MapBuilder<String, BuiltList<AttributeExportData>> get attributes =>
      _$this._attributes ??=
          MapBuilder<String, BuiltList<AttributeExportData>>();
  set attributes(
    covariant MapBuilder<String, BuiltList<AttributeExportData>>? attributes,
  ) => _$this._attributes = attributes;

  ListBuilder<CalculatedField>? _calculatedFields;
  ListBuilder<CalculatedField> get calculatedFields =>
      _$this._calculatedFields ??= ListBuilder<CalculatedField>();
  set calculatedFields(
    covariant ListBuilder<CalculatedField>? calculatedFields,
  ) => _$this._calculatedFields = calculatedFields;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  EntityViewExportDataBuilder() {
    EntityViewExportData._defaults(this);
  }

  EntityViewExportDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entity = $v.entity?.toBuilder();
      _relations = $v.relations?.toBuilder();
      _attributes = $v.attributes?.toBuilder();
      _calculatedFields = $v.calculatedFields?.toBuilder();
      _entityType = $v.entityType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityViewExportData other) {
    _$v = other as _$EntityViewExportData;
  }

  @override
  void update(void Function(EntityViewExportDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityViewExportData build() => _build();

  _$EntityViewExportData _build() {
    _$EntityViewExportData _$result;
    try {
      _$result =
          _$v ??
          _$EntityViewExportData._(
            entity: _entity?.build(),
            relations: _relations?.build(),
            attributes: _attributes?.build(),
            calculatedFields: _calculatedFields?.build(),
            entityType: BuiltValueNullFieldError.checkNotNull(
              entityType,
              r'EntityViewExportData',
              'entityType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entity';
        _entity?.build();
        _$failedField = 'relations';
        _relations?.build();
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'calculatedFields';
        _calculatedFields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityViewExportData',
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
