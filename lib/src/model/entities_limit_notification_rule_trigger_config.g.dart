// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities_limit_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntitiesLimitNotificationRuleTriggerConfig
    extends EntitiesLimitNotificationRuleTriggerConfig {
  @override
  final BuiltSet<EntityType>? entityTypes;
  @override
  final double? threshold;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$EntitiesLimitNotificationRuleTriggerConfig([
    void Function(EntitiesLimitNotificationRuleTriggerConfigBuilder)? updates,
  ]) => (EntitiesLimitNotificationRuleTriggerConfigBuilder()..update(updates))
      ._build();

  _$EntitiesLimitNotificationRuleTriggerConfig._({
    this.entityTypes,
    this.threshold,
    required this.triggerType,
  }) : super._();
  @override
  EntitiesLimitNotificationRuleTriggerConfig rebuild(
    void Function(EntitiesLimitNotificationRuleTriggerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntitiesLimitNotificationRuleTriggerConfigBuilder toBuilder() =>
      EntitiesLimitNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntitiesLimitNotificationRuleTriggerConfig &&
        entityTypes == other.entityTypes &&
        threshold == other.threshold &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityTypes.hashCode);
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EntitiesLimitNotificationRuleTriggerConfig',
          )
          ..add('entityTypes', entityTypes)
          ..add('threshold', threshold)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class EntitiesLimitNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          EntitiesLimitNotificationRuleTriggerConfig,
          EntitiesLimitNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$EntitiesLimitNotificationRuleTriggerConfig? _$v;

  SetBuilder<EntityType>? _entityTypes;
  SetBuilder<EntityType> get entityTypes =>
      _$this._entityTypes ??= SetBuilder<EntityType>();
  set entityTypes(covariant SetBuilder<EntityType>? entityTypes) =>
      _$this._entityTypes = entityTypes;

  double? _threshold;
  double? get threshold => _$this._threshold;
  set threshold(covariant double? threshold) => _$this._threshold = threshold;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  EntitiesLimitNotificationRuleTriggerConfigBuilder() {
    EntitiesLimitNotificationRuleTriggerConfig._defaults(this);
  }

  EntitiesLimitNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityTypes = $v.entityTypes?.toBuilder();
      _threshold = $v.threshold;
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntitiesLimitNotificationRuleTriggerConfig other) {
    _$v = other as _$EntitiesLimitNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(EntitiesLimitNotificationRuleTriggerConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EntitiesLimitNotificationRuleTriggerConfig build() => _build();

  _$EntitiesLimitNotificationRuleTriggerConfig _build() {
    _$EntitiesLimitNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$EntitiesLimitNotificationRuleTriggerConfig._(
            entityTypes: _entityTypes?.build(),
            threshold: threshold,
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'EntitiesLimitNotificationRuleTriggerConfig',
              'triggerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityTypes';
        _entityTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntitiesLimitNotificationRuleTriggerConfig',
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
