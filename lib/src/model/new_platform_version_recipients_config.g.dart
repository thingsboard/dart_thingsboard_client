// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_platform_version_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewPlatformVersionRecipientsConfig
    extends NewPlatformVersionRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$NewPlatformVersionRecipientsConfig([
    void Function(NewPlatformVersionRecipientsConfigBuilder)? updates,
  ]) => (NewPlatformVersionRecipientsConfigBuilder()..update(updates))._build();

  _$NewPlatformVersionRecipientsConfig._({
    required this.targets,
    this.triggerType,
  }) : super._();
  @override
  NewPlatformVersionRecipientsConfig rebuild(
    void Function(NewPlatformVersionRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NewPlatformVersionRecipientsConfigBuilder toBuilder() =>
      NewPlatformVersionRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewPlatformVersionRecipientsConfig &&
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
    return (newBuiltValueToStringHelper(r'NewPlatformVersionRecipientsConfig')
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class NewPlatformVersionRecipientsConfigBuilder
    implements
        Builder<
          NewPlatformVersionRecipientsConfig,
          NewPlatformVersionRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$NewPlatformVersionRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  NewPlatformVersionRecipientsConfigBuilder() {
    NewPlatformVersionRecipientsConfig._defaults(this);
  }

  NewPlatformVersionRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant NewPlatformVersionRecipientsConfig other) {
    _$v = other as _$NewPlatformVersionRecipientsConfig;
  }

  @override
  void update(
    void Function(NewPlatformVersionRecipientsConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  NewPlatformVersionRecipientsConfig build() => _build();

  _$NewPlatformVersionRecipientsConfig _build() {
    _$NewPlatformVersionRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$NewPlatformVersionRecipientsConfig._(
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
          r'NewPlatformVersionRecipientsConfig',
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
