// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'any_time_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnyTimeSchedule extends AnyTimeSchedule {
  @override
  final String type;

  factory _$AnyTimeSchedule([void Function(AnyTimeScheduleBuilder)? updates]) =>
      (AnyTimeScheduleBuilder()..update(updates))._build();

  _$AnyTimeSchedule._({required this.type}) : super._();
  @override
  AnyTimeSchedule rebuild(void Function(AnyTimeScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnyTimeScheduleBuilder toBuilder() => AnyTimeScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnyTimeSchedule && type == other.type;
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
      r'AnyTimeSchedule',
    )..add('type', type)).toString();
  }
}

class AnyTimeScheduleBuilder
    implements
        Builder<AnyTimeSchedule, AnyTimeScheduleBuilder>,
        AlarmScheduleBuilder {
  _$AnyTimeSchedule? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AnyTimeScheduleBuilder() {
    AnyTimeSchedule._defaults(this);
  }

  AnyTimeScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AnyTimeSchedule other) {
    _$v = other as _$AnyTimeSchedule;
  }

  @override
  void update(void Function(AnyTimeScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnyTimeSchedule build() => _build();

  _$AnyTimeSchedule _build() {
    final _$result =
        _$v ??
        _$AnyTimeSchedule._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AnyTimeSchedule',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
