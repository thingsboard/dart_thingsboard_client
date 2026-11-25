// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complex_filter_predicate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplexFilterPredicate extends ComplexFilterPredicate {
  @override
  final BuiltList<KeyFilterPredicate>? predicates;
  @override
  final AlarmRuleComplexOperation? operation;
  @override
  final String type;

  factory _$ComplexFilterPredicate([
    void Function(ComplexFilterPredicateBuilder)? updates,
  ]) => (ComplexFilterPredicateBuilder()..update(updates))._build();

  _$ComplexFilterPredicate._({
    this.predicates,
    this.operation,
    required this.type,
  }) : super._();
  @override
  ComplexFilterPredicate rebuild(
    void Function(ComplexFilterPredicateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ComplexFilterPredicateBuilder toBuilder() =>
      ComplexFilterPredicateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplexFilterPredicate &&
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
    return (newBuiltValueToStringHelper(r'ComplexFilterPredicate')
          ..add('predicates', predicates)
          ..add('operation', operation)
          ..add('type', type))
        .toString();
  }
}

class ComplexFilterPredicateBuilder
    implements
        Builder<ComplexFilterPredicate, ComplexFilterPredicateBuilder>,
        KeyFilterPredicateBuilder {
  _$ComplexFilterPredicate? _$v;

  ListBuilder<KeyFilterPredicate>? _predicates;
  ListBuilder<KeyFilterPredicate> get predicates =>
      _$this._predicates ??= ListBuilder<KeyFilterPredicate>();
  set predicates(covariant ListBuilder<KeyFilterPredicate>? predicates) =>
      _$this._predicates = predicates;

  AlarmRuleComplexOperation? _operation;
  AlarmRuleComplexOperation? get operation => _$this._operation;
  set operation(covariant AlarmRuleComplexOperation? operation) =>
      _$this._operation = operation;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  ComplexFilterPredicateBuilder() {
    ComplexFilterPredicate._defaults(this);
  }

  ComplexFilterPredicateBuilder get _$this {
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
  void replace(covariant ComplexFilterPredicate other) {
    _$v = other as _$ComplexFilterPredicate;
  }

  @override
  void update(void Function(ComplexFilterPredicateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplexFilterPredicate build() => _build();

  _$ComplexFilterPredicate _build() {
    _$ComplexFilterPredicate _$result;
    try {
      _$result =
          _$v ??
          _$ComplexFilterPredicate._(
            predicates: _predicates?.build(),
            operation: operation,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ComplexFilterPredicate',
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
          r'ComplexFilterPredicate',
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
