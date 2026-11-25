// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_integration_event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DebugIntegrationEventFilterIsErrorEnum
_$debugIntegrationEventFilterIsErrorEnum_false_ =
    const DebugIntegrationEventFilterIsErrorEnum._('false_');
const DebugIntegrationEventFilterIsErrorEnum
_$debugIntegrationEventFilterIsErrorEnum_true_ =
    const DebugIntegrationEventFilterIsErrorEnum._('true_');
const DebugIntegrationEventFilterIsErrorEnum
_$debugIntegrationEventFilterIsErrorEnum_unknownDefaultOpenApi =
    const DebugIntegrationEventFilterIsErrorEnum._('unknownDefaultOpenApi');

DebugIntegrationEventFilterIsErrorEnum
_$debugIntegrationEventFilterIsErrorEnumValueOf(String name) {
  switch (name) {
    case 'false_':
      return _$debugIntegrationEventFilterIsErrorEnum_false_;
    case 'true_':
      return _$debugIntegrationEventFilterIsErrorEnum_true_;
    case 'unknownDefaultOpenApi':
      return _$debugIntegrationEventFilterIsErrorEnum_unknownDefaultOpenApi;
    default:
      return _$debugIntegrationEventFilterIsErrorEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DebugIntegrationEventFilterIsErrorEnum>
_$debugIntegrationEventFilterIsErrorEnumValues =
    BuiltSet<DebugIntegrationEventFilterIsErrorEnum>(
      const <DebugIntegrationEventFilterIsErrorEnum>[
        _$debugIntegrationEventFilterIsErrorEnum_false_,
        _$debugIntegrationEventFilterIsErrorEnum_true_,
        _$debugIntegrationEventFilterIsErrorEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<DebugIntegrationEventFilterIsErrorEnum>
_$debugIntegrationEventFilterIsErrorEnumSerializer =
    _$DebugIntegrationEventFilterIsErrorEnumSerializer();

class _$DebugIntegrationEventFilterIsErrorEnumSerializer
    implements PrimitiveSerializer<DebugIntegrationEventFilterIsErrorEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'false_': 'false',
    'true_': 'true',
    'unknownDefaultOpenApi': '11184809',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'false': 'false_',
    'true': 'true_',
    '11184809': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DebugIntegrationEventFilterIsErrorEnum,
  ];
  @override
  final String wireName = 'DebugIntegrationEventFilterIsErrorEnum';

  @override
  Object serialize(
    Serializers serializers,
    DebugIntegrationEventFilterIsErrorEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DebugIntegrationEventFilterIsErrorEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DebugIntegrationEventFilterIsErrorEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DebugIntegrationEventFilter extends DebugIntegrationEventFilter {
  @override
  final String? server;
  @override
  final DebugIntegrationEventFilterIsErrorEnum? isError;
  @override
  final String? type;
  @override
  final String? message;
  @override
  final String? statusIntegration;
  @override
  final String? errorStr;
  @override
  final EventType eventType;
  @override
  final bool? notEmpty;

  factory _$DebugIntegrationEventFilter([
    void Function(DebugIntegrationEventFilterBuilder)? updates,
  ]) => (DebugIntegrationEventFilterBuilder()..update(updates))._build();

  _$DebugIntegrationEventFilter._({
    this.server,
    this.isError,
    this.type,
    this.message,
    this.statusIntegration,
    this.errorStr,
    required this.eventType,
    this.notEmpty,
  }) : super._();
  @override
  DebugIntegrationEventFilter rebuild(
    void Function(DebugIntegrationEventFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DebugIntegrationEventFilterBuilder toBuilder() =>
      DebugIntegrationEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DebugIntegrationEventFilter &&
        server == other.server &&
        isError == other.isError &&
        type == other.type &&
        message == other.message &&
        statusIntegration == other.statusIntegration &&
        errorStr == other.errorStr &&
        eventType == other.eventType &&
        notEmpty == other.notEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, isError.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusIntegration.hashCode);
    _$hash = $jc(_$hash, errorStr.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DebugIntegrationEventFilter')
          ..add('server', server)
          ..add('isError', isError)
          ..add('type', type)
          ..add('message', message)
          ..add('statusIntegration', statusIntegration)
          ..add('errorStr', errorStr)
          ..add('eventType', eventType)
          ..add('notEmpty', notEmpty))
        .toString();
  }
}

class DebugIntegrationEventFilterBuilder
    implements
        Builder<
          DebugIntegrationEventFilter,
          DebugIntegrationEventFilterBuilder
        >,
        EventFilterBuilder {
  _$DebugIntegrationEventFilter? _$v;

  String? _server;
  String? get server => _$this._server;
  set server(covariant String? server) => _$this._server = server;

  DebugIntegrationEventFilterIsErrorEnum? _isError;
  DebugIntegrationEventFilterIsErrorEnum? get isError => _$this._isError;
  set isError(covariant DebugIntegrationEventFilterIsErrorEnum? isError) =>
      _$this._isError = isError;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  String? _message;
  String? get message => _$this._message;
  set message(covariant String? message) => _$this._message = message;

  String? _statusIntegration;
  String? get statusIntegration => _$this._statusIntegration;
  set statusIntegration(covariant String? statusIntegration) =>
      _$this._statusIntegration = statusIntegration;

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

  DebugIntegrationEventFilterBuilder() {
    DebugIntegrationEventFilter._defaults(this);
  }

  DebugIntegrationEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _server = $v.server;
      _isError = $v.isError;
      _type = $v.type;
      _message = $v.message;
      _statusIntegration = $v.statusIntegration;
      _errorStr = $v.errorStr;
      _eventType = $v.eventType;
      _notEmpty = $v.notEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DebugIntegrationEventFilter other) {
    _$v = other as _$DebugIntegrationEventFilter;
  }

  @override
  void update(void Function(DebugIntegrationEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DebugIntegrationEventFilter build() => _build();

  _$DebugIntegrationEventFilter _build() {
    final _$result =
        _$v ??
        _$DebugIntegrationEventFilter._(
          server: server,
          isError: isError,
          type: type,
          message: message,
          statusIntegration: statusIntegration,
          errorStr: errorStr,
          eventType: BuiltValueNullFieldError.checkNotNull(
            eventType,
            r'DebugIntegrationEventFilter',
            'eventType',
          ),
          notEmpty: notEmpty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
