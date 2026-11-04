// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slack_notification_delivery_method_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SlackNotificationDeliveryMethodConfig
    extends SlackNotificationDeliveryMethodConfig {
  @override
  final String botToken;
  @override
  final String method;

  factory _$SlackNotificationDeliveryMethodConfig([
    void Function(SlackNotificationDeliveryMethodConfigBuilder)? updates,
  ]) => (SlackNotificationDeliveryMethodConfigBuilder()..update(updates))
      ._build();

  _$SlackNotificationDeliveryMethodConfig._({
    required this.botToken,
    required this.method,
  }) : super._();
  @override
  SlackNotificationDeliveryMethodConfig rebuild(
    void Function(SlackNotificationDeliveryMethodConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SlackNotificationDeliveryMethodConfigBuilder toBuilder() =>
      SlackNotificationDeliveryMethodConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SlackNotificationDeliveryMethodConfig &&
        botToken == other.botToken &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, botToken.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SlackNotificationDeliveryMethodConfig',
          )
          ..add('botToken', botToken)
          ..add('method', method))
        .toString();
  }
}

class SlackNotificationDeliveryMethodConfigBuilder
    implements
        Builder<
          SlackNotificationDeliveryMethodConfig,
          SlackNotificationDeliveryMethodConfigBuilder
        >,
        NotificationDeliveryMethodConfigBuilder {
  _$SlackNotificationDeliveryMethodConfig? _$v;

  String? _botToken;
  String? get botToken => _$this._botToken;
  set botToken(covariant String? botToken) => _$this._botToken = botToken;

  String? _method;
  String? get method => _$this._method;
  set method(covariant String? method) => _$this._method = method;

  SlackNotificationDeliveryMethodConfigBuilder() {
    SlackNotificationDeliveryMethodConfig._defaults(this);
  }

  SlackNotificationDeliveryMethodConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _botToken = $v.botToken;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SlackNotificationDeliveryMethodConfig other) {
    _$v = other as _$SlackNotificationDeliveryMethodConfig;
  }

  @override
  void update(
    void Function(SlackNotificationDeliveryMethodConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SlackNotificationDeliveryMethodConfig build() => _build();

  _$SlackNotificationDeliveryMethodConfig _build() {
    final _$result =
        _$v ??
        _$SlackNotificationDeliveryMethodConfig._(
          botToken: BuiltValueNullFieldError.checkNotNull(
            botToken,
            r'SlackNotificationDeliveryMethodConfig',
            'botToken',
          ),
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'SlackNotificationDeliveryMethodConfig',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
