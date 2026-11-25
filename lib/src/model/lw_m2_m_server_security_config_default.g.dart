// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lw_m2_m_server_security_config_default.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LwM2MServerSecurityConfigDefault
    extends LwM2MServerSecurityConfigDefault {
  @override
  final int? shortServerId;
  @override
  final bool? bootstrapServerIs;
  @override
  final String? host;
  @override
  final int? port;
  @override
  final int? clientHoldOffTime;
  @override
  final String? serverPublicKey;
  @override
  final String? serverCertificate;
  @override
  final int? bootstrapServerAccountTimeout;
  @override
  final int? lifetime;
  @override
  final int? defaultMinPeriod;
  @override
  final bool? notifIfDisabled;
  @override
  final String? binding;
  @override
  final String? securityHost;
  @override
  final int? securityPort;

  factory _$LwM2MServerSecurityConfigDefault([
    void Function(LwM2MServerSecurityConfigDefaultBuilder)? updates,
  ]) => (LwM2MServerSecurityConfigDefaultBuilder()..update(updates))._build();

  _$LwM2MServerSecurityConfigDefault._({
    this.shortServerId,
    this.bootstrapServerIs,
    this.host,
    this.port,
    this.clientHoldOffTime,
    this.serverPublicKey,
    this.serverCertificate,
    this.bootstrapServerAccountTimeout,
    this.lifetime,
    this.defaultMinPeriod,
    this.notifIfDisabled,
    this.binding,
    this.securityHost,
    this.securityPort,
  }) : super._();
  @override
  LwM2MServerSecurityConfigDefault rebuild(
    void Function(LwM2MServerSecurityConfigDefaultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LwM2MServerSecurityConfigDefaultBuilder toBuilder() =>
      LwM2MServerSecurityConfigDefaultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LwM2MServerSecurityConfigDefault &&
        shortServerId == other.shortServerId &&
        bootstrapServerIs == other.bootstrapServerIs &&
        host == other.host &&
        port == other.port &&
        clientHoldOffTime == other.clientHoldOffTime &&
        serverPublicKey == other.serverPublicKey &&
        serverCertificate == other.serverCertificate &&
        bootstrapServerAccountTimeout == other.bootstrapServerAccountTimeout &&
        lifetime == other.lifetime &&
        defaultMinPeriod == other.defaultMinPeriod &&
        notifIfDisabled == other.notifIfDisabled &&
        binding == other.binding &&
        securityHost == other.securityHost &&
        securityPort == other.securityPort;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shortServerId.hashCode);
    _$hash = $jc(_$hash, bootstrapServerIs.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, clientHoldOffTime.hashCode);
    _$hash = $jc(_$hash, serverPublicKey.hashCode);
    _$hash = $jc(_$hash, serverCertificate.hashCode);
    _$hash = $jc(_$hash, bootstrapServerAccountTimeout.hashCode);
    _$hash = $jc(_$hash, lifetime.hashCode);
    _$hash = $jc(_$hash, defaultMinPeriod.hashCode);
    _$hash = $jc(_$hash, notifIfDisabled.hashCode);
    _$hash = $jc(_$hash, binding.hashCode);
    _$hash = $jc(_$hash, securityHost.hashCode);
    _$hash = $jc(_$hash, securityPort.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LwM2MServerSecurityConfigDefault')
          ..add('shortServerId', shortServerId)
          ..add('bootstrapServerIs', bootstrapServerIs)
          ..add('host', host)
          ..add('port', port)
          ..add('clientHoldOffTime', clientHoldOffTime)
          ..add('serverPublicKey', serverPublicKey)
          ..add('serverCertificate', serverCertificate)
          ..add('bootstrapServerAccountTimeout', bootstrapServerAccountTimeout)
          ..add('lifetime', lifetime)
          ..add('defaultMinPeriod', defaultMinPeriod)
          ..add('notifIfDisabled', notifIfDisabled)
          ..add('binding', binding)
          ..add('securityHost', securityHost)
          ..add('securityPort', securityPort))
        .toString();
  }
}

