// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class AgentAppConfigBuilder {
  void replace(AgentAppConfig other);
  void update(void Function(AgentAppConfigBuilder) updates);
  ListBuilder<AgentAppArgument> get arguments;
  set arguments(ListBuilder<AgentAppArgument>? arguments);

  String? get edgeRoutingKey;
  set edgeRoutingKey(String? edgeRoutingKey);

  AgentAppConfigType? get type;
  set type(AgentAppConfigType? type);
}

class _$$AgentAppConfig extends $AgentAppConfig {
  @override
  final BuiltList<AgentAppArgument>? arguments;
  @override
  final String? edgeRoutingKey;
  @override
  final AgentAppConfigType? type;

  factory _$$AgentAppConfig([void Function($AgentAppConfigBuilder)? updates]) =>
      ($AgentAppConfigBuilder()..update(updates))._build();

  _$$AgentAppConfig._({this.arguments, this.edgeRoutingKey, this.type})
    : super._();
  @override
  $AgentAppConfig rebuild(void Function($AgentAppConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $AgentAppConfigBuilder toBuilder() => $AgentAppConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $AgentAppConfig &&
        arguments == other.arguments &&
        edgeRoutingKey == other.edgeRoutingKey &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, edgeRoutingKey.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$AgentAppConfig')
          ..add('arguments', arguments)
          ..add('edgeRoutingKey', edgeRoutingKey)
          ..add('type', type))
        .toString();
  }
}

class $AgentAppConfigBuilder
    implements
        Builder<$AgentAppConfig, $AgentAppConfigBuilder>,
        AgentAppConfigBuilder {
  _$$AgentAppConfig? _$v;

  ListBuilder<AgentAppArgument>? _arguments;
  ListBuilder<AgentAppArgument> get arguments =>
      _$this._arguments ??= ListBuilder<AgentAppArgument>();
  set arguments(covariant ListBuilder<AgentAppArgument>? arguments) =>
      _$this._arguments = arguments;

  String? _edgeRoutingKey;
  String? get edgeRoutingKey => _$this._edgeRoutingKey;
  set edgeRoutingKey(covariant String? edgeRoutingKey) =>
      _$this._edgeRoutingKey = edgeRoutingKey;

  AgentAppConfigType? _type;
  AgentAppConfigType? get type => _$this._type;
  set type(covariant AgentAppConfigType? type) => _$this._type = type;

  $AgentAppConfigBuilder() {
    $AgentAppConfig._defaults(this);
  }

  $AgentAppConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arguments = $v.arguments?.toBuilder();
      _edgeRoutingKey = $v.edgeRoutingKey;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $AgentAppConfig other) {
    _$v = other as _$$AgentAppConfig;
  }

  @override
  void update(void Function($AgentAppConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AgentAppConfig build() => _build();

  _$$AgentAppConfig _build() {
    _$$AgentAppConfig _$result;
    try {
      _$result =
          _$v ??
          _$$AgentAppConfig._(
            arguments: _arguments?.build(),
            edgeRoutingKey: edgeRoutingKey,
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'arguments';
        _arguments?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'$AgentAppConfig',
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
