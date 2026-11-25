// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_node_debug_event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RuleNodeDebugEventFilterIsErrorEnum
_$ruleNodeDebugEventFilterIsErrorEnum_false_ =
    const RuleNodeDebugEventFilterIsErrorEnum._('false_');
const RuleNodeDebugEventFilterIsErrorEnum
_$ruleNodeDebugEventFilterIsErrorEnum_true_ =
    const RuleNodeDebugEventFilterIsErrorEnum._('true_');
const RuleNodeDebugEventFilterIsErrorEnum
_$ruleNodeDebugEventFilterIsErrorEnum_unknownDefaultOpenApi =
    const RuleNodeDebugEventFilterIsErrorEnum._('unknownDefaultOpenApi');

RuleNodeDebugEventFilterIsErrorEnum
_$ruleNodeDebugEventFilterIsErrorEnumValueOf(String name) {
  switch (name) {
    case 'false_':
      return _$ruleNodeDebugEventFilterIsErrorEnum_false_;
    case 'true_':
      return _$ruleNodeDebugEventFilterIsErrorEnum_true_;
    case 'unknownDefaultOpenApi':
      return _$ruleNodeDebugEventFilterIsErrorEnum_unknownDefaultOpenApi;
    default:
      return _$ruleNodeDebugEventFilterIsErrorEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RuleNodeDebugEventFilterIsErrorEnum>
_$ruleNodeDebugEventFilterIsErrorEnumValues =
    BuiltSet<RuleNodeDebugEventFilterIsErrorEnum>(
      const <RuleNodeDebugEventFilterIsErrorEnum>[
        _$ruleNodeDebugEventFilterIsErrorEnum_false_,
        _$ruleNodeDebugEventFilterIsErrorEnum_true_,
        _$ruleNodeDebugEventFilterIsErrorEnum_unknownDefaultOpenApi,
      ],
    );

const RuleNodeDebugEventFilterMsgDirectionTypeEnum
_$ruleNodeDebugEventFilterMsgDirectionTypeEnum_IN =
    const RuleNodeDebugEventFilterMsgDirectionTypeEnum._('IN');
const RuleNodeDebugEventFilterMsgDirectionTypeEnum
_$ruleNodeDebugEventFilterMsgDirectionTypeEnum_OUT =
    const RuleNodeDebugEventFilterMsgDirectionTypeEnum._('OUT');
const RuleNodeDebugEventFilterMsgDirectionTypeEnum
_$ruleNodeDebugEventFilterMsgDirectionTypeEnum_unknownDefaultOpenApi =
    const RuleNodeDebugEventFilterMsgDirectionTypeEnum._(
      'unknownDefaultOpenApi',
    );

RuleNodeDebugEventFilterMsgDirectionTypeEnum
_$ruleNodeDebugEventFilterMsgDirectionTypeEnumValueOf(String name) {
  switch (name) {
    case 'IN':
      return _$ruleNodeDebugEventFilterMsgDirectionTypeEnum_IN;
    case 'OUT':
      return _$ruleNodeDebugEventFilterMsgDirectionTypeEnum_OUT;
    case 'unknownDefaultOpenApi':
      return _$ruleNodeDebugEventFilterMsgDirectionTypeEnum_unknownDefaultOpenApi;
    default:
      return _$ruleNodeDebugEventFilterMsgDirectionTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RuleNodeDebugEventFilterMsgDirectionTypeEnum>
_$ruleNodeDebugEventFilterMsgDirectionTypeEnumValues =
    BuiltSet<RuleNodeDebugEventFilterMsgDirectionTypeEnum>(
      const <RuleNodeDebugEventFilterMsgDirectionTypeEnum>[
        _$ruleNodeDebugEventFilterMsgDirectionTypeEnum_IN,
        _$ruleNodeDebugEventFilterMsgDirectionTypeEnum_OUT,
        _$ruleNodeDebugEventFilterMsgDirectionTypeEnum_unknownDefaultOpenApi,
      ],
    );

const RuleNodeDebugEventFilterEntityTypeEnum
_$ruleNodeDebugEventFilterEntityTypeEnum_DEVICE =
    const RuleNodeDebugEventFilterEntityTypeEnum._('DEVICE');
const RuleNodeDebugEventFilterEntityTypeEnum
_$ruleNodeDebugEventFilterEntityTypeEnum_unknownDefaultOpenApi =
    const RuleNodeDebugEventFilterEntityTypeEnum._('unknownDefaultOpenApi');

RuleNodeDebugEventFilterEntityTypeEnum
_$ruleNodeDebugEventFilterEntityTypeEnumValueOf(String name) {
  switch (name) {
    case 'DEVICE':
      return _$ruleNodeDebugEventFilterEntityTypeEnum_DEVICE;
    case 'unknownDefaultOpenApi':
      return _$ruleNodeDebugEventFilterEntityTypeEnum_unknownDefaultOpenApi;
    default:
      return _$ruleNodeDebugEventFilterEntityTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RuleNodeDebugEventFilterEntityTypeEnum>
_$ruleNodeDebugEventFilterEntityTypeEnumValues =
    BuiltSet<RuleNodeDebugEventFilterEntityTypeEnum>(
      const <RuleNodeDebugEventFilterEntityTypeEnum>[
        _$ruleNodeDebugEventFilterEntityTypeEnum_DEVICE,
        _$ruleNodeDebugEventFilterEntityTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RuleNodeDebugEventFilterIsErrorEnum>
_$ruleNodeDebugEventFilterIsErrorEnumSerializer =
    _$RuleNodeDebugEventFilterIsErrorEnumSerializer();
Serializer<RuleNodeDebugEventFilterMsgDirectionTypeEnum>
_$ruleNodeDebugEventFilterMsgDirectionTypeEnumSerializer =
    _$RuleNodeDebugEventFilterMsgDirectionTypeEnumSerializer();
Serializer<RuleNodeDebugEventFilterEntityTypeEnum>
_$ruleNodeDebugEventFilterEntityTypeEnumSerializer =
    _$RuleNodeDebugEventFilterEntityTypeEnumSerializer();

class _$RuleNodeDebugEventFilterIsErrorEnumSerializer
    implements PrimitiveSerializer<RuleNodeDebugEventFilterIsErrorEnum> {
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
    RuleNodeDebugEventFilterIsErrorEnum,
  ];
  @override
  final String wireName = 'RuleNodeDebugEventFilterIsErrorEnum';

  @override
  Object serialize(
    Serializers serializers,
    RuleNodeDebugEventFilterIsErrorEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RuleNodeDebugEventFilterIsErrorEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RuleNodeDebugEventFilterIsErrorEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RuleNodeDebugEventFilterMsgDirectionTypeEnumSerializer
    implements
        PrimitiveSerializer<RuleNodeDebugEventFilterMsgDirectionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'IN': 'IN',
    'OUT': 'OUT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'IN': 'IN',
    'OUT': 'OUT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RuleNodeDebugEventFilterMsgDirectionTypeEnum,
  ];
  @override
  final String wireName = 'RuleNodeDebugEventFilterMsgDirectionTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    RuleNodeDebugEventFilterMsgDirectionTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RuleNodeDebugEventFilterMsgDirectionTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RuleNodeDebugEventFilterMsgDirectionTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RuleNodeDebugEventFilterEntityTypeEnumSerializer
    implements PrimitiveSerializer<RuleNodeDebugEventFilterEntityTypeEnum> {
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
    RuleNodeDebugEventFilterEntityTypeEnum,
  ];
  @override
  final String wireName = 'RuleNodeDebugEventFilterEntityTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    RuleNodeDebugEventFilterEntityTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RuleNodeDebugEventFilterEntityTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RuleNodeDebugEventFilterEntityTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RuleNodeDebugEventFilter extends RuleNodeDebugEventFilter {
  @override
  final String? relationType;
  @override
  final String? dataSearch;
  @override
  final String? server;
  @override
  final RuleNodeDebugEventFilterIsErrorEnum? isError;
  @override
  final String? msgType;
  @override
  final RuleNodeDebugEventFilterEntityTypeEnum? entityType;
  @override
  final RuleNodeDebugEventFilterMsgDirectionTypeEnum? msgDirectionType;
  @override
  final String? msgId;
  @override
  final String? entityId;
  @override
  final String? metadataSearch;
  @override
  final String? errorStr;
  @override
  final EventType eventType;
  @override
  final bool? notEmpty;

  factory _$RuleNodeDebugEventFilter([
    void Function(RuleNodeDebugEventFilterBuilder)? updates,
  ]) => (RuleNodeDebugEventFilterBuilder()..update(updates))._build();

  _$RuleNodeDebugEventFilter._({
    this.relationType,
    this.dataSearch,
    this.server,
    this.isError,
    this.msgType,
    this.entityType,
    this.msgDirectionType,
    this.msgId,
    this.entityId,
    this.metadataSearch,
    this.errorStr,
    required this.eventType,
    this.notEmpty,
  }) : super._();
  @override
  RuleNodeDebugEventFilter rebuild(
    void Function(RuleNodeDebugEventFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleNodeDebugEventFilterBuilder toBuilder() =>
      RuleNodeDebugEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleNodeDebugEventFilter &&
        relationType == other.relationType &&
        dataSearch == other.dataSearch &&
        server == other.server &&
        isError == other.isError &&
        msgType == other.msgType &&
        entityType == other.entityType &&
        msgDirectionType == other.msgDirectionType &&
        msgId == other.msgId &&
        entityId == other.entityId &&
        metadataSearch == other.metadataSearch &&
        errorStr == other.errorStr &&
        eventType == other.eventType &&
        notEmpty == other.notEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jc(_$hash, dataSearch.hashCode);
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, isError.hashCode);
    _$hash = $jc(_$hash, msgType.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, msgDirectionType.hashCode);
    _$hash = $jc(_$hash, msgId.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, metadataSearch.hashCode);
    _$hash = $jc(_$hash, errorStr.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleNodeDebugEventFilter')
          ..add('relationType', relationType)
          ..add('dataSearch', dataSearch)
          ..add('server', server)
          ..add('isError', isError)
          ..add('msgType', msgType)
          ..add('entityType', entityType)
          ..add('msgDirectionType', msgDirectionType)
          ..add('msgId', msgId)
          ..add('entityId', entityId)
          ..add('metadataSearch', metadataSearch)
          ..add('errorStr', errorStr)
          ..add('eventType', eventType)
          ..add('notEmpty', notEmpty))
        .toString();
  }
}

class RuleNodeDebugEventFilterBuilder
    implements
        Builder<RuleNodeDebugEventFilter, RuleNodeDebugEventFilterBuilder>,
        EventFilterBuilder {
  _$RuleNodeDebugEventFilter? _$v;

  String? _relationType;
  String? get relationType => _$this._relationType;
  set relationType(covariant String? relationType) =>
      _$this._relationType = relationType;

  String? _dataSearch;
  String? get dataSearch => _$this._dataSearch;
  set dataSearch(covariant String? dataSearch) =>
      _$this._dataSearch = dataSearch;

  String? _server;
  String? get server => _$this._server;
  set server(covariant String? server) => _$this._server = server;

  RuleNodeDebugEventFilterIsErrorEnum? _isError;
  RuleNodeDebugEventFilterIsErrorEnum? get isError => _$this._isError;
  set isError(covariant RuleNodeDebugEventFilterIsErrorEnum? isError) =>
      _$this._isError = isError;

  String? _msgType;
  String? get msgType => _$this._msgType;
  set msgType(covariant String? msgType) => _$this._msgType = msgType;

  RuleNodeDebugEventFilterEntityTypeEnum? _entityType;
  RuleNodeDebugEventFilterEntityTypeEnum? get entityType => _$this._entityType;
  set entityType(
    covariant RuleNodeDebugEventFilterEntityTypeEnum? entityType,
  ) => _$this._entityType = entityType;

  RuleNodeDebugEventFilterMsgDirectionTypeEnum? _msgDirectionType;
  RuleNodeDebugEventFilterMsgDirectionTypeEnum? get msgDirectionType =>
      _$this._msgDirectionType;
  set msgDirectionType(
    covariant RuleNodeDebugEventFilterMsgDirectionTypeEnum? msgDirectionType,
  ) => _$this._msgDirectionType = msgDirectionType;

  String? _msgId;
  String? get msgId => _$this._msgId;
  set msgId(covariant String? msgId) => _$this._msgId = msgId;

  String? _entityId;
  String? get entityId => _$this._entityId;
  set entityId(covariant String? entityId) => _$this._entityId = entityId;

  String? _metadataSearch;
  String? get metadataSearch => _$this._metadataSearch;
  set metadataSearch(covariant String? metadataSearch) =>
      _$this._metadataSearch = metadataSearch;

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

  RuleNodeDebugEventFilterBuilder() {
    RuleNodeDebugEventFilter._defaults(this);
  }

  RuleNodeDebugEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _relationType = $v.relationType;
      _dataSearch = $v.dataSearch;
      _server = $v.server;
      _isError = $v.isError;
      _msgType = $v.msgType;
      _entityType = $v.entityType;
      _msgDirectionType = $v.msgDirectionType;
      _msgId = $v.msgId;
      _entityId = $v.entityId;
      _metadataSearch = $v.metadataSearch;
      _errorStr = $v.errorStr;
      _eventType = $v.eventType;
      _notEmpty = $v.notEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RuleNodeDebugEventFilter other) {
    _$v = other as _$RuleNodeDebugEventFilter;
  }

  @override
  void update(void Function(RuleNodeDebugEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleNodeDebugEventFilter build() => _build();

  _$RuleNodeDebugEventFilter _build() {
    final _$result =
        _$v ??
        _$RuleNodeDebugEventFilter._(
          relationType: relationType,
          dataSearch: dataSearch,
          server: server,
          isError: isError,
          msgType: msgType,
          entityType: entityType,
          msgDirectionType: msgDirectionType,
          msgId: msgId,
          entityId: entityId,
          metadataSearch: metadataSearch,
          errorStr: errorStr,
          eventType: BuiltValueNullFieldError.checkNotNull(
            eventType,
            r'RuleNodeDebugEventFilter',
            'eventType',
          ),
          notEmpty: notEmpty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
