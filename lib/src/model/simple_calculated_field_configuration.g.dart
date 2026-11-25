// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_calculated_field_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleCalculatedFieldConfiguration
    extends SimpleCalculatedFieldConfiguration {
  @override
  final String? expression;
  @override
  final BuiltMap<String, Argument> arguments;
  @override
  final bool? useLatestTs;
  @override
  final Output? output;
  @override
  final String type;

  factory _$SimpleCalculatedFieldConfiguration([
    void Function(SimpleCalculatedFieldConfigurationBuilder)? updates,
  ]) => (SimpleCalculatedFieldConfigurationBuilder()..update(updates))._build();

  _$SimpleCalculatedFieldConfiguration._({
    this.expression,
    required this.arguments,
    this.useLatestTs,
    this.output,
    required this.type,
  }) : super._();
  @override
  SimpleCalculatedFieldConfiguration rebuild(
    void Function(SimpleCalculatedFieldConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SimpleCalculatedFieldConfigurationBuilder toBuilder() =>
      SimpleCalculatedFieldConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleCalculatedFieldConfiguration &&
        expression == other.expression &&
        arguments == other.arguments &&
        useLatestTs == other.useLatestTs &&
        output == other.output &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, useLatestTs.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SimpleCalculatedFieldConfiguration')
          ..add('expression', expression)
          ..add('arguments', arguments)
          ..add('useLatestTs', useLatestTs)
          ..add('output', output)
          ..add('type', type))
        .toString();
  }
}

class SimpleCalculatedFieldConfigurationBuilder
    implements
        Builder<
          SimpleCalculatedFieldConfiguration,
          SimpleCalculatedFieldConfigurationBuilder
        >,
        CalculatedFieldConfigurationBuilder {
  _$SimpleCalculatedFieldConfiguration? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  MapBuilder<String, Argument>? _arguments;
  MapBuilder<String, Argument> get arguments =>
      _$this._arguments ??= MapBuilder<String, Argument>();
  set arguments(covariant MapBuilder<String, Argument>? arguments) =>
      _$this._arguments = arguments;

  bool? _useLatestTs;
  bool? get useLatestTs => _$this._useLatestTs;
  set useLatestTs(covariant bool? useLatestTs) =>
      _$this._useLatestTs = useLatestTs;

  Output? _output;
  Output? get output => _$this._output;
  set output(covariant Output? output) => _$this._output = output;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  SimpleCalculatedFieldConfigurationBuilder() {
    SimpleCalculatedFieldConfiguration._defaults(this);
  }

  SimpleCalculatedFieldConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _arguments = $v.arguments.toBuilder();
      _useLatestTs = $v.useLatestTs;
      _output = $v.output;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SimpleCalculatedFieldConfiguration other) {
    _$v = other as _$SimpleCalculatedFieldConfiguration;
  }

  @override
  void update(
    void Function(SimpleCalculatedFieldConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SimpleCalculatedFieldConfiguration build() => _build();

  _$SimpleCalculatedFieldConfiguration _build() {
    _$SimpleCalculatedFieldConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$SimpleCalculatedFieldConfiguration._(
            expression: expression,
            arguments: arguments.build(),
            useLatestTs: useLatestTs,
            output: output,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SimpleCalculatedFieldConfiguration',
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
          r'SimpleCalculatedFieldConfiguration',
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
