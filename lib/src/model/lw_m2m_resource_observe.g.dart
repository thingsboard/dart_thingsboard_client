// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lw_m2m_resource_observe.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LwM2mResourceObserve extends LwM2mResourceObserve {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? observe;
  @override
  final bool? attribute;
  @override
  final bool? telemetry;
  @override
  final String? keyName;

  factory _$LwM2mResourceObserve([
    void Function(LwM2mResourceObserveBuilder)? updates,
  ]) => (LwM2mResourceObserveBuilder()..update(updates))._build();

  _$LwM2mResourceObserve._({
    this.id,
    this.name,
    this.observe,
    this.attribute,
    this.telemetry,
    this.keyName,
  }) : super._();
  @override
  LwM2mResourceObserve rebuild(
    void Function(LwM2mResourceObserveBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LwM2mResourceObserveBuilder toBuilder() =>
      LwM2mResourceObserveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LwM2mResourceObserve &&
        id == other.id &&
        name == other.name &&
        observe == other.observe &&
        attribute == other.attribute &&
        telemetry == other.telemetry &&
        keyName == other.keyName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, observe.hashCode);
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, telemetry.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LwM2mResourceObserve')
          ..add('id', id)
          ..add('name', name)
          ..add('observe', observe)
          ..add('attribute', attribute)
          ..add('telemetry', telemetry)
          ..add('keyName', keyName))
        .toString();
  }
}

class LwM2mResourceObserveBuilder
    implements Builder<LwM2mResourceObserve, LwM2mResourceObserveBuilder> {
  _$LwM2mResourceObserve? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _observe;
  bool? get observe => _$this._observe;
  set observe(bool? observe) => _$this._observe = observe;

  bool? _attribute;
  bool? get attribute => _$this._attribute;
  set attribute(bool? attribute) => _$this._attribute = attribute;

  bool? _telemetry;
  bool? get telemetry => _$this._telemetry;
  set telemetry(bool? telemetry) => _$this._telemetry = telemetry;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  LwM2mResourceObserveBuilder() {
    LwM2mResourceObserve._defaults(this);
  }

  LwM2mResourceObserveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _observe = $v.observe;
      _attribute = $v.attribute;
      _telemetry = $v.telemetry;
      _keyName = $v.keyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LwM2mResourceObserve other) {
    _$v = other as _$LwM2mResourceObserve;
  }

  @override
  void update(void Function(LwM2mResourceObserveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LwM2mResourceObserve build() => _build();

  _$LwM2mResourceObserve _build() {
    final _$result =
        _$v ??
        _$LwM2mResourceObserve._(
          id: id,
          name: name,
          observe: observe,
          attribute: attribute,
          telemetry: telemetry,
          keyName: keyName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
