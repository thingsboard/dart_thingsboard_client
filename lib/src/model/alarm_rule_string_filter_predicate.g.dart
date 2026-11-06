// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_rule_string_filter_predicate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmRuleStringFilterPredicate extends AlarmRuleStringFilterPredicate {
  @override
  final bool? ignoreCase;
  @override
  final AlarmRuleStringOperation operation;
  @override
  final AlarmConditionValueString value;
  @override
  final String type;

  factory _$AlarmRuleStringFilterPredicate([
    void Function(AlarmRuleStringFilterPredicateBuilder)? updates,
  ]) => (AlarmRuleStringFilterPredicateBuilder()..update(updates))._build();

  _$AlarmRuleStringFilterPredicate._({
    this.ignoreCase,
    required this.operation,
    required this.value,
    required this.type,
  }) : super._();
  @override
  AlarmRuleStringFilterPredicate rebuild(
    void Function(AlarmRuleStringFilterPredicateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmRuleStringFilterPredicateBuilder toBuilder() =>
      AlarmRuleStringFilterPredicateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmRuleStringFilterPredicate &&
        ignoreCase == other.ignoreCase &&
        operation == other.operation &&
        value == other.value &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ignoreCase.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmRuleStringFilterPredicate')
          ..add('ignoreCase', ignoreCase)
          ..add('operation', operation)
          ..add('value', value)
          ..add('type', type))
        .toString();
  }
}

class AlarmRuleStringFilterPredicateBuilder
    implements
        Builder<
          AlarmRuleStringFilterPredicate,
          AlarmRuleStringFilterPredicateBuilder
        >,
        AlarmRuleKeyFilterPredicateBuilder {
  _$AlarmRuleStringFilterPredicate? _$v;

  bool? _ignoreCase;
  bool? get ignoreCase => _$this._ignoreCase;
  set ignoreCase(covariant bool? ignoreCase) => _$this._ignoreCase = ignoreCase;

  AlarmRuleStringOperation? _operation;
  AlarmRuleStringOperation? get operation => _$this._operation;
  set operation(covariant AlarmRuleStringOperation? operation) =>
      _$this._operation = operation;

  AlarmConditionValueStringBuilder? _value;
  AlarmConditionValueStringBuilder get value =>
      _$this._value ??= AlarmConditionValueStringBuilder();
  set value(covariant AlarmConditionValueStringBuilder? value) =>
      _$this._value = value;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AlarmRuleStringFilterPredicateBuilder() {
    AlarmRuleStringFilterPredicate._defaults(this);
  }

  AlarmRuleStringFilterPredicateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ignoreCase = $v.ignoreCase;
      _operation = $v.operation;
      _value = $v.value.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmRuleStringFilterPredicate other) {
    _$v = other as _$AlarmRuleStringFilterPredicate;
  }

  @override
  void update(void Function(AlarmRuleStringFilterPredicateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmRuleStringFilterPredicate build() => _build();

  _$AlarmRuleStringFilterPredicate _build() {
    _$AlarmRuleStringFilterPredicate _$result;
    try {
      _$result =
          _$v ??
          _$AlarmRuleStringFilterPredicate._(
            ignoreCase: ignoreCase,
            operation: BuiltValueNullFieldError.checkNotNull(
              operation,
              r'AlarmRuleStringFilterPredicate',
              'operation',
            ),
            value: value.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AlarmRuleStringFilterPredicate',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'value';
        value.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmRuleStringFilterPredicate',
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
