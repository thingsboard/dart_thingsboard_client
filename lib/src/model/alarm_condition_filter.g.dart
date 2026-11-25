// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_condition_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmConditionFilter extends AlarmConditionFilter {
  @override
  final String argument;
  @override
  final EntityKeyValueType valueType;
  @override
  final AlarmRuleComplexOperation? operation;
  @override
  final BuiltList<AlarmRuleKeyFilterPredicate> predicates;

  factory _$AlarmConditionFilter([
    void Function(AlarmConditionFilterBuilder)? updates,
  ]) => (AlarmConditionFilterBuilder()..update(updates))._build();

  _$AlarmConditionFilter._({
    required this.argument,
    required this.valueType,
    this.operation,
    required this.predicates,
  }) : super._();
  @override
  AlarmConditionFilter rebuild(
    void Function(AlarmConditionFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmConditionFilterBuilder toBuilder() =>
      AlarmConditionFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmConditionFilter &&
        argument == other.argument &&
        valueType == other.valueType &&
        operation == other.operation &&
        predicates == other.predicates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, argument.hashCode);
    _$hash = $jc(_$hash, valueType.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, predicates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmConditionFilter')
          ..add('argument', argument)
          ..add('valueType', valueType)
          ..add('operation', operation)
          ..add('predicates', predicates))
        .toString();
  }
}

class AlarmConditionFilterBuilder
    implements Builder<AlarmConditionFilter, AlarmConditionFilterBuilder> {
  _$AlarmConditionFilter? _$v;

  String? _argument;
  String? get argument => _$this._argument;
  set argument(String? argument) => _$this._argument = argument;

  EntityKeyValueType? _valueType;
  EntityKeyValueType? get valueType => _$this._valueType;
  set valueType(EntityKeyValueType? valueType) => _$this._valueType = valueType;

  AlarmRuleComplexOperation? _operation;
  AlarmRuleComplexOperation? get operation => _$this._operation;
  set operation(AlarmRuleComplexOperation? operation) =>
      _$this._operation = operation;

  ListBuilder<AlarmRuleKeyFilterPredicate>? _predicates;
  ListBuilder<AlarmRuleKeyFilterPredicate> get predicates =>
      _$this._predicates ??= ListBuilder<AlarmRuleKeyFilterPredicate>();
  set predicates(ListBuilder<AlarmRuleKeyFilterPredicate>? predicates) =>
      _$this._predicates = predicates;

  AlarmConditionFilterBuilder() {
    AlarmConditionFilter._defaults(this);
  }

  AlarmConditionFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _argument = $v.argument;
      _valueType = $v.valueType;
      _operation = $v.operation;
      _predicates = $v.predicates.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmConditionFilter other) {
    _$v = other as _$AlarmConditionFilter;
  }

  @override
  void update(void Function(AlarmConditionFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmConditionFilter build() => _build();

  _$AlarmConditionFilter _build() {
    _$AlarmConditionFilter _$result;
    try {
      _$result =
          _$v ??
          _$AlarmConditionFilter._(
            argument: BuiltValueNullFieldError.checkNotNull(
              argument,
              r'AlarmConditionFilter',
              'argument',
            ),
            valueType: BuiltValueNullFieldError.checkNotNull(
              valueType,
              r'AlarmConditionFilter',
              'valueType',
            ),
            operation: operation,
            predicates: predicates.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'predicates';
        predicates.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmConditionFilter',
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
