// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_value_double.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DynamicValueDouble extends DynamicValueDouble {
  @override
  final double? resolvedValue;
  @override
  final DynamicValueSourceType? sourceType;
  @override
  final String? sourceAttribute;
  @override
  final bool? inherit;

  factory _$DynamicValueDouble([
    void Function(DynamicValueDoubleBuilder)? updates,
  ]) => (DynamicValueDoubleBuilder()..update(updates))._build();

  _$DynamicValueDouble._({
    this.resolvedValue,
    this.sourceType,
    this.sourceAttribute,
    this.inherit,
  }) : super._();
  @override
  DynamicValueDouble rebuild(
    void Function(DynamicValueDoubleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DynamicValueDoubleBuilder toBuilder() =>
      DynamicValueDoubleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DynamicValueDouble &&
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
    return (newBuiltValueToStringHelper(r'DynamicValueDouble')
          ..add('resolvedValue', resolvedValue)
          ..add('sourceType', sourceType)
          ..add('sourceAttribute', sourceAttribute)
          ..add('inherit', inherit))
        .toString();
  }
}

class DynamicValueDoubleBuilder
    implements Builder<DynamicValueDouble, DynamicValueDoubleBuilder> {
  _$DynamicValueDouble? _$v;

  double? _resolvedValue;
  double? get resolvedValue => _$this._resolvedValue;
  set resolvedValue(double? resolvedValue) =>
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

  DynamicValueDoubleBuilder() {
    DynamicValueDouble._defaults(this);
  }

  DynamicValueDoubleBuilder get _$this {
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
  void replace(DynamicValueDouble other) {
    _$v = other as _$DynamicValueDouble;
  }

  @override
  void update(void Function(DynamicValueDoubleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DynamicValueDouble build() => _build();

  _$DynamicValueDouble _build() {
    final _$result =
        _$v ??
        _$DynamicValueDouble._(
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
