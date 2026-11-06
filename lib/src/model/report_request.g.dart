// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportRequest extends ReportRequest {
  @override
  final ReportTemplateId? reportTemplateId;
  @override
  final ReportTemplateConfig? reportTemplateConfig;
  @override
  final String? timezone;
  @override
  final String? userId;
  @override
  final bool? makePublic;
  @override
  final EntityId? originator;
  @override
  final BuiltList<String>? targets;
  @override
  final NotificationTemplateId? notificationTemplateId;

  factory _$ReportRequest([void Function(ReportRequestBuilder)? updates]) =>
      (ReportRequestBuilder()..update(updates))._build();

  _$ReportRequest._({
    this.reportTemplateId,
    this.reportTemplateConfig,
    this.timezone,
    this.userId,
    this.makePublic,
    this.originator,
    this.targets,
    this.notificationTemplateId,
  }) : super._();
  @override
  ReportRequest rebuild(void Function(ReportRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportRequestBuilder toBuilder() => ReportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportRequest &&
        reportTemplateId == other.reportTemplateId &&
        reportTemplateConfig == other.reportTemplateConfig &&
        timezone == other.timezone &&
        userId == other.userId &&
        makePublic == other.makePublic &&
        originator == other.originator &&
        targets == other.targets &&
        notificationTemplateId == other.notificationTemplateId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reportTemplateId.hashCode);
    _$hash = $jc(_$hash, reportTemplateConfig.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, makePublic.hashCode);
    _$hash = $jc(_$hash, originator.hashCode);
    _$hash = $jc(_$hash, targets.hashCode);
    _$hash = $jc(_$hash, notificationTemplateId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportRequest')
          ..add('reportTemplateId', reportTemplateId)
          ..add('reportTemplateConfig', reportTemplateConfig)
          ..add('timezone', timezone)
          ..add('userId', userId)
          ..add('makePublic', makePublic)
          ..add('originator', originator)
          ..add('targets', targets)
          ..add('notificationTemplateId', notificationTemplateId))
        .toString();
  }
}

class ReportRequestBuilder
    implements Builder<ReportRequest, ReportRequestBuilder> {
  _$ReportRequest? _$v;

  ReportTemplateIdBuilder? _reportTemplateId;
  ReportTemplateIdBuilder get reportTemplateId =>
      _$this._reportTemplateId ??= ReportTemplateIdBuilder();
  set reportTemplateId(ReportTemplateIdBuilder? reportTemplateId) =>
      _$this._reportTemplateId = reportTemplateId;

  ReportTemplateConfig? _reportTemplateConfig;
  ReportTemplateConfig? get reportTemplateConfig =>
      _$this._reportTemplateConfig;
  set reportTemplateConfig(ReportTemplateConfig? reportTemplateConfig) =>
      _$this._reportTemplateConfig = reportTemplateConfig;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _makePublic;
  bool? get makePublic => _$this._makePublic;
  set makePublic(bool? makePublic) => _$this._makePublic = makePublic;

  EntityId? _originator;
  EntityId? get originator => _$this._originator;
  set originator(EntityId? originator) => _$this._originator = originator;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(ListBuilder<String>? targets) => _$this._targets = targets;

  NotificationTemplateIdBuilder? _notificationTemplateId;
  NotificationTemplateIdBuilder get notificationTemplateId =>
      _$this._notificationTemplateId ??= NotificationTemplateIdBuilder();
  set notificationTemplateId(
    NotificationTemplateIdBuilder? notificationTemplateId,
  ) => _$this._notificationTemplateId = notificationTemplateId;

  ReportRequestBuilder() {
    ReportRequest._defaults(this);
  }

  ReportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportTemplateId = $v.reportTemplateId?.toBuilder();
      _reportTemplateConfig = $v.reportTemplateConfig;
      _timezone = $v.timezone;
      _userId = $v.userId;
      _makePublic = $v.makePublic;
      _originator = $v.originator;
      _targets = $v.targets?.toBuilder();
      _notificationTemplateId = $v.notificationTemplateId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportRequest other) {
    _$v = other as _$ReportRequest;
  }

  @override
  void update(void Function(ReportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportRequest build() => _build();

  _$ReportRequest _build() {
    _$ReportRequest _$result;
    try {
      _$result =
          _$v ??
          _$ReportRequest._(
            reportTemplateId: _reportTemplateId?.build(),
            reportTemplateConfig: reportTemplateConfig,
            timezone: timezone,
            userId: userId,
            makePublic: makePublic,
            originator: originator,
            targets: _targets?.build(),
            notificationTemplateId: _notificationTemplateId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reportTemplateId';
        _reportTemplateId?.build();

        _$failedField = 'targets';
        _targets?.build();
        _$failedField = 'notificationTemplateId';
        _notificationTemplateId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportRequest',
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
