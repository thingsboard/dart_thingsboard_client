// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lw_m2m_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LwM2mObject extends LwM2mObject {
  @override
  final int? id;
  @override
  final String? keyId;
  @override
  final String? name;
  @override
  final bool? multiple;
  @override
  final bool? mandatory;
  @override
  final BuiltList<LwM2mInstance>? instances;

  factory _$LwM2mObject([void Function(LwM2mObjectBuilder)? updates]) =>
      (LwM2mObjectBuilder()..update(updates))._build();

  _$LwM2mObject._({
    this.id,
    this.keyId,
    this.name,
    this.multiple,
    this.mandatory,
    this.instances,
  }) : super._();
  @override
  LwM2mObject rebuild(void Function(LwM2mObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LwM2mObjectBuilder toBuilder() => LwM2mObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LwM2mObject &&
        id == other.id &&
        keyId == other.keyId &&
        name == other.name &&
        multiple == other.multiple &&
        mandatory == other.mandatory &&
        instances == other.instances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, multiple.hashCode);
    _$hash = $jc(_$hash, mandatory.hashCode);
    _$hash = $jc(_$hash, instances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LwM2mObject')
          ..add('id', id)
          ..add('keyId', keyId)
          ..add('name', name)
          ..add('multiple', multiple)
          ..add('mandatory', mandatory)
          ..add('instances', instances))
        .toString();
  }
}

class LwM2mObjectBuilder implements Builder<LwM2mObject, LwM2mObjectBuilder> {
  _$LwM2mObject? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _multiple;
  bool? get multiple => _$this._multiple;
  set multiple(bool? multiple) => _$this._multiple = multiple;

  bool? _mandatory;
  bool? get mandatory => _$this._mandatory;
  set mandatory(bool? mandatory) => _$this._mandatory = mandatory;

  ListBuilder<LwM2mInstance>? _instances;
  ListBuilder<LwM2mInstance> get instances =>
      _$this._instances ??= ListBuilder<LwM2mInstance>();
  set instances(ListBuilder<LwM2mInstance>? instances) =>
      _$this._instances = instances;

  LwM2mObjectBuilder() {
    LwM2mObject._defaults(this);
  }

  LwM2mObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _keyId = $v.keyId;
      _name = $v.name;
      _multiple = $v.multiple;
      _mandatory = $v.mandatory;
      _instances = $v.instances?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LwM2mObject other) {
    _$v = other as _$LwM2mObject;
  }

  @override
  void update(void Function(LwM2mObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LwM2mObject build() => _build();

  _$LwM2mObject _build() {
    _$LwM2mObject _$result;
    try {
      _$result =
          _$v ??
          _$LwM2mObject._(
            id: id,
            keyId: keyId,
            name: name,
            multiple: multiple,
            mandatory: mandatory,
            instances: _instances?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instances';
        _instances?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LwM2mObject',
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
