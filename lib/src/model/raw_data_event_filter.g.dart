// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_data_event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RawDataEventFilter extends RawDataEventFilter {
  @override
  final String? server;
  @override
  final String? messageType;
  @override
  final String? message;
  @override
  final String? uuid;
  @override
  final EventType eventType;
  @override
  final bool? notEmpty;

  factory _$RawDataEventFilter([
    void Function(RawDataEventFilterBuilder)? updates,
  ]) => (RawDataEventFilterBuilder()..update(updates))._build();

  _$RawDataEventFilter._({
    this.server,
    this.messageType,
    this.message,
    this.uuid,
    required this.eventType,
    this.notEmpty,
  }) : super._();
  @override
  RawDataEventFilter rebuild(
    void Function(RawDataEventFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RawDataEventFilterBuilder toBuilder() =>
      RawDataEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RawDataEventFilter &&
        server == other.server &&
        messageType == other.messageType &&
        message == other.message &&
        uuid == other.uuid &&
        eventType == other.eventType &&
        notEmpty == other.notEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, messageType.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RawDataEventFilter')
          ..add('server', server)
          ..add('messageType', messageType)
          ..add('message', message)
          ..add('uuid', uuid)
          ..add('eventType', eventType)
          ..add('notEmpty', notEmpty))
        .toString();
  }
}

class RawDataEventFilterBuilder
    implements
        Builder<RawDataEventFilter, RawDataEventFilterBuilder>,
        EventFilterBuilder {
  _$RawDataEventFilter? _$v;

  String? _server;
  String? get server => _$this._server;
  set server(covariant String? server) => _$this._server = server;

  String? _messageType;
  String? get messageType => _$this._messageType;
  set messageType(covariant String? messageType) =>
      _$this._messageType = messageType;

  String? _message;
  String? get message => _$this._message;
  set message(covariant String? message) => _$this._message = message;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(covariant String? uuid) => _$this._uuid = uuid;

  EventType? _eventType;
  EventType? get eventType => _$this._eventType;
  set eventType(covariant EventType? eventType) =>
      _$this._eventType = eventType;

  bool? _notEmpty;
  bool? get notEmpty => _$this._notEmpty;
  set notEmpty(covariant bool? notEmpty) => _$this._notEmpty = notEmpty;

  RawDataEventFilterBuilder() {
    RawDataEventFilter._defaults(this);
  }

  RawDataEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _server = $v.server;
      _messageType = $v.messageType;
      _message = $v.message;
      _uuid = $v.uuid;
      _eventType = $v.eventType;
      _notEmpty = $v.notEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RawDataEventFilter other) {
    _$v = other as _$RawDataEventFilter;
  }

  @override
  void update(void Function(RawDataEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RawDataEventFilter build() => _build();

  _$RawDataEventFilter _build() {
    final _$result =
        _$v ??
        _$RawDataEventFilter._(
          server: server,
          messageType: messageType,
          message: message,
          uuid: uuid,
          eventType: BuiltValueNullFieldError.checkNotNull(
            eventType,
            r'RawDataEventFilter',
            'eventType',
          ),
          notEmpty: notEmpty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
