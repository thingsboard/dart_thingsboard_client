// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_delivery_method_notification_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailDeliveryMethodNotificationTemplate
    extends EmailDeliveryMethodNotificationTemplate {
  @override
  final String subject;
  @override
  final bool? enabled;
  @override
  final String body;
  @override
  final String method;

  factory _$EmailDeliveryMethodNotificationTemplate([
    void Function(EmailDeliveryMethodNotificationTemplateBuilder)? updates,
  ]) => (EmailDeliveryMethodNotificationTemplateBuilder()..update(updates))
      ._build();

  _$EmailDeliveryMethodNotificationTemplate._({
    required this.subject,
    this.enabled,
    required this.body,
    required this.method,
  }) : super._();
  @override
  EmailDeliveryMethodNotificationTemplate rebuild(
    void Function(EmailDeliveryMethodNotificationTemplateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EmailDeliveryMethodNotificationTemplateBuilder toBuilder() =>
      EmailDeliveryMethodNotificationTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailDeliveryMethodNotificationTemplate &&
        subject == other.subject &&
        enabled == other.enabled &&
        body == other.body &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EmailDeliveryMethodNotificationTemplate',
          )
          ..add('subject', subject)
          ..add('enabled', enabled)
          ..add('body', body)
          ..add('method', method))
        .toString();
  }
}

class EmailDeliveryMethodNotificationTemplateBuilder
    implements
        Builder<
          EmailDeliveryMethodNotificationTemplate,
          EmailDeliveryMethodNotificationTemplateBuilder
        >,
        DeliveryMethodNotificationTemplateBuilder {
  _$EmailDeliveryMethodNotificationTemplate? _$v;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(covariant String? subject) => _$this._subject = subject;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(covariant bool? enabled) => _$this._enabled = enabled;

  String? _body;
  String? get body => _$this._body;
  set body(covariant String? body) => _$this._body = body;

  String? _method;
  String? get method => _$this._method;
  set method(covariant String? method) => _$this._method = method;

  EmailDeliveryMethodNotificationTemplateBuilder() {
    EmailDeliveryMethodNotificationTemplate._defaults(this);
  }

  EmailDeliveryMethodNotificationTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subject = $v.subject;
      _enabled = $v.enabled;
      _body = $v.body;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EmailDeliveryMethodNotificationTemplate other) {
    _$v = other as _$EmailDeliveryMethodNotificationTemplate;
  }

  @override
  void update(
    void Function(EmailDeliveryMethodNotificationTemplateBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EmailDeliveryMethodNotificationTemplate build() => _build();

  _$EmailDeliveryMethodNotificationTemplate _build() {
    final _$result =
        _$v ??
        _$EmailDeliveryMethodNotificationTemplate._(
          subject: BuiltValueNullFieldError.checkNotNull(
            subject,
            r'EmailDeliveryMethodNotificationTemplate',
            'subject',
          ),
          enabled: enabled,
          body: BuiltValueNullFieldError.checkNotNull(
            body,
            r'EmailDeliveryMethodNotificationTemplate',
            'body',
          ),
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'EmailDeliveryMethodNotificationTemplate',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
