// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_type_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WidgetTypeInfo extends WidgetTypeInfo {
  @override
  final WidgetTypeId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String? fqn;
  @override
  final String? name;
  @override
  final bool? deprecated;
  @override
  final bool? scada;
  @override
  final int? version;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final BuiltList<String>? tags;
  @override
  final String? widgetType;
  @override
  final BuiltList<WidgetBundleInfo>? bundles;

  factory _$WidgetTypeInfo([void Function(WidgetTypeInfoBuilder)? updates]) =>
      (WidgetTypeInfoBuilder()..update(updates))._build();

  _$WidgetTypeInfo._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.fqn,
    this.name,
    this.deprecated,
    this.scada,
    this.version,
    this.image,
    this.description,
    this.tags,
    this.widgetType,
    this.bundles,
  }) : super._();
  @override
  WidgetTypeInfo rebuild(void Function(WidgetTypeInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WidgetTypeInfoBuilder toBuilder() => WidgetTypeInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WidgetTypeInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        fqn == other.fqn &&
        name == other.name &&
        deprecated == other.deprecated &&
        scada == other.scada &&
        version == other.version &&
        image == other.image &&
        description == other.description &&
        tags == other.tags &&
        widgetType == other.widgetType &&
        bundles == other.bundles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, fqn.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, deprecated.hashCode);
    _$hash = $jc(_$hash, scada.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, widgetType.hashCode);
    _$hash = $jc(_$hash, bundles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WidgetTypeInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('fqn', fqn)
          ..add('name', name)
          ..add('deprecated', deprecated)
          ..add('scada', scada)
          ..add('version', version)
          ..add('image', image)
          ..add('description', description)
          ..add('tags', tags)
          ..add('widgetType', widgetType)
          ..add('bundles', bundles))
        .toString();
  }
}

class WidgetTypeInfoBuilder
    implements Builder<WidgetTypeInfo, WidgetTypeInfoBuilder> {
  _$WidgetTypeInfo? _$v;

  WidgetTypeIdBuilder? _id;
  WidgetTypeIdBuilder get id => _$this._id ??= WidgetTypeIdBuilder();
  set id(WidgetTypeIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _fqn;
  String? get fqn => _$this._fqn;
  set fqn(String? fqn) => _$this._fqn = fqn;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _deprecated;
  bool? get deprecated => _$this._deprecated;
  set deprecated(bool? deprecated) => _$this._deprecated = deprecated;

  bool? _scada;
  bool? get scada => _$this._scada;
  set scada(bool? scada) => _$this._scada = scada;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _widgetType;
  String? get widgetType => _$this._widgetType;
  set widgetType(String? widgetType) => _$this._widgetType = widgetType;

  ListBuilder<WidgetBundleInfo>? _bundles;
  ListBuilder<WidgetBundleInfo> get bundles =>
      _$this._bundles ??= ListBuilder<WidgetBundleInfo>();
  set bundles(ListBuilder<WidgetBundleInfo>? bundles) =>
      _$this._bundles = bundles;

  WidgetTypeInfoBuilder() {
    WidgetTypeInfo._defaults(this);
  }

  WidgetTypeInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _fqn = $v.fqn;
      _name = $v.name;
      _deprecated = $v.deprecated;
      _scada = $v.scada;
      _version = $v.version;
      _image = $v.image;
      _description = $v.description;
      _tags = $v.tags?.toBuilder();
      _widgetType = $v.widgetType;
      _bundles = $v.bundles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WidgetTypeInfo other) {
    _$v = other as _$WidgetTypeInfo;
  }

  @override
  void update(void Function(WidgetTypeInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WidgetTypeInfo build() => _build();

  _$WidgetTypeInfo _build() {
    _$WidgetTypeInfo _$result;
    try {
      _$result =
          _$v ??
          _$WidgetTypeInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            fqn: fqn,
            name: name,
            deprecated: deprecated,
            scada: scada,
            version: version,
            image: image,
            description: description,
            tags: _tags?.build(),
            widgetType: widgetType,
            bundles: _bundles?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'bundles';
        _bundles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WidgetTypeInfo',
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
