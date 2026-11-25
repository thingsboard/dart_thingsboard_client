// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'script_calculated_field_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScriptCalculatedFieldConfiguration
    extends ScriptCalculatedFieldConfiguration {
  @override
  final String? expression;
  @override
  final BuiltMap<String, Argument> arguments;
  @override
  final Output? output;
  @override
  final String type;

  factory _$ScriptCalculatedFieldConfiguration([
    void Function(ScriptCalculatedFieldConfigurationBuilder)? updates,
  ]) => (ScriptCalculatedFieldConfigurationBuilder()..update(updates))._build();

  _$ScriptCalculatedFieldConfiguration._({
    this.expression,
    required this.arguments,
    this.output,
    required this.type,
  }) : super._();
  @override
  ScriptCalculatedFieldConfiguration rebuild(
    void Function(ScriptCalculatedFieldConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ScriptCalculatedFieldConfigurationBuilder toBuilder() =>
      ScriptCalculatedFieldConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScriptCalculatedFieldConfiguration &&
        expression == other.expression &&
        arguments == other.arguments &&
        output == other.output &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScriptCalculatedFieldConfiguration')
          ..add('expression', expression)
          ..add('arguments', arguments)
          ..add('output', output)
          ..add('type', type))
        .toString();
  }
}

class ScriptCalculatedFieldConfigurationBuilder
    implements
        Builder<
          ScriptCalculatedFieldConfiguration,
          ScriptCalculatedFieldConfigurationBuilder
        >,
        CalculatedFieldConfigurationBuilder {
  _$ScriptCalculatedFieldConfiguration? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  MapBuilder<String, Argument>? _arguments;
  MapBuilder<String, Argument> get arguments =>
      _$this._arguments ??= MapBuilder<String, Argument>();
  set arguments(covariant MapBuilder<String, Argument>? arguments) =>
      _$this._arguments = arguments;

  Output? _output;
  Output? get output => _$this._output;
  set output(covariant Output? output) => _$this._output = output;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  ScriptCalculatedFieldConfigurationBuilder() {
    ScriptCalculatedFieldConfiguration._defaults(this);
  }

  ScriptCalculatedFieldConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _arguments = $v.arguments.toBuilder();
      _output = $v.output;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ScriptCalculatedFieldConfiguration other) {
    _$v = other as _$ScriptCalculatedFieldConfiguration;
  }

  @override
  void update(
    void Function(ScriptCalculatedFieldConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ScriptCalculatedFieldConfiguration build() => _build();

  _$ScriptCalculatedFieldConfiguration _build() {
    _$ScriptCalculatedFieldConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$ScriptCalculatedFieldConfiguration._(
            expression: expression,
            arguments: arguments.build(),
            output: output,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ScriptCalculatedFieldConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'arguments';
        arguments.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ScriptCalculatedFieldConfiguration',
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
