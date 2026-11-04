// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_export_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class EntityExportDataBuilder {
  void replace(EntityExportData other);
  void update(void Function(EntityExportDataBuilder) updates);
  ExportableEntityBuilder get entity;
  set entity(ExportableEntityBuilder? entity);

  ListBuilder<EntityRelation> get relations;
  set relations(ListBuilder<EntityRelation>? relations);

  MapBuilder<String, BuiltList<AttributeExportData>> get attributes;
  set attributes(
    MapBuilder<String, BuiltList<AttributeExportData>>? attributes,
  );

  ListBuilder<CalculatedField> get calculatedFields;
  set calculatedFields(ListBuilder<CalculatedField>? calculatedFields);

  EntityType? get entityType;
  set entityType(EntityType? entityType);
}

class _$$EntityExportData extends $EntityExportData {
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

  factory _$$EntityExportData([
    void Function($EntityExportDataBuilder)? updates,
  ]) => ($EntityExportDataBuilder()..update(updates))._build();

  _$$EntityExportData._({
    this.entity,
    this.relations,
    this.attributes,
    this.calculatedFields,
    required this.entityType,
  }) : super._();
  @override
  $EntityExportData rebuild(void Function($EntityExportDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $EntityExportDataBuilder toBuilder() =>
      $EntityExportDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $EntityExportData &&
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
    return (newBuiltValueToStringHelper(r'$EntityExportData')
          ..add('entity', entity)
          ..add('relations', relations)
          ..add('attributes', attributes)
          ..add('calculatedFields', calculatedFields)
          ..add('entityType', entityType))
        .toString();
  }
}

class $EntityExportDataBuilder
    implements
        Builder<$EntityExportData, $EntityExportDataBuilder>,
        EntityExportDataBuilder {
  _$$EntityExportData? _$v;

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

  $EntityExportDataBuilder() {
    $EntityExportData._defaults(this);
  }

  $EntityExportDataBuilder get _$this {
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
  void replace(covariant $EntityExportData other) {
    _$v = other as _$$EntityExportData;
  }

  @override
  void update(void Function($EntityExportDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $EntityExportData build() => _build();

  _$$EntityExportData _build() {
    _$$EntityExportData _$result;
    try {
      _$result =
          _$v ??
          _$$EntityExportData._(
            entity: _entity?.build(),
            relations: _relations?.build(),
            attributes: _attributes?.build(),
            calculatedFields: _calculatedFields?.build(),
            entityType: BuiltValueNullFieldError.checkNotNull(
              entityType,
              r'$EntityExportData',
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
          r'$EntityExportData',
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
