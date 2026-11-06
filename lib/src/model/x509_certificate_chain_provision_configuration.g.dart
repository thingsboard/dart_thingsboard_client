// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'x509_certificate_chain_provision_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$X509CertificateChainProvisionConfiguration
    extends X509CertificateChainProvisionConfiguration {
  @override
  final bool? allowCreateNewDevicesByX509Certificate;
  @override
  final String? certificateRegExPattern;
  @override
  final String? provisionDeviceSecret;
  @override
  final String type;

  factory _$X509CertificateChainProvisionConfiguration([
    void Function(X509CertificateChainProvisionConfigurationBuilder)? updates,
  ]) => (X509CertificateChainProvisionConfigurationBuilder()..update(updates))
      ._build();

  _$X509CertificateChainProvisionConfiguration._({
    this.allowCreateNewDevicesByX509Certificate,
    this.certificateRegExPattern,
    this.provisionDeviceSecret,
    required this.type,
  }) : super._();
  @override
  X509CertificateChainProvisionConfiguration rebuild(
    void Function(X509CertificateChainProvisionConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  X509CertificateChainProvisionConfigurationBuilder toBuilder() =>
      X509CertificateChainProvisionConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is X509CertificateChainProvisionConfiguration &&
        allowCreateNewDevicesByX509Certificate ==
            other.allowCreateNewDevicesByX509Certificate &&
        certificateRegExPattern == other.certificateRegExPattern &&
        provisionDeviceSecret == other.provisionDeviceSecret &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowCreateNewDevicesByX509Certificate.hashCode);
    _$hash = $jc(_$hash, certificateRegExPattern.hashCode);
    _$hash = $jc(_$hash, provisionDeviceSecret.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'X509CertificateChainProvisionConfiguration',
          )
          ..add(
            'allowCreateNewDevicesByX509Certificate',
            allowCreateNewDevicesByX509Certificate,
          )
          ..add('certificateRegExPattern', certificateRegExPattern)
          ..add('provisionDeviceSecret', provisionDeviceSecret)
          ..add('type', type))
        .toString();
  }
}

class X509CertificateChainProvisionConfigurationBuilder
    implements
        Builder<
          X509CertificateChainProvisionConfiguration,
          X509CertificateChainProvisionConfigurationBuilder
        >,
        DeviceProfileProvisionConfigurationBuilder {
  _$X509CertificateChainProvisionConfiguration? _$v;

  bool? _allowCreateNewDevicesByX509Certificate;
  bool? get allowCreateNewDevicesByX509Certificate =>
      _$this._allowCreateNewDevicesByX509Certificate;
  set allowCreateNewDevicesByX509Certificate(
    covariant bool? allowCreateNewDevicesByX509Certificate,
  ) => _$this._allowCreateNewDevicesByX509Certificate =
      allowCreateNewDevicesByX509Certificate;

  String? _certificateRegExPattern;
  String? get certificateRegExPattern => _$this._certificateRegExPattern;
  set certificateRegExPattern(covariant String? certificateRegExPattern) =>
      _$this._certificateRegExPattern = certificateRegExPattern;

  String? _provisionDeviceSecret;
  String? get provisionDeviceSecret => _$this._provisionDeviceSecret;
  set provisionDeviceSecret(covariant String? provisionDeviceSecret) =>
      _$this._provisionDeviceSecret = provisionDeviceSecret;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  X509CertificateChainProvisionConfigurationBuilder() {
    X509CertificateChainProvisionConfiguration._defaults(this);
  }

  X509CertificateChainProvisionConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowCreateNewDevicesByX509Certificate =
          $v.allowCreateNewDevicesByX509Certificate;
      _certificateRegExPattern = $v.certificateRegExPattern;
      _provisionDeviceSecret = $v.provisionDeviceSecret;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant X509CertificateChainProvisionConfiguration other) {
    _$v = other as _$X509CertificateChainProvisionConfiguration;
  }

  @override
  void update(
    void Function(X509CertificateChainProvisionConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  X509CertificateChainProvisionConfiguration build() => _build();

  _$X509CertificateChainProvisionConfiguration _build() {
    final _$result =
        _$v ??
        _$X509CertificateChainProvisionConfiguration._(
          allowCreateNewDevicesByX509Certificate:
              allowCreateNewDevicesByX509Certificate,
          certificateRegExPattern: certificateRegExPattern,
          provisionDeviceSecret: provisionDeviceSecret,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'X509CertificateChainProvisionConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
