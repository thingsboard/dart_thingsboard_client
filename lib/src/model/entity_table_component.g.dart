// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_table_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityTableComponent extends EntityTableComponent {
  @override
  final bool? showTableHeading;
  @override
  final Insets? margins;
  @override
  final String? borderColor;
  @override
  final int? borderRadius;
  @override
  final Insets? paddings;
  @override
  final String? background;
  @override
  final int? borderWidth;
  @override
  final TableSortOrder? tableSortOrder;
  @override
  final BuiltList<DataSource>? dataSources;
  @override
  final Heading? tableHeading;
  @override
  final ReportComponentSubType subType;
  @override
  final ReportComponentType type;

  factory _$EntityTableComponent([
    void Function(EntityTableComponentBuilder)? updates,
  ]) => (EntityTableComponentBuilder()..update(updates))._build();

  _$EntityTableComponent._({
    this.showTableHeading,
    this.margins,
    this.borderColor,
    this.borderRadius,
    this.paddings,
    this.background,
    this.borderWidth,
    this.tableSortOrder,
    this.dataSources,
    this.tableHeading,
    required this.subType,
    required this.type,
  }) : super._();
  @override
  EntityTableComponent rebuild(
    void Function(EntityTableComponentBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityTableComponentBuilder toBuilder() =>
      EntityTableComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityTableComponent &&
        showTableHeading == other.showTableHeading &&
        margins == other.margins &&
        borderColor == other.borderColor &&
        borderRadius == other.borderRadius &&
        paddings == other.paddings &&
        background == other.background &&
        borderWidth == other.borderWidth &&
        tableSortOrder == other.tableSortOrder &&
        dataSources == other.dataSources &&
        tableHeading == other.tableHeading &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showTableHeading.hashCode);
    _$hash = $jc(_$hash, margins.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jc(_$hash, borderRadius.hashCode);
    _$hash = $jc(_$hash, paddings.hashCode);
    _$hash = $jc(_$hash, background.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, tableSortOrder.hashCode);
    _$hash = $jc(_$hash, dataSources.hashCode);
    _$hash = $jc(_$hash, tableHeading.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityTableComponent')
          ..add('showTableHeading', showTableHeading)
          ..add('margins', margins)
          ..add('borderColor', borderColor)
          ..add('borderRadius', borderRadius)
          ..add('paddings', paddings)
          ..add('background', background)
          ..add('borderWidth', borderWidth)
          ..add('tableSortOrder', tableSortOrder)
          ..add('dataSources', dataSources)
          ..add('tableHeading', tableHeading)
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class EntityTableComponentBuilder
    implements
        Builder<EntityTableComponent, EntityTableComponentBuilder>,
        ReportComponentBuilder {
  _$EntityTableComponent? _$v;

  bool? _showTableHeading;
  bool? get showTableHeading => _$this._showTableHeading;
  set showTableHeading(covariant bool? showTableHeading) =>
      _$this._showTableHeading = showTableHeading;

  InsetsBuilder? _margins;
  InsetsBuilder get margins => _$this._margins ??= InsetsBuilder();
  set margins(covariant InsetsBuilder? margins) => _$this._margins = margins;

  String? _borderColor;
  String? get borderColor => _$this._borderColor;
  set borderColor(covariant String? borderColor) =>
      _$this._borderColor = borderColor;

  int? _borderRadius;
  int? get borderRadius => _$this._borderRadius;
  set borderRadius(covariant int? borderRadius) =>
      _$this._borderRadius = borderRadius;

  InsetsBuilder? _paddings;
  InsetsBuilder get paddings => _$this._paddings ??= InsetsBuilder();
  set paddings(covariant InsetsBuilder? paddings) =>
      _$this._paddings = paddings;

  String? _background;
  String? get background => _$this._background;
  set background(covariant String? background) =>
      _$this._background = background;

  int? _borderWidth;
  int? get borderWidth => _$this._borderWidth;
  set borderWidth(covariant int? borderWidth) =>
      _$this._borderWidth = borderWidth;

  TableSortOrderBuilder? _tableSortOrder;
  TableSortOrderBuilder get tableSortOrder =>
      _$this._tableSortOrder ??= TableSortOrderBuilder();
  set tableSortOrder(covariant TableSortOrderBuilder? tableSortOrder) =>
      _$this._tableSortOrder = tableSortOrder;

  ListBuilder<DataSource>? _dataSources;
  ListBuilder<DataSource> get dataSources =>
      _$this._dataSources ??= ListBuilder<DataSource>();
  set dataSources(covariant ListBuilder<DataSource>? dataSources) =>
      _$this._dataSources = dataSources;

  HeadingBuilder? _tableHeading;
  HeadingBuilder get tableHeading => _$this._tableHeading ??= HeadingBuilder();
  set tableHeading(covariant HeadingBuilder? tableHeading) =>
      _$this._tableHeading = tableHeading;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  EntityTableComponentBuilder() {
    EntityTableComponent._defaults(this);
  }

  EntityTableComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showTableHeading = $v.showTableHeading;
      _margins = $v.margins?.toBuilder();
      _borderColor = $v.borderColor;
      _borderRadius = $v.borderRadius;
      _paddings = $v.paddings?.toBuilder();
      _background = $v.background;
      _borderWidth = $v.borderWidth;
      _tableSortOrder = $v.tableSortOrder?.toBuilder();
      _dataSources = $v.dataSources?.toBuilder();
      _tableHeading = $v.tableHeading?.toBuilder();
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityTableComponent other) {
    _$v = other as _$EntityTableComponent;
  }

  @override
  void update(void Function(EntityTableComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityTableComponent build() => _build();

  _$EntityTableComponent _build() {
    _$EntityTableComponent _$result;
    try {
      _$result =
          _$v ??
          _$EntityTableComponent._(
            showTableHeading: showTableHeading,
            margins: _margins?.build(),
            borderColor: borderColor,
            borderRadius: borderRadius,
            paddings: _paddings?.build(),
            background: background,
            borderWidth: borderWidth,
            tableSortOrder: _tableSortOrder?.build(),
            dataSources: _dataSources?.build(),
            tableHeading: _tableHeading?.build(),
            subType: BuiltValueNullFieldError.checkNotNull(
              subType,
              r'EntityTableComponent',
              'subType',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntityTableComponent',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'margins';
        _margins?.build();

        _$failedField = 'paddings';
        _paddings?.build();

        _$failedField = 'tableSortOrder';
        _tableSortOrder?.build();
        _$failedField = 'dataSources';
        _dataSources?.build();
        _$failedField = 'tableHeading';
        _tableHeading?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityTableComponent',
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
