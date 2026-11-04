// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_communication_failure_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeCommunicationFailureNotificationRuleTriggerConfig
    extends EdgeCommunicationFailureNotificationRuleTriggerConfig {
  @override
  final BuiltSet<String>? edges;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$EdgeCommunicationFailureNotificationRuleTriggerConfig([
    void Function(EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder)?
    updates,
  ]) =>
      (EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder()
            ..update(updates))
          ._build();

  _$EdgeCommunicationFailureNotificationRuleTriggerConfig._({
    this.edges,
    required this.triggerType,
  }) : super._();
  @override
  EdgeCommunicationFailureNotificationRuleTriggerConfig rebuild(
    void Function(EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder toBuilder() =>
      EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeCommunicationFailureNotificationRuleTriggerConfig &&
        edges == other.edges &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EdgeCommunicationFailureNotificationRuleTriggerConfig',
          )
          ..add('edges', edges)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          EdgeCommunicationFailureNotificationRuleTriggerConfig,
          EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$EdgeCommunicationFailureNotificationRuleTriggerConfig? _$v;

  SetBuilder<String>? _edges;
  SetBuilder<String> get edges => _$this._edges ??= SetBuilder<String>();
  set edges(covariant SetBuilder<String>? edges) => _$this._edges = edges;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder() {
    EdgeCommunicationFailureNotificationRuleTriggerConfig._defaults(this);
  }

  EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _edges = $v.edges?.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant EdgeCommunicationFailureNotificationRuleTriggerConfig other,
  ) {
    _$v = other as _$EdgeCommunicationFailureNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EdgeCommunicationFailureNotificationRuleTriggerConfig build() => _build();

  _$EdgeCommunicationFailureNotificationRuleTriggerConfig _build() {
    _$EdgeCommunicationFailureNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$EdgeCommunicationFailureNotificationRuleTriggerConfig._(
            edges: _edges?.build(),
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'EdgeCommunicationFailureNotificationRuleTriggerConfig',
              'triggerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdgeCommunicationFailureNotificationRuleTriggerConfig',
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
