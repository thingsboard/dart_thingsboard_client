// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_field_debug_event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CalculatedFieldDebugEventFilterIsErrorEnum
_$calculatedFieldDebugEventFilterIsErrorEnum_false_ =
    const CalculatedFieldDebugEventFilterIsErrorEnum._('false_');
const CalculatedFieldDebugEventFilterIsErrorEnum
_$calculatedFieldDebugEventFilterIsErrorEnum_true_ =
    const CalculatedFieldDebugEventFilterIsErrorEnum._('true_');
const CalculatedFieldDebugEventFilterIsErrorEnum
_$calculatedFieldDebugEventFilterIsErrorEnum_unknownDefaultOpenApi =
    const CalculatedFieldDebugEventFilterIsErrorEnum._('unknownDefaultOpenApi');

CalculatedFieldDebugEventFilterIsErrorEnum
_$calculatedFieldDebugEventFilterIsErrorEnumValueOf(String name) {
  switch (name) {
    case 'false_':
      return _$calculatedFieldDebugEventFilterIsErrorEnum_false_;
    case 'true_':
      return _$calculatedFieldDebugEventFilterIsErrorEnum_true_;
    case 'unknownDefaultOpenApi':
      return _$calculatedFieldDebugEventFilterIsErrorEnum_unknownDefaultOpenApi;
    default:
      return _$calculatedFieldDebugEventFilterIsErrorEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CalculatedFieldDebugEventFilterIsErrorEnum>
_$calculatedFieldDebugEventFilterIsErrorEnumValues =
    BuiltSet<CalculatedFieldDebugEventFilterIsErrorEnum>(
      const <CalculatedFieldDebugEventFilterIsErrorEnum>[
        _$calculatedFieldDebugEventFilterIsErrorEnum_false_,
        _$calculatedFieldDebugEventFilterIsErrorEnum_true_,
        _$calculatedFieldDebugEventFilterIsErrorEnum_unknownDefaultOpenApi,
      ],
    );

const CalculatedFieldDebugEventFilterEntityTypeEnum
_$calculatedFieldDebugEventFilterEntityTypeEnum_DEVICE =
    const CalculatedFieldDebugEventFilterEntityTypeEnum._('DEVICE');
const CalculatedFieldDebugEventFilterEntityTypeEnum
_$calculatedFieldDebugEventFilterEntityTypeEnum_unknownDefaultOpenApi =
    const CalculatedFieldDebugEventFilterEntityTypeEnum._(
      'unknownDefaultOpenApi',
    );

CalculatedFieldDebugEventFilterEntityTypeEnum
_$calculatedFieldDebugEventFilterEntityTypeEnumValueOf(String name) {
  switch (name) {
    case 'DEVICE':
      return _$calculatedFieldDebugEventFilterEntityTypeEnum_DEVICE;
    case 'unknownDefaultOpenApi':
      return _$calculatedFieldDebugEventFilterEntityTypeEnum_unknownDefaultOpenApi;
    default:
      return _$calculatedFieldDebugEventFilterEntityTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CalculatedFieldDebugEventFilterEntityTypeEnum>
_$calculatedFieldDebugEventFilterEntityTypeEnumValues =
    BuiltSet<CalculatedFieldDebugEventFilterEntityTypeEnum>(
      const <CalculatedFieldDebugEventFilterEntityTypeEnum>[
        _$calculatedFieldDebugEventFilterEntityTypeEnum_DEVICE,
        _$calculatedFieldDebugEventFilterEntityTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<CalculatedFieldDebugEventFilterIsErrorEnum>
_$calculatedFieldDebugEventFilterIsErrorEnumSerializer =
    _$CalculatedFieldDebugEventFilterIsErrorEnumSerializer();
Serializer<CalculatedFieldDebugEventFilterEntityTypeEnum>
_$calculatedFieldDebugEventFilterEntityTypeEnumSerializer =
    _$CalculatedFieldDebugEventFilterEntityTypeEnumSerializer();

class _$CalculatedFieldDebugEventFilterIsErrorEnumSerializer
    implements PrimitiveSerializer<CalculatedFieldDebugEventFilterIsErrorEnum> {
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
    CalculatedFieldDebugEventFilterIsErrorEnum,
  ];
  @override
  final String wireName = 'CalculatedFieldDebugEventFilterIsErrorEnum';

  @override
  Object serialize(
    Serializers serializers,
    CalculatedFieldDebugEventFilterIsErrorEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CalculatedFieldDebugEventFilterIsErrorEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CalculatedFieldDebugEventFilterIsErrorEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CalculatedFieldDebugEventFilterEntityTypeEnumSerializer
    implements
        PrimitiveSerializer<CalculatedFieldDebugEventFilterEntityTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DEVICE': 'DEVICE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DEVICE': 'DEVICE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CalculatedFieldDebugEventFilterEntityTypeEnum,
  ];
  @override
  final String wireName = 'CalculatedFieldDebugEventFilterEntityTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    CalculatedFieldDebugEventFilterEntityTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CalculatedFieldDebugEventFilterEntityTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CalculatedFieldDebugEventFilterEntityTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CalculatedFieldDebugEventFilter
    extends CalculatedFieldDebugEventFilter {
  @override
  final String? result;
  @override
  final String? server;
  @override
  final CalculatedFieldDebugEventFilterIsErrorEnum? isError;
  @override
  final String? msgType;
  @override
  final CalculatedFieldDebugEventFilterEntityTypeEnum? entityType;
  @override
  final String? msgId;
  @override
  final String? entityId;
  @override
  final String? arguments;
  @override
  final String? errorStr;
  @override
  final EventType eventType;
  @override
  final bool? notEmpty;

  factory _$CalculatedFieldDebugEventFilter([
    void Function(CalculatedFieldDebugEventFilterBuilder)? updates,
  ]) => (CalculatedFieldDebugEventFilterBuilder()..update(updates))._build();

  _$CalculatedFieldDebugEventFilter._({
    this.result,
    this.server,
    this.isError,
    this.msgType,
    this.entityType,
    this.msgId,
    this.entityId,
    this.arguments,
    this.errorStr,
    required this.eventType,
    this.notEmpty,
  }) : super._();
  @override
  CalculatedFieldDebugEventFilter rebuild(
    void Function(CalculatedFieldDebugEventFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CalculatedFieldDebugEventFilterBuilder toBuilder() =>
      CalculatedFieldDebugEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalculatedFieldDebugEventFilter &&
        result == other.result &&
        server == other.server &&
        isError == other.isError &&
        msgType == other.msgType &&
        entityType == other.entityType &&
        msgId == other.msgId &&
        entityId == other.entityId &&
        arguments == other.arguments &&
        errorStr == other.errorStr &&
        eventType == other.eventType &&
        notEmpty == other.notEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, isError.hashCode);
    _$hash = $jc(_$hash, msgType.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, msgId.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, errorStr.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CalculatedFieldDebugEventFilter')
          ..add('result', result)
          ..add('server', server)
          ..add('isError', isError)
          ..add('msgType', msgType)
          ..add('entityType', entityType)
          ..add('msgId', msgId)
          ..add('entityId', entityId)
          ..add('arguments', arguments)
          ..add('errorStr', errorStr)
          ..add('eventType', eventType)
          ..add('notEmpty', notEmpty))
        .toString();
  }
}

class CalculatedFieldDebugEventFilterBuilder
    implements
        Builder<
          CalculatedFieldDebugEventFilter,
          CalculatedFieldDebugEventFilterBuilder
        >,
        EventFilterBuilder {
  _$CalculatedFieldDebugEventFilter? _$v;

  String? _result;
  String? get result => _$this._result;
  set result(covariant String? result) => _$this._result = result;

  String? _server;
  String? get server => _$this._server;
  set server(covariant String? server) => _$this._server = server;

  CalculatedFieldDebugEventFilterIsErrorEnum? _isError;
  CalculatedFieldDebugEventFilterIsErrorEnum? get isError => _$this._isError;
  set isError(covariant CalculatedFieldDebugEventFilterIsErrorEnum? isError) =>
      _$this._isError = isError;

  String? _msgType;
  String? get msgType => _$this._msgType;
  set msgType(covariant String? msgType) => _$this._msgType = msgType;

  CalculatedFieldDebugEventFilterEntityTypeEnum? _entityType;
  CalculatedFieldDebugEventFilterEntityTypeEnum? get entityType =>
      _$this._entityType;
  set entityType(
    covariant CalculatedFieldDebugEventFilterEntityTypeEnum? entityType,
  ) => _$this._entityType = entityType;

  String? _msgId;
  String? get msgId => _$this._msgId;
  set msgId(covariant String? msgId) => _$this._msgId = msgId;

  String? _entityId;
  String? get entityId => _$this._entityId;
  set entityId(covariant String? entityId) => _$this._entityId = entityId;

  String? _arguments;
  String? get arguments => _$this._arguments;
  set arguments(covariant String? arguments) => _$this._arguments = arguments;

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

  CalculatedFieldDebugEventFilterBuilder() {
    CalculatedFieldDebugEventFilter._defaults(this);
  }

  CalculatedFieldDebugEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _server = $v.server;
      _isError = $v.isError;
      _msgType = $v.msgType;
      _entityType = $v.entityType;
      _msgId = $v.msgId;
      _entityId = $v.entityId;
      _arguments = $v.arguments;
      _errorStr = $v.errorStr;
      _eventType = $v.eventType;
      _notEmpty = $v.notEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CalculatedFieldDebugEventFilter other) {
    _$v = other as _$CalculatedFieldDebugEventFilter;
  }

  @override
  void update(void Function(CalculatedFieldDebugEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalculatedFieldDebugEventFilter build() => _build();

  _$CalculatedFieldDebugEventFilter _build() {
    final _$result =
        _$v ??
        _$CalculatedFieldDebugEventFilter._(
          result: result,
          server: server,
          isError: isError,
          msgType: msgType,
          entityType: entityType,
          msgId: msgId,
          entityId: entityId,
          arguments: arguments,
          errorStr: errorStr,
          eventType: BuiltValueNullFieldError.checkNotNull(
            eventType,
            r'CalculatedFieldDebugEventFilter',
            'eventType',
          ),
          notEmpty: notEmpty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
