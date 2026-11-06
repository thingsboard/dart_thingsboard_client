// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationRequestConfig extends NotificationRequestConfig {
  @override
  final int? sendingDelayInSec;
  @override
  final BuiltList<ReportId>? reports;

  factory _$NotificationRequestConfig([
    void Function(NotificationRequestConfigBuilder)? updates,
  ]) => (NotificationRequestConfigBuilder()..update(updates))._build();

  _$NotificationRequestConfig._({this.sendingDelayInSec, this.reports})
    : super._();
  @override
  NotificationRequestConfig rebuild(
    void Function(NotificationRequestConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationRequestConfigBuilder toBuilder() =>
      NotificationRequestConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRequestConfig &&
        sendingDelayInSec == other.sendingDelayInSec &&
        reports == other.reports;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sendingDelayInSec.hashCode);
    _$hash = $jc(_$hash, reports.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationRequestConfig')
          ..add('sendingDelayInSec', sendingDelayInSec)
          ..add('reports', reports))
        .toString();
  }
}

class NotificationRequestConfigBuilder
    implements
        Builder<NotificationRequestConfig, NotificationRequestConfigBuilder> {
  _$NotificationRequestConfig? _$v;

  int? _sendingDelayInSec;
  int? get sendingDelayInSec => _$this._sendingDelayInSec;
  set sendingDelayInSec(int? sendingDelayInSec) =>
      _$this._sendingDelayInSec = sendingDelayInSec;

  ListBuilder<ReportId>? _reports;
  ListBuilder<ReportId> get reports =>
      _$this._reports ??= ListBuilder<ReportId>();
  set reports(ListBuilder<ReportId>? reports) => _$this._reports = reports;

  NotificationRequestConfigBuilder() {
    NotificationRequestConfig._defaults(this);
  }

  NotificationRequestConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sendingDelayInSec = $v.sendingDelayInSec;
      _reports = $v.reports?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRequestConfig other) {
    _$v = other as _$NotificationRequestConfig;
  }

  @override
  void update(void Function(NotificationRequestConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRequestConfig build() => _build();

  _$NotificationRequestConfig _build() {
    _$NotificationRequestConfig _$result;
    try {
      _$result =
          _$v ??
          _$NotificationRequestConfig._(
            sendingDelayInSec: sendingDelayInSec,
            reports: _reports?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reports';
        _reports?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationRequestConfig',
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
