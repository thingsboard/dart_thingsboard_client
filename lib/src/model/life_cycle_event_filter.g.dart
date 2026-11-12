// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_cycle_event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LifeCycleEventFilterStatusEnum _$lifeCycleEventFilterStatusEnum_success =
    const LifeCycleEventFilterStatusEnum._('success');
const LifeCycleEventFilterStatusEnum _$lifeCycleEventFilterStatusEnum_failure =
    const LifeCycleEventFilterStatusEnum._('failure');
const LifeCycleEventFilterStatusEnum
_$lifeCycleEventFilterStatusEnum_unknownDefaultOpenApi =
    const LifeCycleEventFilterStatusEnum._('unknownDefaultOpenApi');

LifeCycleEventFilterStatusEnum _$lifeCycleEventFilterStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'success':
      return _$lifeCycleEventFilterStatusEnum_success;
    case 'failure':
      return _$lifeCycleEventFilterStatusEnum_failure;
    case 'unknownDefaultOpenApi':
      return _$lifeCycleEventFilterStatusEnum_unknownDefaultOpenApi;
    default:
      return _$lifeCycleEventFilterStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<LifeCycleEventFilterStatusEnum>
_$lifeCycleEventFilterStatusEnumValues =
    BuiltSet<LifeCycleEventFilterStatusEnum>(
      const <LifeCycleEventFilterStatusEnum>[
        _$lifeCycleEventFilterStatusEnum_success,
        _$lifeCycleEventFilterStatusEnum_failure,
        _$lifeCycleEventFilterStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<LifeCycleEventFilterStatusEnum>
_$lifeCycleEventFilterStatusEnumSerializer =
    _$LifeCycleEventFilterStatusEnumSerializer();

class _$LifeCycleEventFilterStatusEnumSerializer
    implements PrimitiveSerializer<LifeCycleEventFilterStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'success': 'Success',
    'failure': 'Failure',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Success': 'success',
    'Failure': 'failure',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LifeCycleEventFilterStatusEnum];
  @override
  final String wireName = 'LifeCycleEventFilterStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    LifeCycleEventFilterStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LifeCycleEventFilterStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LifeCycleEventFilterStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$LifeCycleEventFilter extends LifeCycleEventFilter {
  @override
  final String? server;
  @override
  final String? event;
  @override
  final LifeCycleEventFilterStatusEnum? status;
  @override
  final String? errorStr;
  @override
  final EventType eventType;
  @override
  final bool? notEmpty;

  factory _$LifeCycleEventFilter([
    void Function(LifeCycleEventFilterBuilder)? updates,
  ]) => (LifeCycleEventFilterBuilder()..update(updates))._build();

  _$LifeCycleEventFilter._({
    this.server,
    this.event,
    this.status,
    this.errorStr,
    required this.eventType,
    this.notEmpty,
  }) : super._();
  @override
  LifeCycleEventFilter rebuild(
    void Function(LifeCycleEventFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LifeCycleEventFilterBuilder toBuilder() =>
      LifeCycleEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LifeCycleEventFilter &&
        server == other.server &&
        event == other.event &&
        status == other.status &&
        errorStr == other.errorStr &&
        eventType == other.eventType &&
        notEmpty == other.notEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorStr.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LifeCycleEventFilter')
          ..add('server', server)
          ..add('event', event)
          ..add('status', status)
          ..add('errorStr', errorStr)
          ..add('eventType', eventType)
          ..add('notEmpty', notEmpty))
        .toString();
  }
}

class LifeCycleEventFilterBuilder
    implements
        Builder<LifeCycleEventFilter, LifeCycleEventFilterBuilder>,
        EventFilterBuilder {
  _$LifeCycleEventFilter? _$v;

  String? _server;
  String? get server => _$this._server;
  set server(covariant String? server) => _$this._server = server;

  String? _event;
  String? get event => _$this._event;
  set event(covariant String? event) => _$this._event = event;

  LifeCycleEventFilterStatusEnum? _status;
  LifeCycleEventFilterStatusEnum? get status => _$this._status;
  set status(covariant LifeCycleEventFilterStatusEnum? status) =>
      _$this._status = status;

  String? _errorStr;
  String? get errorStr => _$this._errorStr;
  set errorStr(covariant String? errorStr) => _$this._errorStr = errorStr;

  EventType? _eventType;
  EventType? get eventType => _$this._eventType;
  set eventType(covariant EventType? eventType) =>
      _$this._eventType = eventType;

  bool? _notEmpty;
  bool? get notEmpty => _$this._notEmpty;
  set notEmpty(covariant bool? notEmpty) => _$this._notEmpty = notEmpty;

  LifeCycleEventFilterBuilder() {
    LifeCycleEventFilter._defaults(this);
  }

  LifeCycleEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _server = $v.server;
      _event = $v.event;
      _status = $v.status;
      _errorStr = $v.errorStr;
      _eventType = $v.eventType;
      _notEmpty = $v.notEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant LifeCycleEventFilter other) {
    _$v = other as _$LifeCycleEventFilter;
  }

  @override
  void update(void Function(LifeCycleEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LifeCycleEventFilter build() => _build();

  _$LifeCycleEventFilter _build() {
    final _$result =
        _$v ??
        _$LifeCycleEventFilter._(
          server: server,
          event: event,
          status: status,
          errorStr: errorStr,
          eventType: BuiltValueNullFieldError.checkNotNull(
            eventType,
            r'LifeCycleEventFilter',
            'eventType',
          ),
          notEmpty: notEmpty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
