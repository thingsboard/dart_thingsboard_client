// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_time_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomTimeSchedule extends CustomTimeSchedule {
  @override
  final String? timezone;
  @override
  final BuiltList<CustomTimeScheduleItem>? items;
  @override
  final String type;

  factory _$CustomTimeSchedule([
    void Function(CustomTimeScheduleBuilder)? updates,
  ]) => (CustomTimeScheduleBuilder()..update(updates))._build();

  _$CustomTimeSchedule._({this.timezone, this.items, required this.type})
    : super._();
  @override
  CustomTimeSchedule rebuild(
    void Function(CustomTimeScheduleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomTimeScheduleBuilder toBuilder() =>
      CustomTimeScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomTimeSchedule &&
        timezone == other.timezone &&
        items == other.items &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomTimeSchedule')
          ..add('timezone', timezone)
          ..add('items', items)
          ..add('type', type))
        .toString();
  }
}

class CustomTimeScheduleBuilder
    implements
        Builder<CustomTimeSchedule, CustomTimeScheduleBuilder>,
        AlarmScheduleBuilder {
  _$CustomTimeSchedule? _$v;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(covariant String? timezone) => _$this._timezone = timezone;

  ListBuilder<CustomTimeScheduleItem>? _items;
  ListBuilder<CustomTimeScheduleItem> get items =>
      _$this._items ??= ListBuilder<CustomTimeScheduleItem>();
  set items(covariant ListBuilder<CustomTimeScheduleItem>? items) =>
      _$this._items = items;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  CustomTimeScheduleBuilder() {
    CustomTimeSchedule._defaults(this);
  }

  CustomTimeScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timezone = $v.timezone;
      _items = $v.items?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CustomTimeSchedule other) {
    _$v = other as _$CustomTimeSchedule;
  }

  @override
  void update(void Function(CustomTimeScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomTimeSchedule build() => _build();

  _$CustomTimeSchedule _build() {
    _$CustomTimeSchedule _$result;
    try {
      _$result =
          _$v ??
          _$CustomTimeSchedule._(
            timezone: timezone,
            items: _items?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'CustomTimeSchedule',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CustomTimeSchedule',
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
