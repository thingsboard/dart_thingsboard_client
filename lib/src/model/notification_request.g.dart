// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationRequest extends NotificationRequest {
  @override
  final NotificationRequestId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final BuiltList<String> targets;
  @override
  final NotificationTemplateId? templateId;
  @override
  final NotificationTemplate? template;
  @override
  final NotificationInfo? info;
  @override
  final NotificationRequestConfig? additionalConfig;
  @override
  final EntityId? originatorEntityId;
  @override
  final NotificationRuleId? ruleId;
  @override
  final NotificationRequestStatus? status;
  @override
  final NotificationRequestStats? stats;

  factory _$NotificationRequest([
    void Function(NotificationRequestBuilder)? updates,
  ]) => (NotificationRequestBuilder()..update(updates))._build();

  _$NotificationRequest._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.targets,
    this.templateId,
    this.template,
    this.info,
    this.additionalConfig,
    this.originatorEntityId,
    this.ruleId,
    this.status,
    this.stats,
  }) : super._();
  @override
  NotificationRequest rebuild(
    void Function(NotificationRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationRequestBuilder toBuilder() =>
      NotificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRequest &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        targets == other.targets &&
        templateId == other.templateId &&
        template == other.template &&
        info == other.info &&
        additionalConfig == other.additionalConfig &&
        originatorEntityId == other.originatorEntityId &&
        ruleId == other.ruleId &&
        status == other.status &&
        stats == other.stats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, targets.hashCode);
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, template.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, additionalConfig.hashCode);
    _$hash = $jc(_$hash, originatorEntityId.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationRequest')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('targets', targets)
          ..add('templateId', templateId)
          ..add('template', template)
          ..add('info', info)
          ..add('additionalConfig', additionalConfig)
          ..add('originatorEntityId', originatorEntityId)
          ..add('ruleId', ruleId)
          ..add('status', status)
          ..add('stats', stats))
        .toString();
  }
}

class NotificationRequestBuilder
    implements Builder<NotificationRequest, NotificationRequestBuilder> {
  _$NotificationRequest? _$v;

  NotificationRequestIdBuilder? _id;
  NotificationRequestIdBuilder get id =>
      _$this._id ??= NotificationRequestIdBuilder();
  set id(NotificationRequestIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(ListBuilder<String>? targets) => _$this._targets = targets;

  NotificationTemplateIdBuilder? _templateId;
  NotificationTemplateIdBuilder get templateId =>
      _$this._templateId ??= NotificationTemplateIdBuilder();
  set templateId(NotificationTemplateIdBuilder? templateId) =>
      _$this._templateId = templateId;

  NotificationTemplateBuilder? _template;
  NotificationTemplateBuilder get template =>
      _$this._template ??= NotificationTemplateBuilder();
  set template(NotificationTemplateBuilder? template) =>
      _$this._template = template;

  NotificationInfoBuilder? _info;
  NotificationInfoBuilder get info =>
      _$this._info ??= NotificationInfoBuilder();
  set info(NotificationInfoBuilder? info) => _$this._info = info;

  NotificationRequestConfigBuilder? _additionalConfig;
  NotificationRequestConfigBuilder get additionalConfig =>
      _$this._additionalConfig ??= NotificationRequestConfigBuilder();
  set additionalConfig(NotificationRequestConfigBuilder? additionalConfig) =>
      _$this._additionalConfig = additionalConfig;

  EntityId? _originatorEntityId;
  EntityId? get originatorEntityId => _$this._originatorEntityId;
  set originatorEntityId(EntityId? originatorEntityId) =>
      _$this._originatorEntityId = originatorEntityId;

  NotificationRuleIdBuilder? _ruleId;
  NotificationRuleIdBuilder get ruleId =>
      _$this._ruleId ??= NotificationRuleIdBuilder();
  set ruleId(NotificationRuleIdBuilder? ruleId) => _$this._ruleId = ruleId;

  NotificationRequestStatus? _status;
  NotificationRequestStatus? get status => _$this._status;
  set status(NotificationRequestStatus? status) => _$this._status = status;

  NotificationRequestStatsBuilder? _stats;
  NotificationRequestStatsBuilder get stats =>
      _$this._stats ??= NotificationRequestStatsBuilder();
  set stats(NotificationRequestStatsBuilder? stats) => _$this._stats = stats;

  NotificationRequestBuilder() {
    NotificationRequest._defaults(this);
  }

  NotificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _targets = $v.targets.toBuilder();
      _templateId = $v.templateId?.toBuilder();
      _template = $v.template?.toBuilder();
      _info = $v.info?.toBuilder();
      _additionalConfig = $v.additionalConfig?.toBuilder();
      _originatorEntityId = $v.originatorEntityId;
      _ruleId = $v.ruleId?.toBuilder();
      _status = $v.status;
      _stats = $v.stats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRequest other) {
    _$v = other as _$NotificationRequest;
  }

  @override
  void update(void Function(NotificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRequest build() => _build();

  _$NotificationRequest _build() {
    _$NotificationRequest _$result;
    try {
      _$result =
          _$v ??
          _$NotificationRequest._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            targets: targets.build(),
            templateId: _templateId?.build(),
            template: _template?.build(),
            info: _info?.build(),
            additionalConfig: _additionalConfig?.build(),
            originatorEntityId: originatorEntityId,
            ruleId: _ruleId?.build(),
            status: status,
            stats: _stats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'targets';
        targets.build();
        _$failedField = 'templateId';
        _templateId?.build();
        _$failedField = 'template';
        _template?.build();
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'additionalConfig';
        _additionalConfig?.build();

        _$failedField = 'ruleId';
        _ruleId?.build();

        _$failedField = 'stats';
        _stats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationRequest',
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
