// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propagation_calculated_field_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PropagationCalculatedFieldConfiguration
    extends PropagationCalculatedFieldConfiguration {
  @override
  final String? expression;
  @override
  final BuiltMap<String, Argument> arguments;
  @override
  final bool? applyExpressionToResolvedArguments;
  @override
  final RelationPathLevel relation;
  @override
  final Output? output;
  @override
  final String type;

  factory _$PropagationCalculatedFieldConfiguration([
    void Function(PropagationCalculatedFieldConfigurationBuilder)? updates,
  ]) => (PropagationCalculatedFieldConfigurationBuilder()..update(updates))
      ._build();

  _$PropagationCalculatedFieldConfiguration._({
    this.expression,
    required this.arguments,
    this.applyExpressionToResolvedArguments,
    required this.relation,
    this.output,
    required this.type,
  }) : super._();
  @override
  PropagationCalculatedFieldConfiguration rebuild(
    void Function(PropagationCalculatedFieldConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PropagationCalculatedFieldConfigurationBuilder toBuilder() =>
      PropagationCalculatedFieldConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropagationCalculatedFieldConfiguration &&
        expression == other.expression &&
        arguments == other.arguments &&
        applyExpressionToResolvedArguments ==
            other.applyExpressionToResolvedArguments &&
        relation == other.relation &&
        output == other.output &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, applyExpressionToResolvedArguments.hashCode);
    _$hash = $jc(_$hash, relation.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PropagationCalculatedFieldConfiguration',
          )
          ..add('expression', expression)
          ..add('arguments', arguments)
          ..add(
            'applyExpressionToResolvedArguments',
            applyExpressionToResolvedArguments,
          )
          ..add('relation', relation)
          ..add('output', output)
          ..add('type', type))
        .toString();
  }
}

class PropagationCalculatedFieldConfigurationBuilder
    implements
        Builder<
          PropagationCalculatedFieldConfiguration,
          PropagationCalculatedFieldConfigurationBuilder
        >,
        CalculatedFieldConfigurationBuilder {
  _$PropagationCalculatedFieldConfiguration? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  MapBuilder<String, Argument>? _arguments;
  MapBuilder<String, Argument> get arguments =>
      _$this._arguments ??= MapBuilder<String, Argument>();
  set arguments(covariant MapBuilder<String, Argument>? arguments) =>
      _$this._arguments = arguments;

  bool? _applyExpressionToResolvedArguments;
  bool? get applyExpressionToResolvedArguments =>
      _$this._applyExpressionToResolvedArguments;
  set applyExpressionToResolvedArguments(
    covariant bool? applyExpressionToResolvedArguments,
  ) => _$this._applyExpressionToResolvedArguments =
      applyExpressionToResolvedArguments;

  RelationPathLevelBuilder? _relation;
  RelationPathLevelBuilder get relation =>
      _$this._relation ??= RelationPathLevelBuilder();
  set relation(covariant RelationPathLevelBuilder? relation) =>
      _$this._relation = relation;

  Output? _output;
  Output? get output => _$this._output;
  set output(covariant Output? output) => _$this._output = output;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  PropagationCalculatedFieldConfigurationBuilder() {
    PropagationCalculatedFieldConfiguration._defaults(this);
  }

  PropagationCalculatedFieldConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _arguments = $v.arguments.toBuilder();
      _applyExpressionToResolvedArguments =
          $v.applyExpressionToResolvedArguments;
      _relation = $v.relation.toBuilder();
      _output = $v.output;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PropagationCalculatedFieldConfiguration other) {
    _$v = other as _$PropagationCalculatedFieldConfiguration;
  }

  @override
  void update(
    void Function(PropagationCalculatedFieldConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  PropagationCalculatedFieldConfiguration build() => _build();

  _$PropagationCalculatedFieldConfiguration _build() {
    _$PropagationCalculatedFieldConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$PropagationCalculatedFieldConfiguration._(
            expression: expression,
            arguments: arguments.build(),
            applyExpressionToResolvedArguments:
                applyExpressionToResolvedArguments,
            relation: relation.build(),
            output: output,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'PropagationCalculatedFieldConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'arguments';
        arguments.build();

        _$failedField = 'relation';
        relation.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PropagationCalculatedFieldConfiguration',
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
