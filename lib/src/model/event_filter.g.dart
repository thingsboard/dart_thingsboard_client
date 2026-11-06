// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class EventFilterBuilder {
  void replace(EventFilter other);
  void update(void Function(EventFilterBuilder) updates);
  EventType? get eventType;
  set eventType(EventType? eventType);

  bool? get notEmpty;
  set notEmpty(bool? notEmpty);
}

class _$$EventFilter extends $EventFilter {
  @override
  final EventType eventType;
  @override
  final bool? notEmpty;

  factory _$$EventFilter([void Function($EventFilterBuilder)? updates]) =>
      ($EventFilterBuilder()..update(updates))._build();

  _$$EventFilter._({required this.eventType, this.notEmpty}) : super._();
  @override
  $EventFilter rebuild(void Function($EventFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $EventFilterBuilder toBuilder() => $EventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $EventFilter &&
        eventType == other.eventType &&
        notEmpty == other.notEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$EventFilter')
          ..add('eventType', eventType)
          ..add('notEmpty', notEmpty))
        .toString();
  }
}

class $EventFilterBuilder
    implements Builder<$EventFilter, $EventFilterBuilder>, EventFilterBuilder {
  _$$EventFilter? _$v;

  EventType? _eventType;
  EventType? get eventType => _$this._eventType;
  set eventType(covariant EventType? eventType) =>
      _$this._eventType = eventType;

  bool? _notEmpty;
  bool? get notEmpty => _$this._notEmpty;
  set notEmpty(covariant bool? notEmpty) => _$this._notEmpty = notEmpty;

  $EventFilterBuilder() {
    $EventFilter._defaults(this);
  }

  $EventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventType = $v.eventType;
      _notEmpty = $v.notEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $EventFilter other) {
    _$v = other as _$$EventFilter;
  }

  @override
  void update(void Function($EventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $EventFilter build() => _build();

  _$$EventFilter _build() {
    final _$result =
        _$v ??
        _$$EventFilter._(
          eventType: BuiltValueNullFieldError.checkNotNull(
            eventType,
            r'$EventFilter',
            'eventType',
          ),
          notEmpty: notEmpty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
