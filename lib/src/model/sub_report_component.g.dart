// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_report_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubReportComponent extends SubReportComponent {
  @override
  final ReportTemplateId? templateId;
  @override
  final BuiltList<DataSource>? dataSources;
  @override
  final bool? avoidPageBreakInside;
  @override
  final ReportComponentSubType subType;
  @override
  final ReportComponentType type;

  factory _$SubReportComponent([
    void Function(SubReportComponentBuilder)? updates,
  ]) => (SubReportComponentBuilder()..update(updates))._build();

  _$SubReportComponent._({
    this.templateId,
    this.dataSources,
    this.avoidPageBreakInside,
    required this.subType,
    required this.type,
  }) : super._();
  @override
  SubReportComponent rebuild(
    void Function(SubReportComponentBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SubReportComponentBuilder toBuilder() =>
      SubReportComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubReportComponent &&
        templateId == other.templateId &&
        dataSources == other.dataSources &&
        avoidPageBreakInside == other.avoidPageBreakInside &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, dataSources.hashCode);
    _$hash = $jc(_$hash, avoidPageBreakInside.hashCode);
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubReportComponent')
          ..add('templateId', templateId)
          ..add('dataSources', dataSources)
          ..add('avoidPageBreakInside', avoidPageBreakInside)
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class SubReportComponentBuilder
    implements
        Builder<SubReportComponent, SubReportComponentBuilder>,
        ReportComponentBuilder {
  _$SubReportComponent? _$v;

  ReportTemplateIdBuilder? _templateId;
  ReportTemplateIdBuilder get templateId =>
      _$this._templateId ??= ReportTemplateIdBuilder();
  set templateId(covariant ReportTemplateIdBuilder? templateId) =>
      _$this._templateId = templateId;

  ListBuilder<DataSource>? _dataSources;
  ListBuilder<DataSource> get dataSources =>
      _$this._dataSources ??= ListBuilder<DataSource>();
  set dataSources(covariant ListBuilder<DataSource>? dataSources) =>
      _$this._dataSources = dataSources;

  bool? _avoidPageBreakInside;
  bool? get avoidPageBreakInside => _$this._avoidPageBreakInside;
  set avoidPageBreakInside(covariant bool? avoidPageBreakInside) =>
      _$this._avoidPageBreakInside = avoidPageBreakInside;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  SubReportComponentBuilder() {
    SubReportComponent._defaults(this);
  }

  SubReportComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateId = $v.templateId?.toBuilder();
      _dataSources = $v.dataSources?.toBuilder();
      _avoidPageBreakInside = $v.avoidPageBreakInside;
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SubReportComponent other) {
    _$v = other as _$SubReportComponent;
  }

  @override
  void update(void Function(SubReportComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubReportComponent build() => _build();

  _$SubReportComponent _build() {
    _$SubReportComponent _$result;
    try {
      _$result =
          _$v ??
          _$SubReportComponent._(
            templateId: _templateId?.build(),
            dataSources: _dataSources?.build(),
            avoidPageBreakInside: avoidPageBreakInside,
            subType: BuiltValueNullFieldError.checkNotNull(
              subType,
              r'SubReportComponent',
              'subType',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SubReportComponent',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'templateId';
        _templateId?.build();
        _$failedField = 'dataSources';
        _dataSources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SubReportComponent',
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
