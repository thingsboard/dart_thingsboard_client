// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_time_schedule_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomTimeScheduleItem extends CustomTimeScheduleItem {
  @override
  final bool? enabled;
  @override
  final int? dayOfWeek;
  @override
  final int? startsOn;
  @override
  final int? endsOn;

  factory _$CustomTimeScheduleItem([
    void Function(CustomTimeScheduleItemBuilder)? updates,
  ]) => (CustomTimeScheduleItemBuilder()..update(updates))._build();

  _$CustomTimeScheduleItem._({
    this.enabled,
    this.dayOfWeek,
    this.startsOn,
    this.endsOn,
  }) : super._();
  @override
  CustomTimeScheduleItem rebuild(
    void Function(CustomTimeScheduleItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomTimeScheduleItemBuilder toBuilder() =>
      CustomTimeScheduleItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomTimeScheduleItem &&
        enabled == other.enabled &&
        dayOfWeek == other.dayOfWeek &&
        startsOn == other.startsOn &&
        endsOn == other.endsOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, startsOn.hashCode);
    _$hash = $jc(_$hash, endsOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomTimeScheduleItem')
          ..add('enabled', enabled)
          ..add('dayOfWeek', dayOfWeek)
          ..add('startsOn', startsOn)
          ..add('endsOn', endsOn))
        .toString();
  }
}

class CustomTimeScheduleItemBuilder
    implements Builder<CustomTimeScheduleItem, CustomTimeScheduleItemBuilder> {
  _$CustomTimeScheduleItem? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  int? _dayOfWeek;
  int? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(int? dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  int? _startsOn;
  int? get startsOn => _$this._startsOn;
  set startsOn(int? startsOn) => _$this._startsOn = startsOn;

  int? _endsOn;
  int? get endsOn => _$this._endsOn;
  set endsOn(int? endsOn) => _$this._endsOn = endsOn;

  CustomTimeScheduleItemBuilder() {
    CustomTimeScheduleItem._defaults(this);
  }

  CustomTimeScheduleItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _dayOfWeek = $v.dayOfWeek;
      _startsOn = $v.startsOn;
      _endsOn = $v.endsOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomTimeScheduleItem other) {
    _$v = other as _$CustomTimeScheduleItem;
  }

  @override
  void update(void Function(CustomTimeScheduleItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomTimeScheduleItem build() => _build();

  _$CustomTimeScheduleItem _build() {
    final _$result =
        _$v ??
        _$CustomTimeScheduleItem._(
          enabled: enabled,
          dayOfWeek: dayOfWeek,
          startsOn: startsOn,
          endsOn: endsOn,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
