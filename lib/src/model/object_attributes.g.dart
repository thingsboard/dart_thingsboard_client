// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_attributes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectAttributes extends ObjectAttributes {
  @override
  final int? dim;
  @override
  final int? ssid;
  @override
  final String? uri;
  @override
  final JsonObject? ver;
  @override
  final LwM2mVersion? lwm2m;
  @override
  final int? pmin;
  @override
  final int? pmax;
  @override
  final double? gt;
  @override
  final double? lt;
  @override
  final double? st;
  @override
  final int? epmin;
  @override
  final int? epmax;

  factory _$ObjectAttributes([
    void Function(ObjectAttributesBuilder)? updates,
  ]) => (ObjectAttributesBuilder()..update(updates))._build();

  _$ObjectAttributes._({
    this.dim,
    this.ssid,
    this.uri,
    this.ver,
    this.lwm2m,
    this.pmin,
    this.pmax,
    this.gt,
    this.lt,
    this.st,
    this.epmin,
    this.epmax,
  }) : super._();
  @override
  ObjectAttributes rebuild(void Function(ObjectAttributesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectAttributesBuilder toBuilder() =>
      ObjectAttributesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectAttributes &&
        dim == other.dim &&
        ssid == other.ssid &&
        uri == other.uri &&
        ver == other.ver &&
        lwm2m == other.lwm2m &&
        pmin == other.pmin &&
        pmax == other.pmax &&
        gt == other.gt &&
        lt == other.lt &&
        st == other.st &&
        epmin == other.epmin &&
        epmax == other.epmax;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dim.hashCode);
    _$hash = $jc(_$hash, ssid.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, ver.hashCode);
    _$hash = $jc(_$hash, lwm2m.hashCode);
    _$hash = $jc(_$hash, pmin.hashCode);
    _$hash = $jc(_$hash, pmax.hashCode);
    _$hash = $jc(_$hash, gt.hashCode);
    _$hash = $jc(_$hash, lt.hashCode);
    _$hash = $jc(_$hash, st.hashCode);
    _$hash = $jc(_$hash, epmin.hashCode);
    _$hash = $jc(_$hash, epmax.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectAttributes')
          ..add('dim', dim)
          ..add('ssid', ssid)
          ..add('uri', uri)
          ..add('ver', ver)
          ..add('lwm2m', lwm2m)
          ..add('pmin', pmin)
          ..add('pmax', pmax)
          ..add('gt', gt)
          ..add('lt', lt)
          ..add('st', st)
          ..add('epmin', epmin)
          ..add('epmax', epmax))
        .toString();
  }
}

class ObjectAttributesBuilder
    implements Builder<ObjectAttributes, ObjectAttributesBuilder> {
  _$ObjectAttributes? _$v;

  int? _dim;
  int? get dim => _$this._dim;
  set dim(int? dim) => _$this._dim = dim;

  int? _ssid;
  int? get ssid => _$this._ssid;
  set ssid(int? ssid) => _$this._ssid = ssid;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  JsonObject? _ver;
  JsonObject? get ver => _$this._ver;
  set ver(JsonObject? ver) => _$this._ver = ver;

  LwM2mVersionBuilder? _lwm2m;
  LwM2mVersionBuilder get lwm2m => _$this._lwm2m ??= LwM2mVersionBuilder();
  set lwm2m(LwM2mVersionBuilder? lwm2m) => _$this._lwm2m = lwm2m;

  int? _pmin;
  int? get pmin => _$this._pmin;
  set pmin(int? pmin) => _$this._pmin = pmin;

  int? _pmax;
  int? get pmax => _$this._pmax;
  set pmax(int? pmax) => _$this._pmax = pmax;

  double? _gt;
  double? get gt => _$this._gt;
  set gt(double? gt) => _$this._gt = gt;

  double? _lt;
  double? get lt => _$this._lt;
  set lt(double? lt) => _$this._lt = lt;

  double? _st;
  double? get st => _$this._st;
  set st(double? st) => _$this._st = st;

  int? _epmin;
  int? get epmin => _$this._epmin;
  set epmin(int? epmin) => _$this._epmin = epmin;

  int? _epmax;
  int? get epmax => _$this._epmax;
  set epmax(int? epmax) => _$this._epmax = epmax;

  ObjectAttributesBuilder() {
    ObjectAttributes._defaults(this);
  }

  ObjectAttributesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dim = $v.dim;
      _ssid = $v.ssid;
      _uri = $v.uri;
      _ver = $v.ver;
      _lwm2m = $v.lwm2m?.toBuilder();
      _pmin = $v.pmin;
      _pmax = $v.pmax;
      _gt = $v.gt;
      _lt = $v.lt;
      _st = $v.st;
      _epmin = $v.epmin;
      _epmax = $v.epmax;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectAttributes other) {
    _$v = other as _$ObjectAttributes;
  }

  @override
  void update(void Function(ObjectAttributesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectAttributes build() => _build();

  _$ObjectAttributes _build() {
    _$ObjectAttributes _$result;
    try {
      _$result =
          _$v ??
          _$ObjectAttributes._(
            dim: dim,
            ssid: ssid,
            uri: uri,
            ver: ver,
            lwm2m: _lwm2m?.build(),
            pmin: pmin,
            pmax: pmax,
            gt: gt,
            lt: lt,
            st: st,
            epmin: epmin,
            epmax: epmax,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lwm2m';
        _lwm2m?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ObjectAttributes',
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
