// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escalated_notification_rule_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EscalatedNotificationRuleRecipientsConfig
    extends EscalatedNotificationRuleRecipientsConfig {
  @override
  final BuiltMap<String, BuiltList<String>> escalationTable;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$EscalatedNotificationRuleRecipientsConfig([
    void Function(EscalatedNotificationRuleRecipientsConfigBuilder)? updates,
  ]) => (EscalatedNotificationRuleRecipientsConfigBuilder()..update(updates))
      ._build();

  _$EscalatedNotificationRuleRecipientsConfig._({
    required this.escalationTable,
    this.triggerType,
  }) : super._();
  @override
  EscalatedNotificationRuleRecipientsConfig rebuild(
    void Function(EscalatedNotificationRuleRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EscalatedNotificationRuleRecipientsConfigBuilder toBuilder() =>
      EscalatedNotificationRuleRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EscalatedNotificationRuleRecipientsConfig &&
        escalationTable == other.escalationTable &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, escalationTable.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EscalatedNotificationRuleRecipientsConfig',
          )
          ..add('escalationTable', escalationTable)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class EscalatedNotificationRuleRecipientsConfigBuilder
    implements
        Builder<
          EscalatedNotificationRuleRecipientsConfig,
          EscalatedNotificationRuleRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$EscalatedNotificationRuleRecipientsConfig? _$v;

  MapBuilder<String, BuiltList<String>>? _escalationTable;
  MapBuilder<String, BuiltList<String>> get escalationTable =>
      _$this._escalationTable ??= MapBuilder<String, BuiltList<String>>();
  set escalationTable(
    covariant MapBuilder<String, BuiltList<String>>? escalationTable,
  ) => _$this._escalationTable = escalationTable;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  EscalatedNotificationRuleRecipientsConfigBuilder() {
    EscalatedNotificationRuleRecipientsConfig._defaults(this);
  }

  EscalatedNotificationRuleRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _escalationTable = $v.escalationTable.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EscalatedNotificationRuleRecipientsConfig other) {
    _$v = other as _$EscalatedNotificationRuleRecipientsConfig;
  }

  @override
  void update(
    void Function(EscalatedNotificationRuleRecipientsConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EscalatedNotificationRuleRecipientsConfig build() => _build();

  _$EscalatedNotificationRuleRecipientsConfig _build() {
    _$EscalatedNotificationRuleRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$EscalatedNotificationRuleRecipientsConfig._(
            escalationTable: escalationTable.build(),
            triggerType: triggerType,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'escalationTable';
        escalationTable.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EscalatedNotificationRuleRecipientsConfig',
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
