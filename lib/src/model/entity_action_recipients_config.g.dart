// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_action_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityActionRecipientsConfig extends EntityActionRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$EntityActionRecipientsConfig([
    void Function(EntityActionRecipientsConfigBuilder)? updates,
  ]) => (EntityActionRecipientsConfigBuilder()..update(updates))._build();

  _$EntityActionRecipientsConfig._({required this.targets, this.triggerType})
    : super._();
  @override
  EntityActionRecipientsConfig rebuild(
    void Function(EntityActionRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityActionRecipientsConfigBuilder toBuilder() =>
      EntityActionRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityActionRecipientsConfig &&
        targets == other.targets &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targets.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityActionRecipientsConfig')
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class EntityActionRecipientsConfigBuilder
    implements
        Builder<
          EntityActionRecipientsConfig,
          EntityActionRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$EntityActionRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  EntityActionRecipientsConfigBuilder() {
    EntityActionRecipientsConfig._defaults(this);
  }

  EntityActionRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityActionRecipientsConfig other) {
    _$v = other as _$EntityActionRecipientsConfig;
  }

  @override
  void update(void Function(EntityActionRecipientsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityActionRecipientsConfig build() => _build();

  _$EntityActionRecipientsConfig _build() {
    _$EntityActionRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$EntityActionRecipientsConfig._(
            targets: targets.build(),
            triggerType: triggerType,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targets';
        targets.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityActionRecipientsConfig',
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
