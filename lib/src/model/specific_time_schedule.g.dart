// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_time_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecificTimeSchedule extends SpecificTimeSchedule {
  @override
  final int? endsOn;
  @override
  final String? timezone;
  @override
  final BuiltSet<int>? daysOfWeek;
  @override
  final int? startsOn;
  @override
  final String type;

  factory _$SpecificTimeSchedule([
    void Function(SpecificTimeScheduleBuilder)? updates,
  ]) => (SpecificTimeScheduleBuilder()..update(updates))._build();

  _$SpecificTimeSchedule._({
    this.endsOn,
    this.timezone,
    this.daysOfWeek,
    this.startsOn,
    required this.type,
  }) : super._();
  @override
  SpecificTimeSchedule rebuild(
    void Function(SpecificTimeScheduleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SpecificTimeScheduleBuilder toBuilder() =>
      SpecificTimeScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecificTimeSchedule &&
        endsOn == other.endsOn &&
        timezone == other.timezone &&
        daysOfWeek == other.daysOfWeek &&
        startsOn == other.startsOn &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endsOn.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, daysOfWeek.hashCode);
    _$hash = $jc(_$hash, startsOn.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecificTimeSchedule')
          ..add('endsOn', endsOn)
          ..add('timezone', timezone)
          ..add('daysOfWeek', daysOfWeek)
          ..add('startsOn', startsOn)
          ..add('type', type))
        .toString();
  }
}

class SpecificTimeScheduleBuilder
    implements
        Builder<SpecificTimeSchedule, SpecificTimeScheduleBuilder>,
        AlarmScheduleBuilder {
  _$SpecificTimeSchedule? _$v;

  int? _endsOn;
  int? get endsOn => _$this._endsOn;
  set endsOn(covariant int? endsOn) => _$this._endsOn = endsOn;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(covariant String? timezone) => _$this._timezone = timezone;

  SetBuilder<int>? _daysOfWeek;
  SetBuilder<int> get daysOfWeek => _$this._daysOfWeek ??= SetBuilder<int>();
  set daysOfWeek(covariant SetBuilder<int>? daysOfWeek) =>
      _$this._daysOfWeek = daysOfWeek;

  int? _startsOn;
  int? get startsOn => _$this._startsOn;
  set startsOn(covariant int? startsOn) => _$this._startsOn = startsOn;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  SpecificTimeScheduleBuilder() {
    SpecificTimeSchedule._defaults(this);
  }

  SpecificTimeScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endsOn = $v.endsOn;
      _timezone = $v.timezone;
      _daysOfWeek = $v.daysOfWeek?.toBuilder();
      _startsOn = $v.startsOn;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SpecificTimeSchedule other) {
    _$v = other as _$SpecificTimeSchedule;
  }

  @override
  void update(void Function(SpecificTimeScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecificTimeSchedule build() => _build();

  _$SpecificTimeSchedule _build() {
    _$SpecificTimeSchedule _$result;
    try {
      _$result =
          _$v ??
          _$SpecificTimeSchedule._(
            endsOn: endsOn,
            timezone: timezone,
            daysOfWeek: _daysOfWeek?.build(),
            startsOn: startsOn,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SpecificTimeSchedule',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'daysOfWeek';
        _daysOfWeek?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SpecificTimeSchedule',
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
