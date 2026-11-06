// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_filter_predicate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StringFilterPredicate extends StringFilterPredicate {
  @override
  final bool? ignoreCase;
  @override
  final StringOperation? operation;
  @override
  final FilterPredicateValueString? value;
  @override
  final String type;

  factory _$StringFilterPredicate([
    void Function(StringFilterPredicateBuilder)? updates,
  ]) => (StringFilterPredicateBuilder()..update(updates))._build();

  _$StringFilterPredicate._({
    this.ignoreCase,
    this.operation,
    this.value,
    required this.type,
  }) : super._();
  @override
  StringFilterPredicate rebuild(
    void Function(StringFilterPredicateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StringFilterPredicateBuilder toBuilder() =>
      StringFilterPredicateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringFilterPredicate &&
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
    return (newBuiltValueToStringHelper(r'StringFilterPredicate')
          ..add('ignoreCase', ignoreCase)
          ..add('operation', operation)
          ..add('value', value)
          ..add('type', type))
        .toString();
  }
}

class StringFilterPredicateBuilder
    implements
        Builder<StringFilterPredicate, StringFilterPredicateBuilder>,
        KeyFilterPredicateBuilder {
  _$StringFilterPredicate? _$v;

  bool? _ignoreCase;
  bool? get ignoreCase => _$this._ignoreCase;
  set ignoreCase(covariant bool? ignoreCase) => _$this._ignoreCase = ignoreCase;

  StringOperation? _operation;
  StringOperation? get operation => _$this._operation;
  set operation(covariant StringOperation? operation) =>
      _$this._operation = operation;

  FilterPredicateValueStringBuilder? _value;
  FilterPredicateValueStringBuilder get value =>
      _$this._value ??= FilterPredicateValueStringBuilder();
  set value(covariant FilterPredicateValueStringBuilder? value) =>
      _$this._value = value;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  StringFilterPredicateBuilder() {
    StringFilterPredicate._defaults(this);
  }

  StringFilterPredicateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ignoreCase = $v.ignoreCase;
      _operation = $v.operation;
      _value = $v.value?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant StringFilterPredicate other) {
    _$v = other as _$StringFilterPredicate;
  }

  @override
  void update(void Function(StringFilterPredicateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StringFilterPredicate build() => _build();

  _$StringFilterPredicate _build() {
    _$StringFilterPredicate _$result;
    try {
      _$result =
          _$v ??
          _$StringFilterPredicate._(
            ignoreCase: ignoreCase,
            operation: operation,
            value: _value?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'StringFilterPredicate',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'value';
        _value?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StringFilterPredicate',
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
