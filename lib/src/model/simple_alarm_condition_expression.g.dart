// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_alarm_condition_expression.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleAlarmConditionExpression extends SimpleAlarmConditionExpression {
  @override
  final BuiltList<AlarmConditionFilter> filters;
  @override
  final AlarmRuleComplexOperation? operation;
  @override
  final String type;

  factory _$SimpleAlarmConditionExpression([
    void Function(SimpleAlarmConditionExpressionBuilder)? updates,
  ]) => (SimpleAlarmConditionExpressionBuilder()..update(updates))._build();

  _$SimpleAlarmConditionExpression._({
    required this.filters,
    this.operation,
    required this.type,
  }) : super._();
  @override
  SimpleAlarmConditionExpression rebuild(
    void Function(SimpleAlarmConditionExpressionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SimpleAlarmConditionExpressionBuilder toBuilder() =>
      SimpleAlarmConditionExpressionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleAlarmConditionExpression &&
        filters == other.filters &&
        operation == other.operation &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SimpleAlarmConditionExpression')
          ..add('filters', filters)
          ..add('operation', operation)
          ..add('type', type))
        .toString();
  }
}

class SimpleAlarmConditionExpressionBuilder
    implements
        Builder<
          SimpleAlarmConditionExpression,
          SimpleAlarmConditionExpressionBuilder
        >,
        AlarmConditionExpressionBuilder {
  _$SimpleAlarmConditionExpression? _$v;

  ListBuilder<AlarmConditionFilter>? _filters;
  ListBuilder<AlarmConditionFilter> get filters =>
      _$this._filters ??= ListBuilder<AlarmConditionFilter>();
  set filters(covariant ListBuilder<AlarmConditionFilter>? filters) =>
      _$this._filters = filters;

  AlarmRuleComplexOperation? _operation;
  AlarmRuleComplexOperation? get operation => _$this._operation;
  set operation(covariant AlarmRuleComplexOperation? operation) =>
      _$this._operation = operation;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  SimpleAlarmConditionExpressionBuilder() {
    SimpleAlarmConditionExpression._defaults(this);
  }

  SimpleAlarmConditionExpressionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters.toBuilder();
      _operation = $v.operation;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SimpleAlarmConditionExpression other) {
    _$v = other as _$SimpleAlarmConditionExpression;
  }

  @override
  void update(void Function(SimpleAlarmConditionExpressionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleAlarmConditionExpression build() => _build();

  _$SimpleAlarmConditionExpression _build() {
    _$SimpleAlarmConditionExpression _$result;
    try {
      _$result =
          _$v ??
          _$SimpleAlarmConditionExpression._(
            filters: filters.build(),
            operation: operation,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SimpleAlarmConditionExpression',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        filters.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SimpleAlarmConditionExpression',
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
