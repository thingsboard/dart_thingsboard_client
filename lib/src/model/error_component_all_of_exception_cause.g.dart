// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_component_all_of_exception_cause.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorComponentAllOfExceptionCause
    extends ErrorComponentAllOfExceptionCause {
  @override
  final BuiltList<ErrorComponentAllOfExceptionCauseStackTrace>? stackTrace;
  @override
  final String? message;
  @override
  final String? localizedMessage;

  factory _$ErrorComponentAllOfExceptionCause([
    void Function(ErrorComponentAllOfExceptionCauseBuilder)? updates,
  ]) => (ErrorComponentAllOfExceptionCauseBuilder()..update(updates))._build();

  _$ErrorComponentAllOfExceptionCause._({
    this.stackTrace,
    this.message,
    this.localizedMessage,
  }) : super._();
  @override
  ErrorComponentAllOfExceptionCause rebuild(
    void Function(ErrorComponentAllOfExceptionCauseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ErrorComponentAllOfExceptionCauseBuilder toBuilder() =>
      ErrorComponentAllOfExceptionCauseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorComponentAllOfExceptionCause &&
        stackTrace == other.stackTrace &&
        message == other.message &&
        localizedMessage == other.localizedMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackTrace.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, localizedMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorComponentAllOfExceptionCause')
          ..add('stackTrace', stackTrace)
          ..add('message', message)
          ..add('localizedMessage', localizedMessage))
        .toString();
  }
}

class ErrorComponentAllOfExceptionCauseBuilder
    implements
        Builder<
          ErrorComponentAllOfExceptionCause,
          ErrorComponentAllOfExceptionCauseBuilder
        > {
  _$ErrorComponentAllOfExceptionCause? _$v;

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

  String? _localizedMessage;
  String? get localizedMessage => _$this._localizedMessage;
  set localizedMessage(String? localizedMessage) =>
      _$this._localizedMessage = localizedMessage;

  ErrorComponentAllOfExceptionCauseBuilder() {
    ErrorComponentAllOfExceptionCause._defaults(this);
  }

  ErrorComponentAllOfExceptionCauseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackTrace = $v.stackTrace?.toBuilder();
      _message = $v.message;
      _localizedMessage = $v.localizedMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorComponentAllOfExceptionCause other) {
    _$v = other as _$ErrorComponentAllOfExceptionCause;
  }

  @override
  void update(
    void Function(ErrorComponentAllOfExceptionCauseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ErrorComponentAllOfExceptionCause build() => _build();

  _$ErrorComponentAllOfExceptionCause _build() {
    _$ErrorComponentAllOfExceptionCause _$result;
    try {
      _$result =
          _$v ??
          _$ErrorComponentAllOfExceptionCause._(
            stackTrace: _stackTrace?.build(),
            message: message,
            localizedMessage: localizedMessage,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackTrace';
        _stackTrace?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ErrorComponentAllOfExceptionCause',
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
