// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widgets_bundle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WidgetsBundle extends WidgetsBundle {
  @override
  final WidgetsBundleId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String? alias;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final bool? scada;
  @override
  final String? description;
  @override
  final int? order;
  @override
  final int? version;
  @override
  final String? name;

  factory _$WidgetsBundle([void Function(WidgetsBundleBuilder)? updates]) =>
      (WidgetsBundleBuilder()..update(updates))._build();

  _$WidgetsBundle._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.alias,
    this.title,
    this.image,
    this.scada,
    this.description,
    this.order,
    this.version,
    this.name,
  }) : super._();
  @override
  WidgetsBundle rebuild(void Function(WidgetsBundleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WidgetsBundleBuilder toBuilder() => WidgetsBundleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WidgetsBundle &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        alias == other.alias &&
        title == other.title &&
        image == other.image &&
        scada == other.scada &&
        description == other.description &&
        order == other.order &&
        version == other.version &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, scada.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WidgetsBundle')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('alias', alias)
          ..add('title', title)
          ..add('image', image)
          ..add('scada', scada)
          ..add('description', description)
          ..add('order', order)
          ..add('version', version)
          ..add('name', name))
        .toString();
  }
}

class WidgetsBundleBuilder
    implements Builder<WidgetsBundle, WidgetsBundleBuilder> {
  _$WidgetsBundle? _$v;

  WidgetsBundleIdBuilder? _id;
  WidgetsBundleIdBuilder get id => _$this._id ??= WidgetsBundleIdBuilder();
  set id(WidgetsBundleIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  bool? _scada;
  bool? get scada => _$this._scada;
  set scada(bool? scada) => _$this._scada = scada;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  WidgetsBundleBuilder() {
    WidgetsBundle._defaults(this);
  }

  WidgetsBundleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _alias = $v.alias;
      _title = $v.title;
      _image = $v.image;
      _scada = $v.scada;
      _description = $v.description;
      _order = $v.order;
      _version = $v.version;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WidgetsBundle other) {
    _$v = other as _$WidgetsBundle;
  }

  @override
  void update(void Function(WidgetsBundleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WidgetsBundle build() => _build();

  _$WidgetsBundle _build() {
    _$WidgetsBundle _$result;
    try {
      _$result =
          _$v ??
          _$WidgetsBundle._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            alias: alias,
            title: title,
            image: image,
            scada: scada,
            description: description,
            order: order,
            version: version,
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WidgetsBundle',
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
