// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_event_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorEventFilter extends ErrorEventFilter {
  @override
  final String? server;
  @override
  final String? method;
  @override
  final String? errorStr;
  @override
  final EventType eventType;
  @override
  final bool? notEmpty;

  factory _$ErrorEventFilter([
    void Function(ErrorEventFilterBuilder)? updates,
  ]) => (ErrorEventFilterBuilder()..update(updates))._build();

  _$ErrorEventFilter._({
    this.server,
    this.method,
    this.errorStr,
    required this.eventType,
    this.notEmpty,
  }) : super._();
  @override
  ErrorEventFilter rebuild(void Function(ErrorEventFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorEventFilterBuilder toBuilder() =>
      ErrorEventFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorEventFilter &&
        server == other.server &&
        method == other.method &&
        errorStr == other.errorStr &&
        eventType == other.eventType &&
        notEmpty == other.notEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, server.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, errorStr.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, notEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorEventFilter')
          ..add('server', server)
          ..add('method', method)
          ..add('errorStr', errorStr)
          ..add('eventType', eventType)
          ..add('notEmpty', notEmpty))
        .toString();
  }
}

class ErrorEventFilterBuilder
    implements
        Builder<ErrorEventFilter, ErrorEventFilterBuilder>,
        EventFilterBuilder {
  _$ErrorEventFilter? _$v;

  String? _server;
  String? get server => _$this._server;
  set server(covariant String? server) => _$this._server = server;

  String? _method;
  String? get method => _$this._method;
  set method(covariant String? method) => _$this._method = method;

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

  ErrorEventFilterBuilder() {
    ErrorEventFilter._defaults(this);
  }

  ErrorEventFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _server = $v.server;
      _method = $v.method;
      _errorStr = $v.errorStr;
      _eventType = $v.eventType;
      _notEmpty = $v.notEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ErrorEventFilter other) {
    _$v = other as _$ErrorEventFilter;
  }

  @override
  void update(void Function(ErrorEventFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorEventFilter build() => _build();

  _$ErrorEventFilter _build() {
    final _$result =
        _$v ??
        _$ErrorEventFilter._(
          server: server,
          method: method,
          errorStr: errorStr,
          eventType: BuiltValueNullFieldError.checkNotNull(
            eventType,
            r'ErrorEventFilter',
            'eventType',
          ),
          notEmpty: notEmpty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
