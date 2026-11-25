// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationRule extends NotificationRule {
  @override
  final NotificationRuleId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String name;
  @override
  final bool? enabled;
  @override
  final NotificationTemplateId templateId;
  @override
  final NotificationRuleTriggerType triggerType;
  @override
  final NotificationRuleTriggerConfig triggerConfig;
  @override
  final NotificationRuleRecipientsConfig recipientsConfig;
  @override
  final NotificationRuleConfig? additionalConfig;

  factory _$NotificationRule([
    void Function(NotificationRuleBuilder)? updates,
  ]) => (NotificationRuleBuilder()..update(updates))._build();

  _$NotificationRule._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.name,
    this.enabled,
    required this.templateId,
    required this.triggerType,
    required this.triggerConfig,
    required this.recipientsConfig,
    this.additionalConfig,
  }) : super._();
  @override
  NotificationRule rebuild(void Function(NotificationRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationRuleBuilder toBuilder() =>
      NotificationRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRule &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        enabled == other.enabled &&
        templateId == other.templateId &&
        triggerType == other.triggerType &&
        triggerConfig == other.triggerConfig &&
        recipientsConfig == other.recipientsConfig &&
        additionalConfig == other.additionalConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jc(_$hash, triggerConfig.hashCode);
    _$hash = $jc(_$hash, recipientsConfig.hashCode);
    _$hash = $jc(_$hash, additionalConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationRule')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('templateId', templateId)
          ..add('triggerType', triggerType)
          ..add('triggerConfig', triggerConfig)
          ..add('recipientsConfig', recipientsConfig)
          ..add('additionalConfig', additionalConfig))
        .toString();
  }
}

class NotificationRuleBuilder
    implements Builder<NotificationRule, NotificationRuleBuilder> {
  _$NotificationRule? _$v;

  NotificationRuleIdBuilder? _id;
  NotificationRuleIdBuilder get id =>
      _$this._id ??= NotificationRuleIdBuilder();
  set id(NotificationRuleIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  NotificationTemplateIdBuilder? _templateId;
  NotificationTemplateIdBuilder get templateId =>
      _$this._templateId ??= NotificationTemplateIdBuilder();
  set templateId(NotificationTemplateIdBuilder? templateId) =>
      _$this._templateId = templateId;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  NotificationRuleTriggerConfig? _triggerConfig;
  NotificationRuleTriggerConfig? get triggerConfig => _$this._triggerConfig;
  set triggerConfig(NotificationRuleTriggerConfig? triggerConfig) =>
      _$this._triggerConfig = triggerConfig;

  NotificationRuleRecipientsConfig? _recipientsConfig;
  NotificationRuleRecipientsConfig? get recipientsConfig =>
      _$this._recipientsConfig;
  set recipientsConfig(NotificationRuleRecipientsConfig? recipientsConfig) =>
      _$this._recipientsConfig = recipientsConfig;

  NotificationRuleConfigBuilder? _additionalConfig;
  NotificationRuleConfigBuilder get additionalConfig =>
      _$this._additionalConfig ??= NotificationRuleConfigBuilder();
  set additionalConfig(NotificationRuleConfigBuilder? additionalConfig) =>
      _$this._additionalConfig = additionalConfig;

  NotificationRuleBuilder() {
    NotificationRule._defaults(this);
  }

  NotificationRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _enabled = $v.enabled;
      _templateId = $v.templateId.toBuilder();
      _triggerType = $v.triggerType;
      _triggerConfig = $v.triggerConfig;
      _recipientsConfig = $v.recipientsConfig;
      _additionalConfig = $v.additionalConfig?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRule other) {
    _$v = other as _$NotificationRule;
  }

  @override
  void update(void Function(NotificationRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRule build() => _build();

  _$NotificationRule _build() {
    _$NotificationRule _$result;
    try {
      _$result =
          _$v ??
          _$NotificationRule._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'NotificationRule',
              'name',
            ),
            enabled: enabled,
            templateId: templateId.build(),
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'NotificationRule',
              'triggerType',
            ),
            triggerConfig: BuiltValueNullFieldError.checkNotNull(
              triggerConfig,
              r'NotificationRule',
              'triggerConfig',
            ),
            recipientsConfig: BuiltValueNullFieldError.checkNotNull(
              recipientsConfig,
              r'NotificationRule',
              'recipientsConfig',
            ),
            additionalConfig: _additionalConfig?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'templateId';
        templateId.build();

        _$failedField = 'additionalConfig';
        _additionalConfig?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationRule',
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
