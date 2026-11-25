// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_connection_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeConnectionRecipientsConfig extends EdgeConnectionRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$EdgeConnectionRecipientsConfig([
    void Function(EdgeConnectionRecipientsConfigBuilder)? updates,
  ]) => (EdgeConnectionRecipientsConfigBuilder()..update(updates))._build();

  _$EdgeConnectionRecipientsConfig._({required this.targets, this.triggerType})
    : super._();
  @override
  EdgeConnectionRecipientsConfig rebuild(
    void Function(EdgeConnectionRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdgeConnectionRecipientsConfigBuilder toBuilder() =>
      EdgeConnectionRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeConnectionRecipientsConfig &&
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
    return (newBuiltValueToStringHelper(r'EdgeConnectionRecipientsConfig')
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class EdgeConnectionRecipientsConfigBuilder
    implements
        Builder<
          EdgeConnectionRecipientsConfig,
          EdgeConnectionRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$EdgeConnectionRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  EdgeConnectionRecipientsConfigBuilder() {
    EdgeConnectionRecipientsConfig._defaults(this);
  }

  EdgeConnectionRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EdgeConnectionRecipientsConfig other) {
    _$v = other as _$EdgeConnectionRecipientsConfig;
  }

  @override
  void update(void Function(EdgeConnectionRecipientsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdgeConnectionRecipientsConfig build() => _build();

  _$EdgeConnectionRecipientsConfig _build() {
    _$EdgeConnectionRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$EdgeConnectionRecipientsConfig._(
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
          r'EdgeConnectionRecipientsConfig',
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
