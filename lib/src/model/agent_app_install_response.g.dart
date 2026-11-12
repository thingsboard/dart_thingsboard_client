// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_install_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppInstallResponse extends AgentAppInstallResponse {
  @override
  final AgentApplication? application;
  @override
  final AgentAppEvent? event;

  factory _$AgentAppInstallResponse([
    void Function(AgentAppInstallResponseBuilder)? updates,
  ]) => (AgentAppInstallResponseBuilder()..update(updates))._build();

  _$AgentAppInstallResponse._({this.application, this.event}) : super._();
  @override
  AgentAppInstallResponse rebuild(
    void Function(AgentAppInstallResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AgentAppInstallResponseBuilder toBuilder() =>
      AgentAppInstallResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppInstallResponse &&
        application == other.application &&
        event == other.event;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, application.hashCode);
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentAppInstallResponse')
          ..add('application', application)
          ..add('event', event))
        .toString();
  }
}

class AgentAppInstallResponseBuilder
    implements
        Builder<AgentAppInstallResponse, AgentAppInstallResponseBuilder> {
  _$AgentAppInstallResponse? _$v;

  AgentApplicationBuilder? _application;
  AgentApplicationBuilder get application =>
      _$this._application ??= AgentApplicationBuilder();
  set application(AgentApplicationBuilder? application) =>
      _$this._application = application;

  AgentAppEventBuilder? _event;
  AgentAppEventBuilder get event => _$this._event ??= AgentAppEventBuilder();
  set event(AgentAppEventBuilder? event) => _$this._event = event;

  AgentAppInstallResponseBuilder() {
    AgentAppInstallResponse._defaults(this);
  }

  AgentAppInstallResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _application = $v.application?.toBuilder();
      _event = $v.event?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentAppInstallResponse other) {
    _$v = other as _$AgentAppInstallResponse;
  }

  @override
  void update(void Function(AgentAppInstallResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppInstallResponse build() => _build();

  _$AgentAppInstallResponse _build() {
    _$AgentAppInstallResponse _$result;
    try {
      _$result =
          _$v ??
          _$AgentAppInstallResponse._(
            application: _application?.build(),
            event: _event?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'application';
        _application?.build();
        _$failedField = 'event';
        _event?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentAppInstallResponse',
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
