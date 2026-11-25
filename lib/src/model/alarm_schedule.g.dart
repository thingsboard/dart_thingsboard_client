// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class AlarmScheduleBuilder {
  void replace(AlarmSchedule other);
  void update(void Function(AlarmScheduleBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$AlarmSchedule extends $AlarmSchedule {
  @override
  final String type;

  factory _$$AlarmSchedule([void Function($AlarmScheduleBuilder)? updates]) =>
      ($AlarmScheduleBuilder()..update(updates))._build();

  _$$AlarmSchedule._({required this.type}) : super._();
  @override
  $AlarmSchedule rebuild(void Function($AlarmScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $AlarmScheduleBuilder toBuilder() => $AlarmScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $AlarmSchedule && type == other.type;
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
      r'$AlarmSchedule',
    )..add('type', type)).toString();
  }
}

class $AlarmScheduleBuilder
    implements
        Builder<$AlarmSchedule, $AlarmScheduleBuilder>,
        AlarmScheduleBuilder {
  _$$AlarmSchedule? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $AlarmScheduleBuilder() {
    $AlarmSchedule._defaults(this);
  }

  $AlarmScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $AlarmSchedule other) {
    _$v = other as _$$AlarmSchedule;
  }

  @override
  void update(void Function($AlarmScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AlarmSchedule build() => _build();

  _$$AlarmSchedule _build() {
    final _$result =
        _$v ??
        _$$AlarmSchedule._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$AlarmSchedule',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
