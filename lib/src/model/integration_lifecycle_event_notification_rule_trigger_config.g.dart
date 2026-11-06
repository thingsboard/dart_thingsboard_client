// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_lifecycle_event_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntegrationLifecycleEventNotificationRuleTriggerConfig
    extends IntegrationLifecycleEventNotificationRuleTriggerConfig {
  @override
  final BuiltSet<IntegrationType>? integrationTypes;
  @override
  final bool? onlyOnError;
  @override
  final BuiltSet<ComponentLifecycleEvent>? notifyOn;
  @override
  final BuiltSet<String>? integrations;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$IntegrationLifecycleEventNotificationRuleTriggerConfig([
    void Function(
      IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder,
    )?
    updates,
  ]) =>
      (IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder()
            ..update(updates))
          ._build();

  _$IntegrationLifecycleEventNotificationRuleTriggerConfig._({
    this.integrationTypes,
    this.onlyOnError,
    this.notifyOn,
    this.integrations,
    required this.triggerType,
  }) : super._();
  @override
  IntegrationLifecycleEventNotificationRuleTriggerConfig rebuild(
    void Function(IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder toBuilder() =>
      IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationLifecycleEventNotificationRuleTriggerConfig &&
        integrationTypes == other.integrationTypes &&
        onlyOnError == other.onlyOnError &&
        notifyOn == other.notifyOn &&
        integrations == other.integrations &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, integrationTypes.hashCode);
    _$hash = $jc(_$hash, onlyOnError.hashCode);
    _$hash = $jc(_$hash, notifyOn.hashCode);
    _$hash = $jc(_$hash, integrations.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'IntegrationLifecycleEventNotificationRuleTriggerConfig',
          )
          ..add('integrationTypes', integrationTypes)
          ..add('onlyOnError', onlyOnError)
          ..add('notifyOn', notifyOn)
          ..add('integrations', integrations)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          IntegrationLifecycleEventNotificationRuleTriggerConfig,
          IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$IntegrationLifecycleEventNotificationRuleTriggerConfig? _$v;

  SetBuilder<IntegrationType>? _integrationTypes;
  SetBuilder<IntegrationType> get integrationTypes =>
      _$this._integrationTypes ??= SetBuilder<IntegrationType>();
  set integrationTypes(
    covariant SetBuilder<IntegrationType>? integrationTypes,
  ) => _$this._integrationTypes = integrationTypes;

  bool? _onlyOnError;
  bool? get onlyOnError => _$this._onlyOnError;
  set onlyOnError(covariant bool? onlyOnError) =>
      _$this._onlyOnError = onlyOnError;

  SetBuilder<ComponentLifecycleEvent>? _notifyOn;
  SetBuilder<ComponentLifecycleEvent> get notifyOn =>
      _$this._notifyOn ??= SetBuilder<ComponentLifecycleEvent>();
  set notifyOn(covariant SetBuilder<ComponentLifecycleEvent>? notifyOn) =>
      _$this._notifyOn = notifyOn;

  SetBuilder<String>? _integrations;
  SetBuilder<String> get integrations =>
      _$this._integrations ??= SetBuilder<String>();
  set integrations(covariant SetBuilder<String>? integrations) =>
      _$this._integrations = integrations;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder() {
    IntegrationLifecycleEventNotificationRuleTriggerConfig._defaults(this);
  }

  IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _integrationTypes = $v.integrationTypes?.toBuilder();
      _onlyOnError = $v.onlyOnError;
      _notifyOn = $v.notifyOn?.toBuilder();
      _integrations = $v.integrations?.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant IntegrationLifecycleEventNotificationRuleTriggerConfig other,
  ) {
    _$v = other as _$IntegrationLifecycleEventNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(
      IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationLifecycleEventNotificationRuleTriggerConfig build() => _build();

  _$IntegrationLifecycleEventNotificationRuleTriggerConfig _build() {
    _$IntegrationLifecycleEventNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$IntegrationLifecycleEventNotificationRuleTriggerConfig._(
            integrationTypes: _integrationTypes?.build(),
            onlyOnError: onlyOnError,
            notifyOn: _notifyOn?.build(),
            integrations: _integrations?.build(),
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'IntegrationLifecycleEventNotificationRuleTriggerConfig',
              'triggerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'integrationTypes';
        _integrationTypes?.build();

        _$failedField = 'notifyOn';
        _notifyOn?.build();
        _$failedField = 'integrations';
        _integrations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntegrationLifecycleEventNotificationRuleTriggerConfig',
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
