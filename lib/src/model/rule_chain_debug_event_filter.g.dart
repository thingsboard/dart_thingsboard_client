// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_chain_debug_event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RuleChainDebugEventFilterIsErrorEnum
_$ruleChainDebugEventFilterIsErrorEnum_false_ =
    const RuleChainDebugEventFilterIsErrorEnum._('false_');
const RuleChainDebugEventFilterIsErrorEnum
_$ruleChainDebugEventFilterIsErrorEnum_true_ =
    const RuleChainDebugEventFilterIsErrorEnum._('true_');
const RuleChainDebugEventFilterIsErrorEnum
_$ruleChainDebugEventFilterIsErrorEnum_unknownDefaultOpenApi =
    const RuleChainDebugEventFilterIsErrorEnum._('unknownDefaultOpenApi');

RuleChainDebugEventFilterIsErrorEnum
_$ruleChainDebugEventFilterIsErrorEnumValueOf(String name) {
  switch (name) {
    case 'false_':
      return _$ruleChainDebugEventFilterIsErrorEnum_false_;
    case 'true_':
      return _$ruleChainDebugEventFilterIsErrorEnum_true_;
    case 'unknownDefaultOpenApi':
      return _$ruleChainDebugEventFilterIsErrorEnum_unknownDefaultOpenApi;
    default:
      return _$ruleChainDebugEventFilterIsErrorEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RuleChainDebugEventFilterIsErrorEnum>
_$ruleChainDebugEventFilterIsErrorEnumValues =
    BuiltSet<RuleChainDebugEventFilterIsErrorEnum>(
      const <RuleChainDebugEventFilterIsErrorEnum>[
        _$ruleChainDebugEventFilterIsErrorEnum_false_,
        _$ruleChainDebugEventFilterIsErrorEnum_true_,
        _$ruleChainDebugEventFilterIsErrorEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RuleChainDebugEventFilterIsErrorEnum>
_$ruleChainDebugEventFilterIsErrorEnumSerializer =
    _$RuleChainDebugEventFilterIsErrorEnumSerializer();

class _$RuleChainDebugEventFilterIsErrorEnumSerializer
    implements PrimitiveSerializer<RuleChainDebugEventFilterIsErrorEnum> {
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
    RuleChainDebugEventFilterIsErrorEnum,
  ];
  @override
  final String wireName = 'RuleChainDebugEventFilterIsErrorEnum';

  @override
  Object serialize(
    Serializers serializers,
    RuleChainDebugEventFilterIsErrorEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RuleChainDebugEventFilterIsErrorEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RuleChainDebugEventFilterIsErrorEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RuleChainDebugEventFilter extends RuleChainDebugEventFilter {
  @override
  final String? server;
  @override
  final RuleChainDebugEventFilterIsErrorEnum? isError;
  @override
  final String? message;
  @override
  final String? errorStr;
  @override
  final EventType eventType;
  @override
  final bool? notEmpty;

  factory _$RuleChainDebugEventFilter([
    void Function(RuleChainDebugEventFilterBuilder)? updates,
  ]) => (RuleChainDebugEventFilterBuilder()..update(updates))._build();

  _$RuleChainDebugEventFilter._({
    this.server,
    this.isError,
    this.message,
    this.errorStr,
    required this.eventType,
    this.notEmpty,
  }) : super._();
  @override
  RuleChainDebugEventFilter rebuild(
    void Function(RuleChainDebugEventFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleChainDebugEventFilterBuilder toBuilder() =>
      RuleChainDebugEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleChainDebugEventFilter &&
        server == other.server &&
        isError == other.isError &&
        message == other.message &&
        errorStr == other.errorStr &&
        eventType == other.eventType &&
        notEmpty == other.notEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, isError.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, errorStr.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleChainDebugEventFilter')
          ..add('server', server)
          ..add('isError', isError)
          ..add('message', message)
          ..add('errorStr', errorStr)
          ..add('eventType', eventType)
          ..add('notEmpty', notEmpty))
        .toString();
  }
}

class RuleChainDebugEventFilterBuilder
    implements
        Builder<RuleChainDebugEventFilter, RuleChainDebugEventFilterBuilder>,
        EventFilterBuilder {
  _$RuleChainDebugEventFilter? _$v;

  String? _server;
  String? get server => _$this._server;
  set server(covariant String? server) => _$this._server = server;

  RuleChainDebugEventFilterIsErrorEnum? _isError;
  RuleChainDebugEventFilterIsErrorEnum? get isError => _$this._isError;
  set isError(covariant RuleChainDebugEventFilterIsErrorEnum? isError) =>
      _$this._isError = isError;

  String? _message;
  String? get message => _$this._message;
  set message(covariant String? message) => _$this._message = message;

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

  RuleChainDebugEventFilterBuilder() {
    RuleChainDebugEventFilter._defaults(this);
  }

  RuleChainDebugEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _server = $v.server;
      _isError = $v.isError;
      _message = $v.message;
      _errorStr = $v.errorStr;
      _eventType = $v.eventType;
      _notEmpty = $v.notEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RuleChainDebugEventFilter other) {
    _$v = other as _$RuleChainDebugEventFilter;
  }

  @override
  void update(void Function(RuleChainDebugEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleChainDebugEventFilter build() => _build();

  _$RuleChainDebugEventFilter _build() {
    final _$result =
        _$v ??
        _$RuleChainDebugEventFilter._(
          server: server,
          isError: isError,
          message: message,
          errorStr: errorStr,
          eventType: BuiltValueNullFieldError.checkNotNull(
            eventType,
            r'RuleChainDebugEventFilter',
            'eventType',
          ),
          notEmpty: notEmpty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
