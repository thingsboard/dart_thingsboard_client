// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skipped_app.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SkippedApp extends SkippedApp {
  @override
  final AgentId? agentId;
  @override
  final String? agentName;
  @override
  final AgentApplicationId? applicationId;
  @override
  final String? applicationName;
  @override
  final SkipReason? reason;
  @override
  final String? msg;

  factory _$SkippedApp([void Function(SkippedAppBuilder)? updates]) =>
      (SkippedAppBuilder()..update(updates))._build();

  _$SkippedApp._({
    this.agentId,
    this.agentName,
    this.applicationId,
    this.applicationName,
    this.reason,
    this.msg,
  }) : super._();
  @override
  SkippedApp rebuild(void Function(SkippedAppBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkippedAppBuilder toBuilder() => SkippedAppBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SkippedApp &&
        agentId == other.agentId &&
        agentName == other.agentName &&
        applicationId == other.applicationId &&
        applicationName == other.applicationName &&
        reason == other.reason &&
        msg == other.msg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, agentId.hashCode);
    _$hash = $jc(_$hash, agentName.hashCode);
    _$hash = $jc(_$hash, applicationId.hashCode);
    _$hash = $jc(_$hash, applicationName.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SkippedApp')
          ..add('agentId', agentId)
          ..add('agentName', agentName)
          ..add('applicationId', applicationId)
          ..add('applicationName', applicationName)
          ..add('reason', reason)
          ..add('msg', msg))
        .toString();
  }
}

class SkippedAppBuilder implements Builder<SkippedApp, SkippedAppBuilder> {
  _$SkippedApp? _$v;

  AgentIdBuilder? _agentId;
  AgentIdBuilder get agentId => _$this._agentId ??= AgentIdBuilder();
  set agentId(AgentIdBuilder? agentId) => _$this._agentId = agentId;

  String? _agentName;
  String? get agentName => _$this._agentName;
  set agentName(String? agentName) => _$this._agentName = agentName;

  AgentApplicationIdBuilder? _applicationId;
  AgentApplicationIdBuilder get applicationId =>
      _$this._applicationId ??= AgentApplicationIdBuilder();
  set applicationId(AgentApplicationIdBuilder? applicationId) =>
      _$this._applicationId = applicationId;

  String? _applicationName;
  String? get applicationName => _$this._applicationName;
  set applicationName(String? applicationName) =>
      _$this._applicationName = applicationName;

  SkipReason? _reason;
  SkipReason? get reason => _$this._reason;
  set reason(SkipReason? reason) => _$this._reason = reason;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  SkippedAppBuilder() {
    SkippedApp._defaults(this);
  }

  SkippedAppBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _agentId = $v.agentId?.toBuilder();
      _agentName = $v.agentName;
      _applicationId = $v.applicationId?.toBuilder();
      _applicationName = $v.applicationName;
      _reason = $v.reason;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SkippedApp other) {
    _$v = other as _$SkippedApp;
  }

  @override
  void update(void Function(SkippedAppBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SkippedApp build() => _build();

  _$SkippedApp _build() {
    _$SkippedApp _$result;
    try {
      _$result =
          _$v ??
          _$SkippedApp._(
            agentId: _agentId?.build(),
            agentName: agentName,
            applicationId: _applicationId?.build(),
            applicationName: applicationName,
            reason: reason,
            msg: msg,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'agentId';
        _agentId?.build();

        _$failedField = 'applicationId';
        _applicationId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SkippedApp',
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
