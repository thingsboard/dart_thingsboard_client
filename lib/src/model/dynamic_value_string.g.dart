// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_value_string.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DynamicValueString extends DynamicValueString {
  @override
  final String? resolvedValue;
  @override
  final DynamicValueSourceType? sourceType;
  @override
  final String? sourceAttribute;
  @override
  final bool? inherit;

  factory _$DynamicValueString([
    void Function(DynamicValueStringBuilder)? updates,
  ]) => (DynamicValueStringBuilder()..update(updates))._build();

  _$DynamicValueString._({
    this.resolvedValue,
    this.sourceType,
    this.sourceAttribute,
    this.inherit,
  }) : super._();
  @override
  DynamicValueString rebuild(
    void Function(DynamicValueStringBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DynamicValueStringBuilder toBuilder() =>
      DynamicValueStringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DynamicValueString &&
        resolvedValue == other.resolvedValue &&
        sourceType == other.sourceType &&
        sourceAttribute == other.sourceAttribute &&
        inherit == other.inherit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resolvedValue.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, sourceAttribute.hashCode);
    _$hash = $jc(_$hash, inherit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DynamicValueString')
          ..add('resolvedValue', resolvedValue)
          ..add('sourceType', sourceType)
          ..add('sourceAttribute', sourceAttribute)
          ..add('inherit', inherit))
        .toString();
  }
}

class DynamicValueStringBuilder
    implements Builder<DynamicValueString, DynamicValueStringBuilder> {
  _$DynamicValueString? _$v;

  String? _resolvedValue;
  String? get resolvedValue => _$this._resolvedValue;
  set resolvedValue(String? resolvedValue) =>
      _$this._resolvedValue = resolvedValue;

  DynamicValueSourceType? _sourceType;
  DynamicValueSourceType? get sourceType => _$this._sourceType;
  set sourceType(DynamicValueSourceType? sourceType) =>
      _$this._sourceType = sourceType;

  String? _sourceAttribute;
  String? get sourceAttribute => _$this._sourceAttribute;
  set sourceAttribute(String? sourceAttribute) =>
      _$this._sourceAttribute = sourceAttribute;

  bool? _inherit;
  bool? get inherit => _$this._inherit;
  set inherit(bool? inherit) => _$this._inherit = inherit;

  DynamicValueStringBuilder() {
    DynamicValueString._defaults(this);
  }

  DynamicValueStringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resolvedValue = $v.resolvedValue;
      _sourceType = $v.sourceType;
      _sourceAttribute = $v.sourceAttribute;
      _inherit = $v.inherit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DynamicValueString other) {
    _$v = other as _$DynamicValueString;
  }

  @override
  void update(void Function(DynamicValueStringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DynamicValueString build() => _build();

  _$DynamicValueString _build() {
    final _$result =
        _$v ??
        _$DynamicValueString._(
          resolvedValue: resolvedValue,
          sourceType: sourceType,
          sourceAttribute: sourceAttribute,
          inherit: inherit,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
