// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lw_m2_m_bootstrap_server_credential.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class LwM2MBootstrapServerCredentialBuilder {
  void replace(LwM2MBootstrapServerCredential other);
  void update(void Function(LwM2MBootstrapServerCredentialBuilder) updates);
  String? get securityMode;
  set securityMode(String? securityMode);
}

class _$$LwM2MBootstrapServerCredential
    extends $LwM2MBootstrapServerCredential {
  @override
  final String securityMode;

  factory _$$LwM2MBootstrapServerCredential([
    void Function($LwM2MBootstrapServerCredentialBuilder)? updates,
  ]) => ($LwM2MBootstrapServerCredentialBuilder()..update(updates))._build();

  _$$LwM2MBootstrapServerCredential._({required this.securityMode}) : super._();
  @override
  $LwM2MBootstrapServerCredential rebuild(
    void Function($LwM2MBootstrapServerCredentialBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $LwM2MBootstrapServerCredentialBuilder toBuilder() =>
      $LwM2MBootstrapServerCredentialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $LwM2MBootstrapServerCredential &&
        securityMode == other.securityMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, securityMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$LwM2MBootstrapServerCredential',
    )..add('securityMode', securityMode)).toString();
  }
}

class $LwM2MBootstrapServerCredentialBuilder
    implements
        Builder<
          $LwM2MBootstrapServerCredential,
          $LwM2MBootstrapServerCredentialBuilder
        >,
        LwM2MBootstrapServerCredentialBuilder {
  _$$LwM2MBootstrapServerCredential? _$v;

  String? _securityMode;
  String? get securityMode => _$this._securityMode;
  set securityMode(covariant String? securityMode) =>
      _$this._securityMode = securityMode;

  $LwM2MBootstrapServerCredentialBuilder() {
    $LwM2MBootstrapServerCredential._defaults(this);
  }

  $LwM2MBootstrapServerCredentialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _securityMode = $v.securityMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $LwM2MBootstrapServerCredential other) {
    _$v = other as _$$LwM2MBootstrapServerCredential;
  }

  @override
  void update(void Function($LwM2MBootstrapServerCredentialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $LwM2MBootstrapServerCredential build() => _build();

  _$$LwM2MBootstrapServerCredential _build() {
    final _$result =
        _$v ??
        _$$LwM2MBootstrapServerCredential._(
          securityMode: BuiltValueNullFieldError.checkNotNull(
            securityMode,
            r'$LwM2MBootstrapServerCredential',
            'securityMode',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
