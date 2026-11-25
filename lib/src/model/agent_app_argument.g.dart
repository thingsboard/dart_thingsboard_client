// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_argument.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppArgument extends AgentAppArgument {
  @override
  final String? name;
  @override
  final AgentAppArgumentSource? sourceType;
  @override
  final EntityId? sourceEntityId;
  @override
  final AgentAppArgumentValueType? valueType;
  @override
  final AttributeScope? scope;
  @override
  final String? key;
  @override
  final String? defaultValue;
  @override
  final AgentAppArgumentFormat? format;

  factory _$AgentAppArgument([
    void Function(AgentAppArgumentBuilder)? updates,
  ]) => (AgentAppArgumentBuilder()..update(updates))._build();

  _$AgentAppArgument._({
    this.name,
    this.sourceType,
    this.sourceEntityId,
    this.valueType,
    this.scope,
    this.key,
    this.defaultValue,
    this.format,
  }) : super._();
  @override
  AgentAppArgument rebuild(void Function(AgentAppArgumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentAppArgumentBuilder toBuilder() =>
      AgentAppArgumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppArgument &&
        name == other.name &&
        sourceType == other.sourceType &&
        sourceEntityId == other.sourceEntityId &&
        valueType == other.valueType &&
        scope == other.scope &&
        key == other.key &&
        defaultValue == other.defaultValue &&
        format == other.format;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, sourceEntityId.hashCode);
    _$hash = $jc(_$hash, valueType.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentAppArgument')
          ..add('name', name)
          ..add('sourceType', sourceType)
          ..add('sourceEntityId', sourceEntityId)
          ..add('valueType', valueType)
          ..add('scope', scope)
          ..add('key', key)
          ..add('defaultValue', defaultValue)
          ..add('format', format))
        .toString();
  }
}

class AgentAppArgumentBuilder
    implements Builder<AgentAppArgument, AgentAppArgumentBuilder> {
  _$AgentAppArgument? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AgentAppArgumentSource? _sourceType;
  AgentAppArgumentSource? get sourceType => _$this._sourceType;
  set sourceType(AgentAppArgumentSource? sourceType) =>
      _$this._sourceType = sourceType;

  EntityId? _sourceEntityId;
  EntityId? get sourceEntityId => _$this._sourceEntityId;
  set sourceEntityId(EntityId? sourceEntityId) =>
      _$this._sourceEntityId = sourceEntityId;

  AgentAppArgumentValueType? _valueType;
  AgentAppArgumentValueType? get valueType => _$this._valueType;
  set valueType(AgentAppArgumentValueType? valueType) =>
      _$this._valueType = valueType;

  AttributeScope? _scope;
  AttributeScope? get scope => _$this._scope;
  set scope(AttributeScope? scope) => _$this._scope = scope;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _defaultValue;
  String? get defaultValue => _$this._defaultValue;
  set defaultValue(String? defaultValue) => _$this._defaultValue = defaultValue;

  AgentAppArgumentFormat? _format;
  AgentAppArgumentFormat? get format => _$this._format;
  set format(AgentAppArgumentFormat? format) => _$this._format = format;

  AgentAppArgumentBuilder() {
    AgentAppArgument._defaults(this);
  }

  AgentAppArgumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _sourceType = $v.sourceType;
      _sourceEntityId = $v.sourceEntityId;
      _valueType = $v.valueType;
      _scope = $v.scope;
      _key = $v.key;
      _defaultValue = $v.defaultValue;
      _format = $v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentAppArgument other) {
    _$v = other as _$AgentAppArgument;
  }

  @override
  void update(void Function(AgentAppArgumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppArgument build() => _build();

  _$AgentAppArgument _build() {
    final _$result =
        _$v ??
        _$AgentAppArgument._(
          name: name,
          sourceType: sourceType,
          sourceEntityId: sourceEntityId,
          valueType: valueType,
          scope: scope,
          key: key,
          defaultValue: defaultValue,
          format: format,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
