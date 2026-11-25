// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_condition_expression.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class AlarmConditionExpressionBuilder {
  void replace(AlarmConditionExpression other);
  void update(void Function(AlarmConditionExpressionBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$AlarmConditionExpression extends $AlarmConditionExpression {
  @override
  final String type;

  factory _$$AlarmConditionExpression([
    void Function($AlarmConditionExpressionBuilder)? updates,
  ]) => ($AlarmConditionExpressionBuilder()..update(updates))._build();

  _$$AlarmConditionExpression._({required this.type}) : super._();
  @override
  $AlarmConditionExpression rebuild(
    void Function($AlarmConditionExpressionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $AlarmConditionExpressionBuilder toBuilder() =>
      $AlarmConditionExpressionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $AlarmConditionExpression && type == other.type;
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
      r'$AlarmConditionExpression',
    )..add('type', type)).toString();
  }
}

class $AlarmConditionExpressionBuilder
    implements
        Builder<$AlarmConditionExpression, $AlarmConditionExpressionBuilder>,
        AlarmConditionExpressionBuilder {
  _$$AlarmConditionExpression? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $AlarmConditionExpressionBuilder() {
    $AlarmConditionExpression._defaults(this);
  }

  $AlarmConditionExpressionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $AlarmConditionExpression other) {
    _$v = other as _$$AlarmConditionExpression;
  }

  @override
  void update(void Function($AlarmConditionExpressionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AlarmConditionExpression build() => _build();

  _$$AlarmConditionExpression _build() {
    final _$result =
        _$v ??
        _$$AlarmConditionExpression._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$AlarmConditionExpression',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
