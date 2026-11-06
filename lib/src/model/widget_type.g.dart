// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WidgetType extends WidgetType {
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
  final JsonObject? descriptor;

  factory _$WidgetType([void Function(WidgetTypeBuilder)? updates]) =>
      (WidgetTypeBuilder()..update(updates))._build();

  _$WidgetType._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.fqn,
    this.name,
    this.deprecated,
    this.scada,
    this.version,
    this.descriptor,
  }) : super._();
  @override
  WidgetType rebuild(void Function(WidgetTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WidgetTypeBuilder toBuilder() => WidgetTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WidgetType &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        fqn == other.fqn &&
        name == other.name &&
        deprecated == other.deprecated &&
        scada == other.scada &&
        version == other.version &&
        descriptor == other.descriptor;
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
    _$hash = $jc(_$hash, descriptor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WidgetType')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('fqn', fqn)
          ..add('name', name)
          ..add('deprecated', deprecated)
          ..add('scada', scada)
          ..add('version', version)
          ..add('descriptor', descriptor))
        .toString();
  }
}

class WidgetTypeBuilder implements Builder<WidgetType, WidgetTypeBuilder> {
  _$WidgetType? _$v;

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

  JsonObject? _descriptor;
  JsonObject? get descriptor => _$this._descriptor;
  set descriptor(JsonObject? descriptor) => _$this._descriptor = descriptor;

  WidgetTypeBuilder() {
    WidgetType._defaults(this);
  }

  WidgetTypeBuilder get _$this {
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
      _descriptor = $v.descriptor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WidgetType other) {
    _$v = other as _$WidgetType;
  }

  @override
  void update(void Function(WidgetTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WidgetType build() => _build();

  _$WidgetType _build() {
    _$WidgetType _$result;
    try {
      _$result =
          _$v ??
          _$WidgetType._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            fqn: fqn,
            name: name,
            deprecated: deprecated,
            scada: scada,
            version: version,
            descriptor: descriptor,
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
          r'WidgetType',
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
