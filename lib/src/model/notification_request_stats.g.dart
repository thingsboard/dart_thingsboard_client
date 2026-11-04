// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationRequestStats extends NotificationRequestStats {
  @override
  final BuiltMap<String, int>? sent;
  @override
  final BuiltMap<String, BuiltMap<String, String>>? errors;
  @override
  final int? totalErrors;
  @override
  final String? error;
  @override
  final int? totalSent;

  factory _$NotificationRequestStats([
    void Function(NotificationRequestStatsBuilder)? updates,
  ]) => (NotificationRequestStatsBuilder()..update(updates))._build();

  _$NotificationRequestStats._({
    this.sent,
    this.errors,
    this.totalErrors,
    this.error,
    this.totalSent,
  }) : super._();
  @override
  NotificationRequestStats rebuild(
    void Function(NotificationRequestStatsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationRequestStatsBuilder toBuilder() =>
      NotificationRequestStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRequestStats &&
        sent == other.sent &&
        errors == other.errors &&
        totalErrors == other.totalErrors &&
        error == other.error &&
        totalSent == other.totalSent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sent.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, totalErrors.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, totalSent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationRequestStats')
          ..add('sent', sent)
          ..add('errors', errors)
          ..add('totalErrors', totalErrors)
          ..add('error', error)
          ..add('totalSent', totalSent))
        .toString();
  }
}

class NotificationRequestStatsBuilder
    implements
        Builder<NotificationRequestStats, NotificationRequestStatsBuilder> {
  _$NotificationRequestStats? _$v;

  MapBuilder<String, int>? _sent;
  MapBuilder<String, int> get sent =>
      _$this._sent ??= MapBuilder<String, int>();
  set sent(MapBuilder<String, int>? sent) => _$this._sent = sent;

  MapBuilder<String, BuiltMap<String, String>>? _errors;
  MapBuilder<String, BuiltMap<String, String>> get errors =>
      _$this._errors ??= MapBuilder<String, BuiltMap<String, String>>();
  set errors(MapBuilder<String, BuiltMap<String, String>>? errors) =>
      _$this._errors = errors;

  int? _totalErrors;
  int? get totalErrors => _$this._totalErrors;
  set totalErrors(int? totalErrors) => _$this._totalErrors = totalErrors;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  int? _totalSent;
  int? get totalSent => _$this._totalSent;
  set totalSent(int? totalSent) => _$this._totalSent = totalSent;

  NotificationRequestStatsBuilder() {
    NotificationRequestStats._defaults(this);
  }

  NotificationRequestStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sent = $v.sent?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _totalErrors = $v.totalErrors;
      _error = $v.error;
      _totalSent = $v.totalSent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRequestStats other) {
    _$v = other as _$NotificationRequestStats;
  }

  @override
  void update(void Function(NotificationRequestStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRequestStats build() => _build();

  _$NotificationRequestStats _build() {
    _$NotificationRequestStats _$result;
    try {
      _$result =
          _$v ??
          _$NotificationRequestStats._(
            sent: _sent?.build(),
            errors: _errors?.build(),
            totalErrors: totalErrors,
            error: error,
            totalSent: totalSent,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sent';
        _sent?.build();
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationRequestStats',
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
