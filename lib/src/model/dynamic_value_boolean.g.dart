// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_value_boolean.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DynamicValueBoolean extends DynamicValueBoolean {
  @override
  final bool? resolvedValue;
  @override
  final DynamicValueSourceType? sourceType;
  @override
  final String? sourceAttribute;
  @override
  final bool? inherit;

  factory _$DynamicValueBoolean([
    void Function(DynamicValueBooleanBuilder)? updates,
  ]) => (DynamicValueBooleanBuilder()..update(updates))._build();

  _$DynamicValueBoolean._({
    this.resolvedValue,
    this.sourceType,
    this.sourceAttribute,
    this.inherit,
  }) : super._();
  @override
  DynamicValueBoolean rebuild(
    void Function(DynamicValueBooleanBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DynamicValueBooleanBuilder toBuilder() =>
      DynamicValueBooleanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DynamicValueBoolean &&
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
    return (newBuiltValueToStringHelper(r'DynamicValueBoolean')
          ..add('resolvedValue', resolvedValue)
          ..add('sourceType', sourceType)
          ..add('sourceAttribute', sourceAttribute)
          ..add('inherit', inherit))
        .toString();
  }
}

class DynamicValueBooleanBuilder
    implements Builder<DynamicValueBoolean, DynamicValueBooleanBuilder> {
  _$DynamicValueBoolean? _$v;

  bool? _resolvedValue;
  bool? get resolvedValue => _$this._resolvedValue;
  set resolvedValue(bool? resolvedValue) =>
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

  DynamicValueBooleanBuilder() {
    DynamicValueBoolean._defaults(this);
  }

  DynamicValueBooleanBuilder get _$this {
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
  void replace(DynamicValueBoolean other) {
    _$v = other as _$DynamicValueBoolean;
  }

  @override
  void update(void Function(DynamicValueBooleanBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DynamicValueBoolean build() => _build();

  _$DynamicValueBoolean _build() {
    final _$result =
        _$v ??
        _$DynamicValueBoolean._(
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
