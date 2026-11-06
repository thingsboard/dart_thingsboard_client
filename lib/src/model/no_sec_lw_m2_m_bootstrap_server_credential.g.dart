// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'no_sec_lw_m2_m_bootstrap_server_credential.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSecLwM2MBootstrapServerCredential
    extends NoSecLwM2MBootstrapServerCredential {
  @override
  final int? clientHoldOffTime;
  @override
  final int? port;
  @override
  final String? serverCertificate;
  @override
  final bool? bootstrapServerIs;
  @override
  final int? bootstrapServerAccountTimeout;
  @override
  final String? host;
  @override
  final String? serverPublicKey;
  @override
  final int? lifetime;
  @override
  final String? binding;
  @override
  final bool? notifIfDisabled;
  @override
  final int? defaultMinPeriod;
  @override
  final int? shortServerId;
  @override
  final String securityMode;

  factory _$NoSecLwM2MBootstrapServerCredential([
    void Function(NoSecLwM2MBootstrapServerCredentialBuilder)? updates,
  ]) =>
      (NoSecLwM2MBootstrapServerCredentialBuilder()..update(updates))._build();

  _$NoSecLwM2MBootstrapServerCredential._({
    this.clientHoldOffTime,
    this.port,
    this.serverCertificate,
    this.bootstrapServerIs,
    this.bootstrapServerAccountTimeout,
    this.host,
    this.serverPublicKey,
    this.lifetime,
    this.binding,
    this.notifIfDisabled,
    this.defaultMinPeriod,
    this.shortServerId,
    required this.securityMode,
  }) : super._();
  @override
  NoSecLwM2MBootstrapServerCredential rebuild(
    void Function(NoSecLwM2MBootstrapServerCredentialBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NoSecLwM2MBootstrapServerCredentialBuilder toBuilder() =>
      NoSecLwM2MBootstrapServerCredentialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSecLwM2MBootstrapServerCredential &&
        clientHoldOffTime == other.clientHoldOffTime &&
        port == other.port &&
        serverCertificate == other.serverCertificate &&
        bootstrapServerIs == other.bootstrapServerIs &&
        bootstrapServerAccountTimeout == other.bootstrapServerAccountTimeout &&
        host == other.host &&
        serverPublicKey == other.serverPublicKey &&
        lifetime == other.lifetime &&
        binding == other.binding &&
        notifIfDisabled == other.notifIfDisabled &&
        defaultMinPeriod == other.defaultMinPeriod &&
        shortServerId == other.shortServerId &&
        securityMode == other.securityMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientHoldOffTime.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, serverCertificate.hashCode);
    _$hash = $jc(_$hash, bootstrapServerIs.hashCode);
    _$hash = $jc(_$hash, bootstrapServerAccountTimeout.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, serverPublicKey.hashCode);
    _$hash = $jc(_$hash, lifetime.hashCode);
    _$hash = $jc(_$hash, binding.hashCode);
    _$hash = $jc(_$hash, notifIfDisabled.hashCode);
    _$hash = $jc(_$hash, defaultMinPeriod.hashCode);
    _$hash = $jc(_$hash, shortServerId.hashCode);
    _$hash = $jc(_$hash, securityMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoSecLwM2MBootstrapServerCredential')
          ..add('clientHoldOffTime', clientHoldOffTime)
          ..add('port', port)
          ..add('serverCertificate', serverCertificate)
          ..add('bootstrapServerIs', bootstrapServerIs)
          ..add('bootstrapServerAccountTimeout', bootstrapServerAccountTimeout)
          ..add('host', host)
          ..add('serverPublicKey', serverPublicKey)
          ..add('lifetime', lifetime)
          ..add('binding', binding)
          ..add('notifIfDisabled', notifIfDisabled)
          ..add('defaultMinPeriod', defaultMinPeriod)
          ..add('shortServerId', shortServerId)
          ..add('securityMode', securityMode))
        .toString();
  }
}

