// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_descriptor_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComponentDescriptorId extends ComponentDescriptorId {
  @override
  final String id;

  factory _$ComponentDescriptorId([
    void Function(ComponentDescriptorIdBuilder)? updates,
  ]) => (ComponentDescriptorIdBuilder()..update(updates))._build();

  _$ComponentDescriptorId._({required this.id}) : super._();
  @override
  ComponentDescriptorId rebuild(
    void Function(ComponentDescriptorIdBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ComponentDescriptorIdBuilder toBuilder() =>
      ComponentDescriptorIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComponentDescriptorId && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ComponentDescriptorId',
    )..add('id', id)).toString();
  }
}

class ComponentDescriptorIdBuilder
    implements Builder<ComponentDescriptorId, ComponentDescriptorIdBuilder> {
  _$ComponentDescriptorId? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ComponentDescriptorIdBuilder() {
    ComponentDescriptorId._defaults(this);
  }

  ComponentDescriptorIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComponentDescriptorId other) {
    _$v = other as _$ComponentDescriptorId;
  }

  @override
  void update(void Function(ComponentDescriptorIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComponentDescriptorId build() => _build();

  _$ComponentDescriptorId _build() {
    final _$result =
        _$v ??
        _$ComponentDescriptorId._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'ComponentDescriptorId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
