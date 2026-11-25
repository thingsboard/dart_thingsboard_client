// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snmp_device_transport_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SnmpDeviceTransportConfiguration
    extends SnmpDeviceTransportConfiguration {
  @override
  final String? contextName;
  @override
  final String? privacyPassphrase;
  @override
  final String? securityName;
  @override
  final int? port;
  @override
  final String? host;
  @override
  final String? authenticationPassphrase;
  @override
  final SnmpProtocolVersion? protocolVersion;
  @override
  final String? community;
  @override
  final AuthenticationProtocol? authenticationProtocol;
  @override
  final PrivacyProtocol? privacyProtocol;
  @override
  final String? username;
  @override
  final String? engineId;
  @override
  final String type;

  factory _$SnmpDeviceTransportConfiguration([
    void Function(SnmpDeviceTransportConfigurationBuilder)? updates,
  ]) => (SnmpDeviceTransportConfigurationBuilder()..update(updates))._build();

  _$SnmpDeviceTransportConfiguration._({
    this.contextName,
    this.privacyPassphrase,
    this.securityName,
    this.port,
    this.host,
    this.authenticationPassphrase,
    this.protocolVersion,
    this.community,
    this.authenticationProtocol,
    this.privacyProtocol,
    this.username,
    this.engineId,
    required this.type,
  }) : super._();
  @override
  SnmpDeviceTransportConfiguration rebuild(
    void Function(SnmpDeviceTransportConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SnmpDeviceTransportConfigurationBuilder toBuilder() =>
      SnmpDeviceTransportConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SnmpDeviceTransportConfiguration &&
        contextName == other.contextName &&
        privacyPassphrase == other.privacyPassphrase &&
        securityName == other.securityName &&
        port == other.port &&
        host == other.host &&
        authenticationPassphrase == other.authenticationPassphrase &&
        protocolVersion == other.protocolVersion &&
        community == other.community &&
        authenticationProtocol == other.authenticationProtocol &&
        privacyProtocol == other.privacyProtocol &&
        username == other.username &&
        engineId == other.engineId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contextName.hashCode);
    _$hash = $jc(_$hash, privacyPassphrase.hashCode);
    _$hash = $jc(_$hash, securityName.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, authenticationPassphrase.hashCode);
    _$hash = $jc(_$hash, protocolVersion.hashCode);
    _$hash = $jc(_$hash, community.hashCode);
    _$hash = $jc(_$hash, authenticationProtocol.hashCode);
    _$hash = $jc(_$hash, privacyProtocol.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, engineId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SnmpDeviceTransportConfiguration')
          ..add('contextName', contextName)
          ..add('privacyPassphrase', privacyPassphrase)
          ..add('securityName', securityName)
          ..add('port', port)
          ..add('host', host)
          ..add('authenticationPassphrase', authenticationPassphrase)
          ..add('protocolVersion', protocolVersion)
          ..add('community', community)
          ..add('authenticationProtocol', authenticationProtocol)
          ..add('privacyProtocol', privacyProtocol)
          ..add('username', username)
          ..add('engineId', engineId)
          ..add('type', type))
        .toString();
  }
}

class SnmpDeviceTransportConfigurationBuilder
    implements
        Builder<
          SnmpDeviceTransportConfiguration,
          SnmpDeviceTransportConfigurationBuilder
        >,
        DeviceTransportConfigurationBuilder {
  _$SnmpDeviceTransportConfiguration? _$v;

  String? _contextName;
  String? get contextName => _$this._contextName;
  set contextName(covariant String? contextName) =>
      _$this._contextName = contextName;

  String? _privacyPassphrase;
  String? get privacyPassphrase => _$this._privacyPassphrase;
  set privacyPassphrase(covariant String? privacyPassphrase) =>
      _$this._privacyPassphrase = privacyPassphrase;

  String? _securityName;
  String? get securityName => _$this._securityName;
  set securityName(covariant String? securityName) =>
      _$this._securityName = securityName;

  int? _port;
  int? get port => _$this._port;
  set port(covariant int? port) => _$this._port = port;

  String? _host;
  String? get host => _$this._host;
  set host(covariant String? host) => _$this._host = host;

  String? _authenticationPassphrase;
  String? get authenticationPassphrase => _$this._authenticationPassphrase;
  set authenticationPassphrase(covariant String? authenticationPassphrase) =>
      _$this._authenticationPassphrase = authenticationPassphrase;

  SnmpProtocolVersion? _protocolVersion;
  SnmpProtocolVersion? get protocolVersion => _$this._protocolVersion;
  set protocolVersion(covariant SnmpProtocolVersion? protocolVersion) =>
      _$this._protocolVersion = protocolVersion;

  String? _community;
  String? get community => _$this._community;
  set community(covariant String? community) => _$this._community = community;

  AuthenticationProtocol? _authenticationProtocol;
  AuthenticationProtocol? get authenticationProtocol =>
      _$this._authenticationProtocol;
  set authenticationProtocol(
    covariant AuthenticationProtocol? authenticationProtocol,
  ) => _$this._authenticationProtocol = authenticationProtocol;

  PrivacyProtocol? _privacyProtocol;
  PrivacyProtocol? get privacyProtocol => _$this._privacyProtocol;
  set privacyProtocol(covariant PrivacyProtocol? privacyProtocol) =>
      _$this._privacyProtocol = privacyProtocol;

  String? _username;
  String? get username => _$this._username;
  set username(covariant String? username) => _$this._username = username;

  String? _engineId;
  String? get engineId => _$this._engineId;
  set engineId(covariant String? engineId) => _$this._engineId = engineId;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  SnmpDeviceTransportConfigurationBuilder() {
    SnmpDeviceTransportConfiguration._defaults(this);
  }

  SnmpDeviceTransportConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contextName = $v.contextName;
      _privacyPassphrase = $v.privacyPassphrase;
      _securityName = $v.securityName;
      _port = $v.port;
      _host = $v.host;
      _authenticationPassphrase = $v.authenticationPassphrase;
      _protocolVersion = $v.protocolVersion;
      _community = $v.community;
      _authenticationProtocol = $v.authenticationProtocol;
      _privacyProtocol = $v.privacyProtocol;
      _username = $v.username;
      _engineId = $v.engineId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SnmpDeviceTransportConfiguration other) {
    _$v = other as _$SnmpDeviceTransportConfiguration;
  }

  @override
  void update(void Function(SnmpDeviceTransportConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SnmpDeviceTransportConfiguration build() => _build();

  _$SnmpDeviceTransportConfiguration _build() {
    final _$result =
        _$v ??
        _$SnmpDeviceTransportConfiguration._(
          contextName: contextName,
          privacyPassphrase: privacyPassphrase,
          securityName: securityName,
          port: port,
          host: host,
          authenticationPassphrase: authenticationPassphrase,
          protocolVersion: protocolVersion,
          community: community,
          authenticationProtocol: authenticationProtocol,
          privacyProtocol: privacyProtocol,
          username: username,
          engineId: engineId,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'SnmpDeviceTransportConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
