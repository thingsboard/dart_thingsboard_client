// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'microsoft_teams_delivery_method_notification_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MicrosoftTeamsDeliveryMethodNotificationTemplate
    extends MicrosoftTeamsDeliveryMethodNotificationTemplate {
  @override
  final Button? button;
  @override
  final String? themeColor;
  @override
  final String? subject;
  @override
  final bool? enabled;
  @override
  final String body;
  @override
  final String method;

  factory _$MicrosoftTeamsDeliveryMethodNotificationTemplate([
    void Function(MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder)?
    updates,
  ]) =>
      (MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder()
            ..update(updates))
          ._build();

  _$MicrosoftTeamsDeliveryMethodNotificationTemplate._({
    this.button,
    this.themeColor,
    this.subject,
    this.enabled,
    required this.body,
    required this.method,
  }) : super._();
  @override
  MicrosoftTeamsDeliveryMethodNotificationTemplate rebuild(
    void Function(MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder toBuilder() =>
      MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MicrosoftTeamsDeliveryMethodNotificationTemplate &&
        button == other.button &&
        themeColor == other.themeColor &&
        subject == other.subject &&
        enabled == other.enabled &&
        body == other.body &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, button.hashCode);
    _$hash = $jc(_$hash, themeColor.hashCode);
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
            r'MicrosoftTeamsDeliveryMethodNotificationTemplate',
          )
          ..add('button', button)
          ..add('themeColor', themeColor)
          ..add('subject', subject)
          ..add('enabled', enabled)
          ..add('body', body)
          ..add('method', method))
        .toString();
  }
}

class MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder
    implements
        Builder<
          MicrosoftTeamsDeliveryMethodNotificationTemplate,
          MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder
        >,
        DeliveryMethodNotificationTemplateBuilder {
  _$MicrosoftTeamsDeliveryMethodNotificationTemplate? _$v;

  ButtonBuilder? _button;
  ButtonBuilder get button => _$this._button ??= ButtonBuilder();
  set button(covariant ButtonBuilder? button) => _$this._button = button;

  String? _themeColor;
  String? get themeColor => _$this._themeColor;
  set themeColor(covariant String? themeColor) =>
      _$this._themeColor = themeColor;

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

  MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder() {
    MicrosoftTeamsDeliveryMethodNotificationTemplate._defaults(this);
  }

  MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _button = $v.button?.toBuilder();
      _themeColor = $v.themeColor;
      _subject = $v.subject;
      _enabled = $v.enabled;
      _body = $v.body;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant MicrosoftTeamsDeliveryMethodNotificationTemplate other,
  ) {
    _$v = other as _$MicrosoftTeamsDeliveryMethodNotificationTemplate;
  }

  @override
  void update(
    void Function(MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  MicrosoftTeamsDeliveryMethodNotificationTemplate build() => _build();

  _$MicrosoftTeamsDeliveryMethodNotificationTemplate _build() {
    _$MicrosoftTeamsDeliveryMethodNotificationTemplate _$result;
    try {
      _$result =
          _$v ??
          _$MicrosoftTeamsDeliveryMethodNotificationTemplate._(
            button: _button?.build(),
            themeColor: themeColor,
            subject: subject,
            enabled: enabled,
            body: BuiltValueNullFieldError.checkNotNull(
              body,
              r'MicrosoftTeamsDeliveryMethodNotificationTemplate',
              'body',
            ),
            method: BuiltValueNullFieldError.checkNotNull(
              method,
              r'MicrosoftTeamsDeliveryMethodNotificationTemplate',
              'method',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'button';
        _button?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MicrosoftTeamsDeliveryMethodNotificationTemplate',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
