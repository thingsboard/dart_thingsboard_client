// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities_limit_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntitiesLimitRecipientsConfig extends EntitiesLimitRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$EntitiesLimitRecipientsConfig([
    void Function(EntitiesLimitRecipientsConfigBuilder)? updates,
  ]) => (EntitiesLimitRecipientsConfigBuilder()..update(updates))._build();

  _$EntitiesLimitRecipientsConfig._({required this.targets, this.triggerType})
    : super._();
  @override
  EntitiesLimitRecipientsConfig rebuild(
    void Function(EntitiesLimitRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntitiesLimitRecipientsConfigBuilder toBuilder() =>
      EntitiesLimitRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntitiesLimitRecipientsConfig &&
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
    return (newBuiltValueToStringHelper(r'EntitiesLimitRecipientsConfig')
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class EntitiesLimitRecipientsConfigBuilder
    implements
        Builder<
          EntitiesLimitRecipientsConfig,
          EntitiesLimitRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$EntitiesLimitRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  EntitiesLimitRecipientsConfigBuilder() {
    EntitiesLimitRecipientsConfig._defaults(this);
  }

  EntitiesLimitRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntitiesLimitRecipientsConfig other) {
    _$v = other as _$EntitiesLimitRecipientsConfig;
  }

  @override
  void update(void Function(EntitiesLimitRecipientsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntitiesLimitRecipientsConfig build() => _build();

  _$EntitiesLimitRecipientsConfig _build() {
    _$EntitiesLimitRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$EntitiesLimitRecipientsConfig._(
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
          r'EntitiesLimitRecipientsConfig',
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