class LwM2MServerSecurityConfigDefaultBuilder
    implements
        Builder<
          LwM2MServerSecurityConfigDefault,
          LwM2MServerSecurityConfigDefaultBuilder
        > {
  _$LwM2MServerSecurityConfigDefault? _$v;

  int? _shortServerId;
  int? get shortServerId => _$this._shortServerId;
  set shortServerId(int? shortServerId) =>
      _$this._shortServerId = shortServerId;

  bool? _bootstrapServerIs;
  bool? get bootstrapServerIs => _$this._bootstrapServerIs;
  set bootstrapServerIs(bool? bootstrapServerIs) =>
      _$this._bootstrapServerIs = bootstrapServerIs;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  int? _clientHoldOffTime;
  int? get clientHoldOffTime => _$this._clientHoldOffTime;
  set clientHoldOffTime(int? clientHoldOffTime) =>
      _$this._clientHoldOffTime = clientHoldOffTime;

  String? _serverPublicKey;
  String? get serverPublicKey => _$this._serverPublicKey;
  set serverPublicKey(String? serverPublicKey) =>
      _$this._serverPublicKey = serverPublicKey;

  String? _serverCertificate;
  String? get serverCertificate => _$this._serverCertificate;
  set serverCertificate(String? serverCertificate) =>
      _$this._serverCertificate = serverCertificate;

  int? _bootstrapServerAccountTimeout;
  int? get bootstrapServerAccountTimeout =>
      _$this._bootstrapServerAccountTimeout;
  set bootstrapServerAccountTimeout(int? bootstrapServerAccountTimeout) =>
      _$this._bootstrapServerAccountTimeout = bootstrapServerAccountTimeout;

  int? _lifetime;
  int? get lifetime => _$this._lifetime;
  set lifetime(int? lifetime) => _$this._lifetime = lifetime;

  int? _defaultMinPeriod;
  int? get defaultMinPeriod => _$this._defaultMinPeriod;
  set defaultMinPeriod(int? defaultMinPeriod) =>
      _$this._defaultMinPeriod = defaultMinPeriod;

  bool? _notifIfDisabled;
  bool? get notifIfDisabled => _$this._notifIfDisabled;
  set notifIfDisabled(bool? notifIfDisabled) =>
      _$this._notifIfDisabled = notifIfDisabled;

  String? _binding;
  String? get binding => _$this._binding;
  set binding(String? binding) => _$this._binding = binding;

  String? _securityHost;
  String? get securityHost => _$this._securityHost;
  set securityHost(String? securityHost) => _$this._securityHost = securityHost;

  int? _securityPort;
  int? get securityPort => _$this._securityPort;
  set securityPort(int? securityPort) => _$this._securityPort = securityPort;

  LwM2MServerSecurityConfigDefaultBuilder() {
    LwM2MServerSecurityConfigDefault._defaults(this);
  }

  LwM2MServerSecurityConfigDefaultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shortServerId = $v.shortServerId;
      _bootstrapServerIs = $v.bootstrapServerIs;
      _host = $v.host;
      _port = $v.port;
      _clientHoldOffTime = $v.clientHoldOffTime;
      _serverPublicKey = $v.serverPublicKey;
      _serverCertificate = $v.serverCertificate;
      _bootstrapServerAccountTimeout = $v.bootstrapServerAccountTimeout;
      _lifetime = $v.lifetime;
      _defaultMinPeriod = $v.defaultMinPeriod;
      _notifIfDisabled = $v.notifIfDisabled;
      _binding = $v.binding;
      _securityHost = $v.securityHost;
      _securityPort = $v.securityPort;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LwM2MServerSecurityConfigDefault other) {
    _$v = other as _$LwM2MServerSecurityConfigDefault;
  }

  @override
  void update(void Function(LwM2MServerSecurityConfigDefaultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LwM2MServerSecurityConfigDefault build() => _build();

  _$LwM2MServerSecurityConfigDefault _build() {
    final _$result =
        _$v ??
        _$LwM2MServerSecurityConfigDefault._(
          shortServerId: shortServerId,
          bootstrapServerIs: bootstrapServerIs,
          host: host,
          port: port,
          clientHoldOffTime: clientHoldOffTime,
          serverPublicKey: serverPublicKey,
          serverCertificate: serverCertificate,
          bootstrapServerAccountTimeout: bootstrapServerAccountTimeout,
          lifetime: lifetime,
          defaultMinPeriod: defaultMinPeriod,
          notifIfDisabled: notifIfDisabled,
          binding: binding,
          securityHost: securityHost,
          securityPort: securityPort,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
