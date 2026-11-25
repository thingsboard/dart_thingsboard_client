// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_shortage_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceShortageRecipientsConfig
    extends ResourceShortageRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$ResourceShortageRecipientsConfig([
    void Function(ResourceShortageRecipientsConfigBuilder)? updates,
  ]) => (ResourceShortageRecipientsConfigBuilder()..update(updates))._build();

  _$ResourceShortageRecipientsConfig._({
    required this.targets,
    this.triggerType,
  }) : super._();
  @override
  ResourceShortageRecipientsConfig rebuild(
    void Function(ResourceShortageRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResourceShortageRecipientsConfigBuilder toBuilder() =>
      ResourceShortageRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceShortageRecipientsConfig &&
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
    return (newBuiltValueToStringHelper(r'ResourceShortageRecipientsConfig')
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class ResourceShortageRecipientsConfigBuilder
    implements
        Builder<
          ResourceShortageRecipientsConfig,
          ResourceShortageRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$ResourceShortageRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  ResourceShortageRecipientsConfigBuilder() {
    ResourceShortageRecipientsConfig._defaults(this);
  }

  ResourceShortageRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ResourceShortageRecipientsConfig other) {
    _$v = other as _$ResourceShortageRecipientsConfig;
  }

  @override
  void update(void Function(ResourceShortageRecipientsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceShortageRecipientsConfig build() => _build();

  _$ResourceShortageRecipientsConfig _build() {
    _$ResourceShortageRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$ResourceShortageRecipientsConfig._(
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
          r'ResourceShortageRecipientsConfig',
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
