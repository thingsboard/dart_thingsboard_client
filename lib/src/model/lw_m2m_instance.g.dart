// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lw_m2m_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LwM2mInstance extends LwM2mInstance {
  @override
  final int? id;
  @override
  final BuiltList<LwM2mResourceObserve>? resources;

  factory _$LwM2mInstance([void Function(LwM2mInstanceBuilder)? updates]) =>
      (LwM2mInstanceBuilder()..update(updates))._build();

  _$LwM2mInstance._({this.id, this.resources}) : super._();
  @override
  LwM2mInstance rebuild(void Function(LwM2mInstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LwM2mInstanceBuilder toBuilder() => LwM2mInstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LwM2mInstance &&
        id == other.id &&
        resources == other.resources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LwM2mInstance')
          ..add('id', id)
          ..add('resources', resources))
        .toString();
  }
}

class LwM2mInstanceBuilder
    implements Builder<LwM2mInstance, LwM2mInstanceBuilder> {
  _$LwM2mInstance? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<LwM2mResourceObserve>? _resources;
  ListBuilder<LwM2mResourceObserve> get resources =>
      _$this._resources ??= ListBuilder<LwM2mResourceObserve>();
  set resources(ListBuilder<LwM2mResourceObserve>? resources) =>
      _$this._resources = resources;

  LwM2mInstanceBuilder() {
    LwM2mInstance._defaults(this);
  }

  LwM2mInstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _resources = $v.resources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LwM2mInstance other) {
    _$v = other as _$LwM2mInstance;
  }

  @override
  void update(void Function(LwM2mInstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LwM2mInstance build() => _build();

  _$LwM2mInstance _build() {
    _$LwM2mInstance _$result;
    try {
      _$result =
          _$v ?? _$LwM2mInstance._(id: id, resources: _resources?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resources';
        _resources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LwM2mInstance',
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
