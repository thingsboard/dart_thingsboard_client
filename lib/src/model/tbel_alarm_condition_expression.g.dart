// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tbel_alarm_condition_expression.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TbelAlarmConditionExpression extends TbelAlarmConditionExpression {
  @override
  final String expression;
  @override
  final String type;

  factory _$TbelAlarmConditionExpression([
    void Function(TbelAlarmConditionExpressionBuilder)? updates,
  ]) => (TbelAlarmConditionExpressionBuilder()..update(updates))._build();

  _$TbelAlarmConditionExpression._({
    required this.expression,
    required this.type,
  }) : super._();
  @override
  TbelAlarmConditionExpression rebuild(
    void Function(TbelAlarmConditionExpressionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TbelAlarmConditionExpressionBuilder toBuilder() =>
      TbelAlarmConditionExpressionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TbelAlarmConditionExpression &&
        expression == other.expression &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TbelAlarmConditionExpression')
          ..add('expression', expression)
          ..add('type', type))
        .toString();
  }
}

class TbelAlarmConditionExpressionBuilder
    implements
        Builder<
          TbelAlarmConditionExpression,
          TbelAlarmConditionExpressionBuilder
        >,
        AlarmConditionExpressionBuilder {
  _$TbelAlarmConditionExpression? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  TbelAlarmConditionExpressionBuilder() {
    TbelAlarmConditionExpression._defaults(this);
  }

  TbelAlarmConditionExpressionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TbelAlarmConditionExpression other) {
    _$v = other as _$TbelAlarmConditionExpression;
  }

  @override
  void update(void Function(TbelAlarmConditionExpressionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TbelAlarmConditionExpression build() => _build();

  _$TbelAlarmConditionExpression _build() {
    final _$result =
        _$v ??
        _$TbelAlarmConditionExpression._(
          expression: BuiltValueNullFieldError.checkNotNull(
            expression,
            r'TbelAlarmConditionExpression',
            'expression',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'TbelAlarmConditionExpression',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
