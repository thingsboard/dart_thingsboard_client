// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_rule_complex_filter_predicate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmRuleComplexFilterPredicate
    extends AlarmRuleComplexFilterPredicate {
  @override
  final BuiltList<AlarmRuleKeyFilterPredicate>? predicates;
  @override
  final AlarmRuleComplexOperation? operation;
  @override
  final String type;

  factory _$AlarmRuleComplexFilterPredicate([
    void Function(AlarmRuleComplexFilterPredicateBuilder)? updates,
  ]) => (AlarmRuleComplexFilterPredicateBuilder()..update(updates))._build();

  _$AlarmRuleComplexFilterPredicate._({
    this.predicates,
    this.operation,
    required this.type,
  }) : super._();
  @override
  AlarmRuleComplexFilterPredicate rebuild(
    void Function(AlarmRuleComplexFilterPredicateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmRuleComplexFilterPredicateBuilder toBuilder() =>
      AlarmRuleComplexFilterPredicateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmRuleComplexFilterPredicate &&
        predicates == other.predicates &&
        operation == other.operation &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, predicates.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmRuleComplexFilterPredicate')
          ..add('predicates', predicates)
          ..add('operation', operation)
          ..add('type', type))
        .toString();
  }
}

class AlarmRuleComplexFilterPredicateBuilder
    implements
        Builder<
          AlarmRuleComplexFilterPredicate,
          AlarmRuleComplexFilterPredicateBuilder
        >,
        AlarmRuleKeyFilterPredicateBuilder {
  _$AlarmRuleComplexFilterPredicate? _$v;

  ListBuilder<AlarmRuleKeyFilterPredicate>? _predicates;
  ListBuilder<AlarmRuleKeyFilterPredicate> get predicates =>
      _$this._predicates ??= ListBuilder<AlarmRuleKeyFilterPredicate>();
  set predicates(
    covariant ListBuilder<AlarmRuleKeyFilterPredicate>? predicates,
  ) => _$this._predicates = predicates;

  AlarmRuleComplexOperation? _operation;
  AlarmRuleComplexOperation? get operation => _$this._operation;
  set operation(covariant AlarmRuleComplexOperation? operation) =>
      _$this._operation = operation;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AlarmRuleComplexFilterPredicateBuilder() {
    AlarmRuleComplexFilterPredicate._defaults(this);
  }

  AlarmRuleComplexFilterPredicateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _predicates = $v.predicates?.toBuilder();
      _operation = $v.operation;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmRuleComplexFilterPredicate other) {
    _$v = other as _$AlarmRuleComplexFilterPredicate;
  }

  @override
  void update(void Function(AlarmRuleComplexFilterPredicateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmRuleComplexFilterPredicate build() => _build();

  _$AlarmRuleComplexFilterPredicate _build() {
    _$AlarmRuleComplexFilterPredicate _$result;
    try {
      _$result =
          _$v ??
          _$AlarmRuleComplexFilterPredicate._(
            predicates: _predicates?.build(),
            operation: operation,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AlarmRuleComplexFilterPredicate',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'predicates';
        _predicates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmRuleComplexFilterPredicate',
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
