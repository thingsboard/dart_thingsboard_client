// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_app_notification_delivery_method_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileAppNotificationDeliveryMethodConfig
    extends MobileAppNotificationDeliveryMethodConfig {
  @override
  final bool? useSystemSettings;
  @override
  final String? firebaseServiceAccountCredentialsFileName;
  @override
  final String? firebaseServiceAccountCredentials;
  @override
  final String method;

  factory _$MobileAppNotificationDeliveryMethodConfig([
    void Function(MobileAppNotificationDeliveryMethodConfigBuilder)? updates,
  ]) => (MobileAppNotificationDeliveryMethodConfigBuilder()..update(updates))
      ._build();

  _$MobileAppNotificationDeliveryMethodConfig._({
    this.useSystemSettings,
    this.firebaseServiceAccountCredentialsFileName,
    this.firebaseServiceAccountCredentials,
    required this.method,
  }) : super._();
  @override
  MobileAppNotificationDeliveryMethodConfig rebuild(
    void Function(MobileAppNotificationDeliveryMethodConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MobileAppNotificationDeliveryMethodConfigBuilder toBuilder() =>
      MobileAppNotificationDeliveryMethodConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileAppNotificationDeliveryMethodConfig &&
        useSystemSettings == other.useSystemSettings &&
        firebaseServiceAccountCredentialsFileName ==
            other.firebaseServiceAccountCredentialsFileName &&
        firebaseServiceAccountCredentials ==
            other.firebaseServiceAccountCredentials &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, useSystemSettings.hashCode);
    _$hash = $jc(_$hash, firebaseServiceAccountCredentialsFileName.hashCode);
    _$hash = $jc(_$hash, firebaseServiceAccountCredentials.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'MobileAppNotificationDeliveryMethodConfig',
          )
          ..add('useSystemSettings', useSystemSettings)
          ..add(
            'firebaseServiceAccountCredentialsFileName',
            firebaseServiceAccountCredentialsFileName,
          )
          ..add(
            'firebaseServiceAccountCredentials',
            firebaseServiceAccountCredentials,
          )
          ..add('method', method))
        .toString();
  }
}

class MobileAppNotificationDeliveryMethodConfigBuilder
    implements
        Builder<
          MobileAppNotificationDeliveryMethodConfig,
          MobileAppNotificationDeliveryMethodConfigBuilder
        >,
        NotificationDeliveryMethodConfigBuilder {
  _$MobileAppNotificationDeliveryMethodConfig? _$v;

  bool? _useSystemSettings;
  bool? get useSystemSettings => _$this._useSystemSettings;
  set useSystemSettings(covariant bool? useSystemSettings) =>
      _$this._useSystemSettings = useSystemSettings;

  String? _firebaseServiceAccountCredentialsFileName;
  String? get firebaseServiceAccountCredentialsFileName =>
      _$this._firebaseServiceAccountCredentialsFileName;
  set firebaseServiceAccountCredentialsFileName(
    covariant String? firebaseServiceAccountCredentialsFileName,
  ) => _$this._firebaseServiceAccountCredentialsFileName =
      firebaseServiceAccountCredentialsFileName;

  String? _firebaseServiceAccountCredentials;
  String? get firebaseServiceAccountCredentials =>
      _$this._firebaseServiceAccountCredentials;
  set firebaseServiceAccountCredentials(
    covariant String? firebaseServiceAccountCredentials,
  ) => _$this._firebaseServiceAccountCredentials =
      firebaseServiceAccountCredentials;

  String? _method;
  String? get method => _$this._method;
  set method(covariant String? method) => _$this._method = method;

  MobileAppNotificationDeliveryMethodConfigBuilder() {
    MobileAppNotificationDeliveryMethodConfig._defaults(this);
  }

  MobileAppNotificationDeliveryMethodConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _useSystemSettings = $v.useSystemSettings;
      _firebaseServiceAccountCredentialsFileName =
          $v.firebaseServiceAccountCredentialsFileName;
      _firebaseServiceAccountCredentials = $v.firebaseServiceAccountCredentials;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MobileAppNotificationDeliveryMethodConfig other) {
    _$v = other as _$MobileAppNotificationDeliveryMethodConfig;
  }

  @override
  void update(
    void Function(MobileAppNotificationDeliveryMethodConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  MobileAppNotificationDeliveryMethodConfig build() => _build();

  _$MobileAppNotificationDeliveryMethodConfig _build() {
    final _$result =
        _$v ??
        _$MobileAppNotificationDeliveryMethodConfig._(
          useSystemSettings: useSystemSettings,
          firebaseServiceAccountCredentialsFileName:
              firebaseServiceAccountCredentialsFileName,
          firebaseServiceAccountCredentials: firebaseServiceAccountCredentials,
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'MobileAppNotificationDeliveryMethodConfig',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
