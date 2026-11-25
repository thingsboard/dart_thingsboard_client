// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_converter_event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DebugConverterEventFilterIsErrorEnum
_$debugConverterEventFilterIsErrorEnum_false_ =
    const DebugConverterEventFilterIsErrorEnum._('false_');
const DebugConverterEventFilterIsErrorEnum
_$debugConverterEventFilterIsErrorEnum_true_ =
    const DebugConverterEventFilterIsErrorEnum._('true_');
const DebugConverterEventFilterIsErrorEnum
_$debugConverterEventFilterIsErrorEnum_unknownDefaultOpenApi =
    const DebugConverterEventFilterIsErrorEnum._('unknownDefaultOpenApi');

DebugConverterEventFilterIsErrorEnum
_$debugConverterEventFilterIsErrorEnumValueOf(String name) {
  switch (name) {
    case 'false_':
      return _$debugConverterEventFilterIsErrorEnum_false_;
    case 'true_':
      return _$debugConverterEventFilterIsErrorEnum_true_;
    case 'unknownDefaultOpenApi':
      return _$debugConverterEventFilterIsErrorEnum_unknownDefaultOpenApi;
    default:
      return _$debugConverterEventFilterIsErrorEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DebugConverterEventFilterIsErrorEnum>
_$debugConverterEventFilterIsErrorEnumValues =
    BuiltSet<DebugConverterEventFilterIsErrorEnum>(
      const <DebugConverterEventFilterIsErrorEnum>[
        _$debugConverterEventFilterIsErrorEnum_false_,
        _$debugConverterEventFilterIsErrorEnum_true_,
        _$debugConverterEventFilterIsErrorEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<DebugConverterEventFilterIsErrorEnum>
_$debugConverterEventFilterIsErrorEnumSerializer =
    _$DebugConverterEventFilterIsErrorEnumSerializer();

class _$DebugConverterEventFilterIsErrorEnumSerializer
    implements PrimitiveSerializer<DebugConverterEventFilterIsErrorEnum> {
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
    DebugConverterEventFilterIsErrorEnum,
  ];
  @override
  final String wireName = 'DebugConverterEventFilterIsErrorEnum';

  @override
  Object serialize(
    Serializers serializers,
    DebugConverterEventFilterIsErrorEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DebugConverterEventFilterIsErrorEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DebugConverterEventFilterIsErrorEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DebugConverterEventFilter extends DebugConverterEventFilter {
  @override
  final String? server;
  @override
  final String? metadata;
  @override
  final DebugConverterEventFilterIsErrorEnum? isError;
  @override
  final String? out_;
  @override
  final String? in_;
  @override
  final String? type;
  @override
  final String? errorStr;
  @override
  final EventType eventType;
  @override
  final bool? notEmpty;

  factory _$DebugConverterEventFilter([
    void Function(DebugConverterEventFilterBuilder)? updates,
  ]) => (DebugConverterEventFilterBuilder()..update(updates))._build();

  _$DebugConverterEventFilter._({
    this.server,
    this.metadata,
    this.isError,
    this.out_,
    this.in_,
    this.type,
    this.errorStr,
    required this.eventType,
    this.notEmpty,
  }) : super._();
  @override
  DebugConverterEventFilter rebuild(
    void Function(DebugConverterEventFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DebugConverterEventFilterBuilder toBuilder() =>
      DebugConverterEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DebugConverterEventFilter &&
        server == other.server &&
        metadata == other.metadata &&
        isError == other.isError &&
        out_ == other.out_ &&
        in_ == other.in_ &&
        type == other.type &&
        errorStr == other.errorStr &&
        eventType == other.eventType &&
        notEmpty == other.notEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, isError.hashCode);
    _$hash = $jc(_$hash, out_.hashCode);
    _$hash = $jc(_$hash, in_.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, errorStr.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DebugConverterEventFilter')
          ..add('server', server)
          ..add('metadata', metadata)
          ..add('isError', isError)
          ..add('out_', out_)
          ..add('in_', in_)
          ..add('type', type)
          ..add('errorStr', errorStr)
          ..add('eventType', eventType)
          ..add('notEmpty', notEmpty))
        .toString();
  }
}

class DebugConverterEventFilterBuilder
    implements
        Builder<DebugConverterEventFilter, DebugConverterEventFilterBuilder>,
        EventFilterBuilder {
  _$DebugConverterEventFilter? _$v;

  String? _server;
  String? get server => _$this._server;
  set server(covariant String? server) => _$this._server = server;

  String? _metadata;
  String? get metadata => _$this._metadata;
  set metadata(covariant String? metadata) => _$this._metadata = metadata;

  DebugConverterEventFilterIsErrorEnum? _isError;
  DebugConverterEventFilterIsErrorEnum? get isError => _$this._isError;
  set isError(covariant DebugConverterEventFilterIsErrorEnum? isError) =>
      _$this._isError = isError;

  String? _out_;
  String? get out_ => _$this._out_;
  set out_(covariant String? out_) => _$this._out_ = out_;

  String? _in_;
  String? get in_ => _$this._in_;
  set in_(covariant String? in_) => _$this._in_ = in_;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

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

  DebugConverterEventFilterBuilder() {
    DebugConverterEventFilter._defaults(this);
  }

  DebugConverterEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _server = $v.server;
      _metadata = $v.metadata;
      _isError = $v.isError;
      _out_ = $v.out_;
      _in_ = $v.in_;
      _type = $v.type;
      _errorStr = $v.errorStr;
      _eventType = $v.eventType;
      _notEmpty = $v.notEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DebugConverterEventFilter other) {
    _$v = other as _$DebugConverterEventFilter;
  }

  @override
  void update(void Function(DebugConverterEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DebugConverterEventFilter build() => _build();

  _$DebugConverterEventFilter _build() {
    final _$result =
        _$v ??
        _$DebugConverterEventFilter._(
          server: server,
          metadata: metadata,
          isError: isError,
          out_: out_,
          in_: in_,
          type: type,
          errorStr: errorStr,
          eventType: BuiltValueNullFieldError.checkNotNull(
            eventType,
            r'DebugConverterEventFilter',
            'eventType',
          ),
          notEmpty: notEmpty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
