// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_communication_failure_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeCommunicationFailureRecipientsConfig
    extends EdgeCommunicationFailureRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$EdgeCommunicationFailureRecipientsConfig([
    void Function(EdgeCommunicationFailureRecipientsConfigBuilder)? updates,
  ]) => (EdgeCommunicationFailureRecipientsConfigBuilder()..update(updates))
      ._build();

  _$EdgeCommunicationFailureRecipientsConfig._({
    required this.targets,
    this.triggerType,
  }) : super._();
  @override
  EdgeCommunicationFailureRecipientsConfig rebuild(
    void Function(EdgeCommunicationFailureRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdgeCommunicationFailureRecipientsConfigBuilder toBuilder() =>
      EdgeCommunicationFailureRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeCommunicationFailureRecipientsConfig &&
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
    return (newBuiltValueToStringHelper(
            r'EdgeCommunicationFailureRecipientsConfig',
          )
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class EdgeCommunicationFailureRecipientsConfigBuilder
    implements
        Builder<
          EdgeCommunicationFailureRecipientsConfig,
          EdgeCommunicationFailureRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$EdgeCommunicationFailureRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  EdgeCommunicationFailureRecipientsConfigBuilder() {
    EdgeCommunicationFailureRecipientsConfig._defaults(this);
  }

  EdgeCommunicationFailureRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EdgeCommunicationFailureRecipientsConfig other) {
    _$v = other as _$EdgeCommunicationFailureRecipientsConfig;
  }

  @override
  void update(
    void Function(EdgeCommunicationFailureRecipientsConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EdgeCommunicationFailureRecipientsConfig build() => _build();

  _$EdgeCommunicationFailureRecipientsConfig _build() {
    _$EdgeCommunicationFailureRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$EdgeCommunicationFailureRecipientsConfig._(
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
          r'EdgeCommunicationFailureRecipientsConfig',
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
