// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widgets_bundle_export_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WidgetsBundleExportData extends WidgetsBundleExportData {
  @override
  final BuiltList<String>? fqns;
  @override
  final BuiltList<JsonObject?>? widgets;
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

  factory _$WidgetsBundleExportData([
    void Function(WidgetsBundleExportDataBuilder)? updates,
  ]) => (WidgetsBundleExportDataBuilder()..update(updates))._build();

  _$WidgetsBundleExportData._({
    this.fqns,
    this.widgets,
    this.entity,
    this.relations,
    this.attributes,
    this.calculatedFields,
    required this.entityType,
  }) : super._();
  @override
  WidgetsBundleExportData rebuild(
    void Function(WidgetsBundleExportDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WidgetsBundleExportDataBuilder toBuilder() =>
      WidgetsBundleExportDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WidgetsBundleExportData &&
        fqns == other.fqns &&
        widgets == other.widgets &&
        entity == other.entity &&
        relations == other.relations &&
        attributes == other.attributes &&
        calculatedFields == other.calculatedFields &&
        entityType == other.entityType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fqns.hashCode);
    _$hash = $jc(_$hash, widgets.hashCode);
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
    return (newBuiltValueToStringHelper(r'WidgetsBundleExportData')
          ..add('fqns', fqns)
          ..add('widgets', widgets)
          ..add('entity', entity)
          ..add('relations', relations)
          ..add('attributes', attributes)
          ..add('calculatedFields', calculatedFields)
          ..add('entityType', entityType))
        .toString();
  }
}

class WidgetsBundleExportDataBuilder
    implements
        Builder<WidgetsBundleExportData, WidgetsBundleExportDataBuilder>,
        EntityExportDataBuilder {
  _$WidgetsBundleExportData? _$v;

  ListBuilder<String>? _fqns;
  ListBuilder<String> get fqns => _$this._fqns ??= ListBuilder<String>();
  set fqns(covariant ListBuilder<String>? fqns) => _$this._fqns = fqns;

  ListBuilder<JsonObject?>? _widgets;
  ListBuilder<JsonObject?> get widgets =>
      _$this._widgets ??= ListBuilder<JsonObject?>();
  set widgets(covariant ListBuilder<JsonObject?>? widgets) =>
      _$this._widgets = widgets;

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

  WidgetsBundleExportDataBuilder() {
    WidgetsBundleExportData._defaults(this);
  }

  WidgetsBundleExportDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fqns = $v.fqns?.toBuilder();
      _widgets = $v.widgets?.toBuilder();
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
  void replace(covariant WidgetsBundleExportData other) {
    _$v = other as _$WidgetsBundleExportData;
  }

  @override
  void update(void Function(WidgetsBundleExportDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WidgetsBundleExportData build() => _build();

  _$WidgetsBundleExportData _build() {
    _$WidgetsBundleExportData _$result;
    try {
      _$result =
          _$v ??
          _$WidgetsBundleExportData._(
            fqns: _fqns?.build(),
            widgets: _widgets?.build(),
            entity: _entity?.build(),
            relations: _relations?.build(),
            attributes: _attributes?.build(),
            calculatedFields: _calculatedFields?.build(),
            entityType: BuiltValueNullFieldError.checkNotNull(
              entityType,
              r'WidgetsBundleExportData',
              'entityType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fqns';
        _fqns?.build();
        _$failedField = 'widgets';
        _widgets?.build();
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
          r'WidgetsBundleExportData',
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
