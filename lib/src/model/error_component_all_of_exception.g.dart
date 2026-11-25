// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_component_all_of_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorComponentAllOfException extends ErrorComponentAllOfException {
  @override
  final ErrorComponentAllOfExceptionCause? cause;
  @override
  final BuiltList<ErrorComponentAllOfExceptionCauseStackTrace>? stackTrace;
  @override
  final String? message;
  @override
  final BuiltList<ErrorComponentAllOfExceptionCause>? suppressed;
  @override
  final String? localizedMessage;

  factory _$ErrorComponentAllOfException([
    void Function(ErrorComponentAllOfExceptionBuilder)? updates,
  ]) => (ErrorComponentAllOfExceptionBuilder()..update(updates))._build();

  _$ErrorComponentAllOfException._({
    this.cause,
    this.stackTrace,
    this.message,
    this.suppressed,
    this.localizedMessage,
  }) : super._();
  @override
  ErrorComponentAllOfException rebuild(
    void Function(ErrorComponentAllOfExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ErrorComponentAllOfExceptionBuilder toBuilder() =>
      ErrorComponentAllOfExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorComponentAllOfException &&
        cause == other.cause &&
        stackTrace == other.stackTrace &&
        message == other.message &&
        suppressed == other.suppressed &&
        localizedMessage == other.localizedMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cause.hashCode);
    _$hash = $jc(_$hash, stackTrace.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, suppressed.hashCode);
    _$hash = $jc(_$hash, localizedMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorComponentAllOfException')
          ..add('cause', cause)
          ..add('stackTrace', stackTrace)
          ..add('message', message)
          ..add('suppressed', suppressed)
          ..add('localizedMessage', localizedMessage))
        .toString();
  }
}

class ErrorComponentAllOfExceptionBuilder
    implements
        Builder<
          ErrorComponentAllOfException,
          ErrorComponentAllOfExceptionBuilder
        > {
  _$ErrorComponentAllOfException? _$v;

  ErrorComponentAllOfExceptionCauseBuilder? _cause;
  ErrorComponentAllOfExceptionCauseBuilder get cause =>
      _$this._cause ??= ErrorComponentAllOfExceptionCauseBuilder();
  set cause(ErrorComponentAllOfExceptionCauseBuilder? cause) =>
      _$this._cause = cause;

  ListBuilder<ErrorComponentAllOfExceptionCauseStackTrace>? _stackTrace;
  ListBuilder<ErrorComponentAllOfExceptionCauseStackTrace> get stackTrace =>
      _$this._stackTrace ??=
          ListBuilder<ErrorComponentAllOfExceptionCauseStackTrace>();
  set stackTrace(
    ListBuilder<ErrorComponentAllOfExceptionCauseStackTrace>? stackTrace,
  ) => _$this._stackTrace = stackTrace;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<ErrorComponentAllOfExceptionCause>? _suppressed;
  ListBuilder<ErrorComponentAllOfExceptionCause> get suppressed =>
      _$this._suppressed ??= ListBuilder<ErrorComponentAllOfExceptionCause>();
  set suppressed(ListBuilder<ErrorComponentAllOfExceptionCause>? suppressed) =>
      _$this._suppressed = suppressed;

  String? _localizedMessage;
  String? get localizedMessage => _$this._localizedMessage;
  set localizedMessage(String? localizedMessage) =>
      _$this._localizedMessage = localizedMessage;

  ErrorComponentAllOfExceptionBuilder() {
    ErrorComponentAllOfException._defaults(this);
  }

  ErrorComponentAllOfExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cause = $v.cause?.toBuilder();
      _stackTrace = $v.stackTrace?.toBuilder();
      _message = $v.message;
      _suppressed = $v.suppressed?.toBuilder();
      _localizedMessage = $v.localizedMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorComponentAllOfException other) {
    _$v = other as _$ErrorComponentAllOfException;
  }

  @override
  void update(void Function(ErrorComponentAllOfExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorComponentAllOfException build() => _build();

  _$ErrorComponentAllOfException _build() {
    _$ErrorComponentAllOfException _$result;
    try {
      _$result =
          _$v ??
          _$ErrorComponentAllOfException._(
            cause: _cause?.build(),
            stackTrace: _stackTrace?.build(),
            message: message,
            suppressed: _suppressed?.build(),
            localizedMessage: localizedMessage,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cause';
        _cause?.build();
        _$failedField = 'stackTrace';
        _stackTrace?.build();

        _$failedField = 'suppressed';
        _suppressed?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ErrorComponentAllOfException',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
