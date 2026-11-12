// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slack_delivery_method_notification_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SlackDeliveryMethodNotificationTemplate
    extends SlackDeliveryMethodNotificationTemplate {
  @override
  final bool? enabled;
  @override
  final String body;
  @override
  final String method;

  factory _$SlackDeliveryMethodNotificationTemplate([
    void Function(SlackDeliveryMethodNotificationTemplateBuilder)? updates,
  ]) => (SlackDeliveryMethodNotificationTemplateBuilder()..update(updates))
      ._build();

  _$SlackDeliveryMethodNotificationTemplate._({
    this.enabled,
    required this.body,
    required this.method,
  }) : super._();
  @override
  SlackDeliveryMethodNotificationTemplate rebuild(
    void Function(SlackDeliveryMethodNotificationTemplateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SlackDeliveryMethodNotificationTemplateBuilder toBuilder() =>
      SlackDeliveryMethodNotificationTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SlackDeliveryMethodNotificationTemplate &&
        enabled == other.enabled &&
        body == other.body &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SlackDeliveryMethodNotificationTemplate',
          )
          ..add('enabled', enabled)
          ..add('body', body)
          ..add('method', method))
        .toString();
  }
}

class SlackDeliveryMethodNotificationTemplateBuilder
    implements
        Builder<
          SlackDeliveryMethodNotificationTemplate,
          SlackDeliveryMethodNotificationTemplateBuilder
        >,
        DeliveryMethodNotificationTemplateBuilder {
  _$SlackDeliveryMethodNotificationTemplate? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(covariant bool? enabled) => _$this._enabled = enabled;

  String? _body;
  String? get body => _$this._body;
  set body(covariant String? body) => _$this._body = body;

  String? _method;
  String? get method => _$this._method;
  set method(covariant String? method) => _$this._method = method;

  SlackDeliveryMethodNotificationTemplateBuilder() {
    SlackDeliveryMethodNotificationTemplate._defaults(this);
  }

  SlackDeliveryMethodNotificationTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _body = $v.body;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SlackDeliveryMethodNotificationTemplate other) {
    _$v = other as _$SlackDeliveryMethodNotificationTemplate;
  }

  @override
  void update(
    void Function(SlackDeliveryMethodNotificationTemplateBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SlackDeliveryMethodNotificationTemplate build() => _build();

  _$SlackDeliveryMethodNotificationTemplate _build() {
    final _$result =
        _$v ??
        _$SlackDeliveryMethodNotificationTemplate._(
          enabled: enabled,
          body: BuiltValueNullFieldError.checkNotNull(
            body,
            r'SlackDeliveryMethodNotificationTemplate',
            'body',
          ),
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'SlackDeliveryMethodNotificationTemplate',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
