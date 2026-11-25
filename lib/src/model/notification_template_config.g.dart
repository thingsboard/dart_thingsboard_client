// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_template_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationTemplateConfig extends NotificationTemplateConfig {
  @override
  final BuiltMap<String, DeliveryMethodNotificationTemplate>
  deliveryMethodsTemplates;
  @override
  final bool? attachReport;
  @override
  final ReportTemplateId? reportTemplateId;
  @override
  final UserId? userId;
  @override
  final String? timezone;
  @override
  final bool? makePublic;

  factory _$NotificationTemplateConfig([
    void Function(NotificationTemplateConfigBuilder)? updates,
  ]) => (NotificationTemplateConfigBuilder()..update(updates))._build();

  _$NotificationTemplateConfig._({
    required this.deliveryMethodsTemplates,
    this.attachReport,
    this.reportTemplateId,
    this.userId,
    this.timezone,
    this.makePublic,
  }) : super._();
  @override
  NotificationTemplateConfig rebuild(
    void Function(NotificationTemplateConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationTemplateConfigBuilder toBuilder() =>
      NotificationTemplateConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationTemplateConfig &&
        deliveryMethodsTemplates == other.deliveryMethodsTemplates &&
        attachReport == other.attachReport &&
        reportTemplateId == other.reportTemplateId &&
        userId == other.userId &&
        timezone == other.timezone &&
        makePublic == other.makePublic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryMethodsTemplates.hashCode);
    _$hash = $jc(_$hash, attachReport.hashCode);
    _$hash = $jc(_$hash, reportTemplateId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, makePublic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationTemplateConfig')
          ..add('deliveryMethodsTemplates', deliveryMethodsTemplates)
          ..add('attachReport', attachReport)
          ..add('reportTemplateId', reportTemplateId)
          ..add('userId', userId)
          ..add('timezone', timezone)
          ..add('makePublic', makePublic))
        .toString();
  }
}

class NotificationTemplateConfigBuilder
    implements
        Builder<NotificationTemplateConfig, NotificationTemplateConfigBuilder> {
  _$NotificationTemplateConfig? _$v;

  MapBuilder<String, DeliveryMethodNotificationTemplate>?
  _deliveryMethodsTemplates;
  MapBuilder<String, DeliveryMethodNotificationTemplate>
  get deliveryMethodsTemplates => _$this._deliveryMethodsTemplates ??=
      MapBuilder<String, DeliveryMethodNotificationTemplate>();
  set deliveryMethodsTemplates(
    MapBuilder<String, DeliveryMethodNotificationTemplate>?
    deliveryMethodsTemplates,
  ) => _$this._deliveryMethodsTemplates = deliveryMethodsTemplates;

  bool? _attachReport;
  bool? get attachReport => _$this._attachReport;
  set attachReport(bool? attachReport) => _$this._attachReport = attachReport;

  ReportTemplateIdBuilder? _reportTemplateId;
  ReportTemplateIdBuilder get reportTemplateId =>
      _$this._reportTemplateId ??= ReportTemplateIdBuilder();
  set reportTemplateId(ReportTemplateIdBuilder? reportTemplateId) =>
      _$this._reportTemplateId = reportTemplateId;

  UserIdBuilder? _userId;
  UserIdBuilder get userId => _$this._userId ??= UserIdBuilder();
  set userId(UserIdBuilder? userId) => _$this._userId = userId;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  bool? _makePublic;
  bool? get makePublic => _$this._makePublic;
  set makePublic(bool? makePublic) => _$this._makePublic = makePublic;

  NotificationTemplateConfigBuilder() {
    NotificationTemplateConfig._defaults(this);
  }

  NotificationTemplateConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryMethodsTemplates = $v.deliveryMethodsTemplates.toBuilder();
      _attachReport = $v.attachReport;
      _reportTemplateId = $v.reportTemplateId?.toBuilder();
      _userId = $v.userId?.toBuilder();
      _timezone = $v.timezone;
      _makePublic = $v.makePublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationTemplateConfig other) {
    _$v = other as _$NotificationTemplateConfig;
  }

  @override
  void update(void Function(NotificationTemplateConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationTemplateConfig build() => _build();

  _$NotificationTemplateConfig _build() {
    _$NotificationTemplateConfig _$result;
    try {
      _$result =
          _$v ??
          _$NotificationTemplateConfig._(
            deliveryMethodsTemplates: deliveryMethodsTemplates.build(),
            attachReport: attachReport,
            reportTemplateId: _reportTemplateId?.build(),
            userId: _userId?.build(),
            timezone: timezone,
            makePublic: makePublic,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryMethodsTemplates';
        deliveryMethodsTemplates.build();

        _$failedField = 'reportTemplateId';
        _reportTemplateId?.build();
        _$failedField = 'userId';
        _userId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationTemplateConfig',
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
