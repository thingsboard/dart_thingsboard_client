// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_method_notification_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class DeliveryMethodNotificationTemplateBuilder {
  void replace(DeliveryMethodNotificationTemplate other);
  void update(void Function(DeliveryMethodNotificationTemplateBuilder) updates);
  bool? get enabled;
  set enabled(bool? enabled);

  String? get body;
  set body(String? body);

  String? get method;
  set method(String? method);
}

class _$$DeliveryMethodNotificationTemplate
    extends $DeliveryMethodNotificationTemplate {
  @override
  final bool? enabled;
  @override
  final String body;
  @override
  final String method;

  factory _$$DeliveryMethodNotificationTemplate([
    void Function($DeliveryMethodNotificationTemplateBuilder)? updates,
  ]) =>
      ($DeliveryMethodNotificationTemplateBuilder()..update(updates))._build();

  _$$DeliveryMethodNotificationTemplate._({
    this.enabled,
    required this.body,
    required this.method,
  }) : super._();
  @override
  $DeliveryMethodNotificationTemplate rebuild(
    void Function($DeliveryMethodNotificationTemplateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $DeliveryMethodNotificationTemplateBuilder toBuilder() =>
      $DeliveryMethodNotificationTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $DeliveryMethodNotificationTemplate &&
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
    return (newBuiltValueToStringHelper(r'$DeliveryMethodNotificationTemplate')
          ..add('enabled', enabled)
          ..add('body', body)
          ..add('method', method))
        .toString();
  }
}

class $DeliveryMethodNotificationTemplateBuilder
    implements
        Builder<
          $DeliveryMethodNotificationTemplate,
          $DeliveryMethodNotificationTemplateBuilder
        >,
        DeliveryMethodNotificationTemplateBuilder {
  _$$DeliveryMethodNotificationTemplate? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(covariant bool? enabled) => _$this._enabled = enabled;

  String? _body;
  String? get body => _$this._body;
  set body(covariant String? body) => _$this._body = body;

  String? _method;
  String? get method => _$this._method;
  set method(covariant String? method) => _$this._method = method;

  $DeliveryMethodNotificationTemplateBuilder() {
    $DeliveryMethodNotificationTemplate._defaults(this);
  }

  $DeliveryMethodNotificationTemplateBuilder get _$this {
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
  void replace(covariant $DeliveryMethodNotificationTemplate other) {
    _$v = other as _$$DeliveryMethodNotificationTemplate;
  }

  @override
  void update(
    void Function($DeliveryMethodNotificationTemplateBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  $DeliveryMethodNotificationTemplate build() => _build();

  _$$DeliveryMethodNotificationTemplate _build() {
    final _$result =
        _$v ??
        _$$DeliveryMethodNotificationTemplate._(
          enabled: enabled,
          body: BuiltValueNullFieldError.checkNotNull(
            body,
            r'$DeliveryMethodNotificationTemplate',
            'body',
          ),
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'$DeliveryMethodNotificationTemplate',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
