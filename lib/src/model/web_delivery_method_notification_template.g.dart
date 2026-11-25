// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_delivery_method_notification_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebDeliveryMethodNotificationTemplate
    extends WebDeliveryMethodNotificationTemplate {
  @override
  final String subject;
  @override
  final JsonObject? additionalConfig;
  @override
  final bool? enabled;
  @override
  final String body;
  @override
  final String method;

  factory _$WebDeliveryMethodNotificationTemplate([
    void Function(WebDeliveryMethodNotificationTemplateBuilder)? updates,
  ]) => (WebDeliveryMethodNotificationTemplateBuilder()..update(updates))
      ._build();

  _$WebDeliveryMethodNotificationTemplate._({
    required this.subject,
    this.additionalConfig,
    this.enabled,
    required this.body,
    required this.method,
  }) : super._();
  @override
  WebDeliveryMethodNotificationTemplate rebuild(
    void Function(WebDeliveryMethodNotificationTemplateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  WebDeliveryMethodNotificationTemplateBuilder toBuilder() =>
      WebDeliveryMethodNotificationTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebDeliveryMethodNotificationTemplate &&
        subject == other.subject &&
        additionalConfig == other.additionalConfig &&
        enabled == other.enabled &&
        body == other.body &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, additionalConfig.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WebDeliveryMethodNotificationTemplate',
          )
          ..add('subject', subject)
          ..add('additionalConfig', additionalConfig)
          ..add('enabled', enabled)
          ..add('body', body)
          ..add('method', method))
        .toString();
  }
}

class WebDeliveryMethodNotificationTemplateBuilder
    implements
        Builder<
          WebDeliveryMethodNotificationTemplate,
          WebDeliveryMethodNotificationTemplateBuilder
        >,
        DeliveryMethodNotificationTemplateBuilder {
  _$WebDeliveryMethodNotificationTemplate? _$v;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(covariant String? subject) => _$this._subject = subject;

  JsonObject? _additionalConfig;
  JsonObject? get additionalConfig => _$this._additionalConfig;
  set additionalConfig(covariant JsonObject? additionalConfig) =>
      _$this._additionalConfig = additionalConfig;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(covariant bool? enabled) => _$this._enabled = enabled;

  String? _body;
  String? get body => _$this._body;
  set body(covariant String? body) => _$this._body = body;

  String? _method;
  String? get method => _$this._method;
  set method(covariant String? method) => _$this._method = method;

  WebDeliveryMethodNotificationTemplateBuilder() {
    WebDeliveryMethodNotificationTemplate._defaults(this);
  }

  WebDeliveryMethodNotificationTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subject = $v.subject;
      _additionalConfig = $v.additionalConfig;
      _enabled = $v.enabled;
      _body = $v.body;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant WebDeliveryMethodNotificationTemplate other) {
    _$v = other as _$WebDeliveryMethodNotificationTemplate;
  }

  @override
  void update(
    void Function(WebDeliveryMethodNotificationTemplateBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  WebDeliveryMethodNotificationTemplate build() => _build();

  _$WebDeliveryMethodNotificationTemplate _build() {
    final _$result =
        _$v ??
        _$WebDeliveryMethodNotificationTemplate._(
          subject: BuiltValueNullFieldError.checkNotNull(
            subject,
            r'WebDeliveryMethodNotificationTemplate',
            'subject',
          ),
          additionalConfig: additionalConfig,
          enabled: enabled,
          body: BuiltValueNullFieldError.checkNotNull(
            body,
            r'WebDeliveryMethodNotificationTemplate',
            'body',
          ),
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'WebDeliveryMethodNotificationTemplate',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
