// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docker_compose_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DockerComposeConfig extends DockerComposeConfig {
  @override
  final String? composeType;
  @override
  final JsonObject? compose;
  @override
  final BuiltList<AgentAppArgument>? arguments;
  @override
  final String? edgeRoutingKey;
  @override
  final AgentAppConfigType? type;

  factory _$DockerComposeConfig([
    void Function(DockerComposeConfigBuilder)? updates,
  ]) => (DockerComposeConfigBuilder()..update(updates))._build();

  _$DockerComposeConfig._({
    this.composeType,
    this.compose,
    this.arguments,
    this.edgeRoutingKey,
    this.type,
  }) : super._();
  @override
  DockerComposeConfig rebuild(
    void Function(DockerComposeConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DockerComposeConfigBuilder toBuilder() =>
      DockerComposeConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DockerComposeConfig &&
        composeType == other.composeType &&
        compose == other.compose &&
        arguments == other.arguments &&
        edgeRoutingKey == other.edgeRoutingKey &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, composeType.hashCode);
    _$hash = $jc(_$hash, compose.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, edgeRoutingKey.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DockerComposeConfig')
          ..add('composeType', composeType)
          ..add('compose', compose)
          ..add('arguments', arguments)
          ..add('edgeRoutingKey', edgeRoutingKey)
          ..add('type', type))
        .toString();
  }
}

class DockerComposeConfigBuilder
    implements
        Builder<DockerComposeConfig, DockerComposeConfigBuilder>,
        AgentAppConfigBuilder {
  _$DockerComposeConfig? _$v;

  String? _composeType;
  String? get composeType => _$this._composeType;
  set composeType(covariant String? composeType) =>
      _$this._composeType = composeType;

  JsonObject? _compose;
  JsonObject? get compose => _$this._compose;
  set compose(covariant JsonObject? compose) => _$this._compose = compose;

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

  DockerComposeConfigBuilder() {
    DockerComposeConfig._defaults(this);
  }

  DockerComposeConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _composeType = $v.composeType;
      _compose = $v.compose;
      _arguments = $v.arguments?.toBuilder();
      _edgeRoutingKey = $v.edgeRoutingKey;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DockerComposeConfig other) {
    _$v = other as _$DockerComposeConfig;
  }

  @override
  void update(void Function(DockerComposeConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DockerComposeConfig build() => _build();

  _$DockerComposeConfig _build() {
    _$DockerComposeConfig _$result;
    try {
      _$result =
          _$v ??
          _$DockerComposeConfig._(
            composeType: composeType,
            compose: compose,
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
          r'DockerComposeConfig',
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
