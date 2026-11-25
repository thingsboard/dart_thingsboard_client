// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_rule_key_filter_predicate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class AlarmRuleKeyFilterPredicateBuilder {
  void replace(AlarmRuleKeyFilterPredicate other);
  void update(void Function(AlarmRuleKeyFilterPredicateBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$AlarmRuleKeyFilterPredicate extends $AlarmRuleKeyFilterPredicate {
  @override
  final String type;

  factory _$$AlarmRuleKeyFilterPredicate([
    void Function($AlarmRuleKeyFilterPredicateBuilder)? updates,
  ]) => ($AlarmRuleKeyFilterPredicateBuilder()..update(updates))._build();

  _$$AlarmRuleKeyFilterPredicate._({required this.type}) : super._();
  @override
  $AlarmRuleKeyFilterPredicate rebuild(
    void Function($AlarmRuleKeyFilterPredicateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $AlarmRuleKeyFilterPredicateBuilder toBuilder() =>
      $AlarmRuleKeyFilterPredicateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $AlarmRuleKeyFilterPredicate && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$AlarmRuleKeyFilterPredicate',
    )..add('type', type)).toString();
  }
}

class $AlarmRuleKeyFilterPredicateBuilder
    implements
        Builder<
          $AlarmRuleKeyFilterPredicate,
          $AlarmRuleKeyFilterPredicateBuilder
        >,
        AlarmRuleKeyFilterPredicateBuilder {
  _$$AlarmRuleKeyFilterPredicate? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $AlarmRuleKeyFilterPredicateBuilder() {
    $AlarmRuleKeyFilterPredicate._defaults(this);
  }

  $AlarmRuleKeyFilterPredicateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $AlarmRuleKeyFilterPredicate other) {
    _$v = other as _$$AlarmRuleKeyFilterPredicate;
  }

  @override
  void update(void Function($AlarmRuleKeyFilterPredicateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AlarmRuleKeyFilterPredicate build() => _build();

  _$$AlarmRuleKeyFilterPredicate _build() {
    final _$result =
        _$v ??
        _$$AlarmRuleKeyFilterPredicate._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$AlarmRuleKeyFilterPredicate',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
