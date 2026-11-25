// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventId extends EventId {
  @override
  final String id;

  factory _$EventId([void Function(EventIdBuilder)? updates]) =>
      (EventIdBuilder()..update(updates))._build();

  _$EventId._({required this.id}) : super._();
  @override
  EventId rebuild(void Function(EventIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventIdBuilder toBuilder() => EventIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventId && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventId')..add('id', id)).toString();
  }
}

class EventIdBuilder implements Builder<EventId, EventIdBuilder> {
  _$EventId? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  EventIdBuilder() {
    EventId._defaults(this);
  }

  EventIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventId other) {
    _$v = other as _$EventId;
  }

  @override
  void update(void Function(EventIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventId build() => _build();

  _$EventId _build() {
    final _$result =
        _$v ??
        _$EventId._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'EventId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