class NoSecLwM2MBootstrapServerCredentialBuilder
    implements
        Builder<
          NoSecLwM2MBootstrapServerCredential,
          NoSecLwM2MBootstrapServerCredentialBuilder
        >,
        LwM2MBootstrapServerCredentialBuilder {
  _$NoSecLwM2MBootstrapServerCredential? _$v;

  int? _clientHoldOffTime;
  int? get clientHoldOffTime => _$this._clientHoldOffTime;
  set clientHoldOffTime(covariant int? clientHoldOffTime) =>
      _$this._clientHoldOffTime = clientHoldOffTime;

  int? _port;
  int? get port => _$this._port;
  set port(covariant int? port) => _$this._port = port;

  String? _serverCertificate;
  String? get serverCertificate => _$this._serverCertificate;
  set serverCertificate(covariant String? serverCertificate) =>
      _$this._serverCertificate = serverCertificate;

  bool? _bootstrapServerIs;
  bool? get bootstrapServerIs => _$this._bootstrapServerIs;
  set bootstrapServerIs(covariant bool? bootstrapServerIs) =>
      _$this._bootstrapServerIs = bootstrapServerIs;

  int? _bootstrapServerAccountTimeout;
  int? get bootstrapServerAccountTimeout =>
      _$this._bootstrapServerAccountTimeout;
  set bootstrapServerAccountTimeout(
    covariant int? bootstrapServerAccountTimeout,
  ) => _$this._bootstrapServerAccountTimeout = bootstrapServerAccountTimeout;

  String? _host;
  String? get host => _$this._host;
  set host(covariant String? host) => _$this._host = host;

  String? _serverPublicKey;
  String? get serverPublicKey => _$this._serverPublicKey;
  set serverPublicKey(covariant String? serverPublicKey) =>
      _$this._serverPublicKey = serverPublicKey;

  int? _lifetime;
  int? get lifetime => _$this._lifetime;
  set lifetime(covariant int? lifetime) => _$this._lifetime = lifetime;

  String? _binding;
  String? get binding => _$this._binding;
  set binding(covariant String? binding) => _$this._binding = binding;

  bool? _notifIfDisabled;
  bool? get notifIfDisabled => _$this._notifIfDisabled;
  set notifIfDisabled(covariant bool? notifIfDisabled) =>
      _$this._notifIfDisabled = notifIfDisabled;

  int? _defaultMinPeriod;
  int? get defaultMinPeriod => _$this._defaultMinPeriod;
  set defaultMinPeriod(covariant int? defaultMinPeriod) =>
      _$this._defaultMinPeriod = defaultMinPeriod;

  int? _shortServerId;
  int? get shortServerId => _$this._shortServerId;
  set shortServerId(covariant int? shortServerId) =>
      _$this._shortServerId = shortServerId;

  String? _securityMode;
  String? get securityMode => _$this._securityMode;
  set securityMode(covariant String? securityMode) =>
      _$this._securityMode = securityMode;

  NoSecLwM2MBootstrapServerCredentialBuilder() {
    NoSecLwM2MBootstrapServerCredential._defaults(this);
  }

  NoSecLwM2MBootstrapServerCredentialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientHoldOffTime = $v.clientHoldOffTime;
      _port = $v.port;
      _serverCertificate = $v.serverCertificate;
      _bootstrapServerIs = $v.bootstrapServerIs;
      _bootstrapServerAccountTimeout = $v.bootstrapServerAccountTimeout;
      _host = $v.host;
      _serverPublicKey = $v.serverPublicKey;
      _lifetime = $v.lifetime;
      _binding = $v.binding;
      _notifIfDisabled = $v.notifIfDisabled;
      _defaultMinPeriod = $v.defaultMinPeriod;
      _shortServerId = $v.shortServerId;
      _securityMode = $v.securityMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant NoSecLwM2MBootstrapServerCredential other) {
    _$v = other as _$NoSecLwM2MBootstrapServerCredential;
  }

  @override
  void update(
    void Function(NoSecLwM2MBootstrapServerCredentialBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  NoSecLwM2MBootstrapServerCredential build() => _build();

  _$NoSecLwM2MBootstrapServerCredential _build() {
    final _$result =
        _$v ??
        _$NoSecLwM2MBootstrapServerCredential._(
          clientHoldOffTime: clientHoldOffTime,
          port: port,
          serverCertificate: serverCertificate,
          bootstrapServerIs: bootstrapServerIs,
          bootstrapServerAccountTimeout: bootstrapServerAccountTimeout,
          host: host,
          serverPublicKey: serverPublicKey,
          lifetime: lifetime,
          binding: binding,
          notifIfDisabled: notifIfDisabled,
          defaultMinPeriod: defaultMinPeriod,
          shortServerId: shortServerId,
          securityMode: BuiltValueNullFieldError.checkNotNull(
            securityMode,
            r'NoSecLwM2MBootstrapServerCredential',
            'securityMode',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
