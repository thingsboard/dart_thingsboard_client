// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_action_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityActionNotificationRuleTriggerConfig
    extends EntityActionNotificationRuleTriggerConfig {
  @override
  final bool? deleted;
  @override
  final bool? created;
  @override
  final BuiltSet<EntityType>? entityTypes;
  @override
  final bool? updated;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$EntityActionNotificationRuleTriggerConfig([
    void Function(EntityActionNotificationRuleTriggerConfigBuilder)? updates,
  ]) => (EntityActionNotificationRuleTriggerConfigBuilder()..update(updates))
      ._build();

  _$EntityActionNotificationRuleTriggerConfig._({
    this.deleted,
    this.created,
    this.entityTypes,
    this.updated,
    required this.triggerType,
  }) : super._();
  @override
  EntityActionNotificationRuleTriggerConfig rebuild(
    void Function(EntityActionNotificationRuleTriggerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityActionNotificationRuleTriggerConfigBuilder toBuilder() =>
      EntityActionNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityActionNotificationRuleTriggerConfig &&
        deleted == other.deleted &&
        created == other.created &&
        entityTypes == other.entityTypes &&
        updated == other.updated &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, entityTypes.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EntityActionNotificationRuleTriggerConfig',
          )
          ..add('deleted', deleted)
          ..add('created', created)
          ..add('entityTypes', entityTypes)
          ..add('updated', updated)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class EntityActionNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          EntityActionNotificationRuleTriggerConfig,
          EntityActionNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$EntityActionNotificationRuleTriggerConfig? _$v;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(covariant bool? deleted) => _$this._deleted = deleted;

  bool? _created;
  bool? get created => _$this._created;
  set created(covariant bool? created) => _$this._created = created;

  SetBuilder<EntityType>? _entityTypes;
  SetBuilder<EntityType> get entityTypes =>
      _$this._entityTypes ??= SetBuilder<EntityType>();
  set entityTypes(covariant SetBuilder<EntityType>? entityTypes) =>
      _$this._entityTypes = entityTypes;

  bool? _updated;
  bool? get updated => _$this._updated;
  set updated(covariant bool? updated) => _$this._updated = updated;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  EntityActionNotificationRuleTriggerConfigBuilder() {
    EntityActionNotificationRuleTriggerConfig._defaults(this);
  }

  EntityActionNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleted = $v.deleted;
      _created = $v.created;
      _entityTypes = $v.entityTypes?.toBuilder();
      _updated = $v.updated;
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityActionNotificationRuleTriggerConfig other) {
    _$v = other as _$EntityActionNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(EntityActionNotificationRuleTriggerConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EntityActionNotificationRuleTriggerConfig build() => _build();

  _$EntityActionNotificationRuleTriggerConfig _build() {
    _$EntityActionNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$EntityActionNotificationRuleTriggerConfig._(
            deleted: deleted,
            created: created,
            entityTypes: _entityTypes?.build(),
            updated: updated,
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'EntityActionNotificationRuleTriggerConfig',
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
          r'EntityActionNotificationRuleTriggerConfig',
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
