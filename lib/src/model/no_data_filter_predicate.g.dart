// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'no_data_filter_predicate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoDataFilterPredicate extends NoDataFilterPredicate {
  @override
  final AlarmConditionValueLong duration;
  @override
  final TimeUnit unit;
  @override
  final String type;

  factory _$NoDataFilterPredicate([
    void Function(NoDataFilterPredicateBuilder)? updates,
  ]) => (NoDataFilterPredicateBuilder()..update(updates))._build();

  _$NoDataFilterPredicate._({
    required this.duration,
    required this.unit,
    required this.type,
  }) : super._();
  @override
  NoDataFilterPredicate rebuild(
    void Function(NoDataFilterPredicateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NoDataFilterPredicateBuilder toBuilder() =>
      NoDataFilterPredicateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoDataFilterPredicate &&
        duration == other.duration &&
        unit == other.unit &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoDataFilterPredicate')
          ..add('duration', duration)
          ..add('unit', unit)
          ..add('type', type))
        .toString();
  }
}

class NoDataFilterPredicateBuilder
    implements
        Builder<NoDataFilterPredicate, NoDataFilterPredicateBuilder>,
        AlarmRuleKeyFilterPredicateBuilder {
  _$NoDataFilterPredicate? _$v;

  AlarmConditionValueLongBuilder? _duration;
  AlarmConditionValueLongBuilder get duration =>
      _$this._duration ??= AlarmConditionValueLongBuilder();
  set duration(covariant AlarmConditionValueLongBuilder? duration) =>
      _$this._duration = duration;

  TimeUnit? _unit;
  TimeUnit? get unit => _$this._unit;
  set unit(covariant TimeUnit? unit) => _$this._unit = unit;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  NoDataFilterPredicateBuilder() {
    NoDataFilterPredicate._defaults(this);
  }

  NoDataFilterPredicateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _duration = $v.duration.toBuilder();
      _unit = $v.unit;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant NoDataFilterPredicate other) {
    _$v = other as _$NoDataFilterPredicate;
  }

  @override
  void update(void Function(NoDataFilterPredicateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoDataFilterPredicate build() => _build();

  _$NoDataFilterPredicate _build() {
    _$NoDataFilterPredicate _$result;
    try {
      _$result =
          _$v ??
          _$NoDataFilterPredicate._(
            duration: duration.build(),
            unit: BuiltValueNullFieldError.checkNotNull(
              unit,
              r'NoDataFilterPredicate',
              'unit',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'NoDataFilterPredicate',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'duration';
        duration.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NoDataFilterPredicate',
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
