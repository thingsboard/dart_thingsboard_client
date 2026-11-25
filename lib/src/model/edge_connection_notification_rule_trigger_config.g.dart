// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_connection_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeConnectionNotificationRuleTriggerConfig
    extends EdgeConnectionNotificationRuleTriggerConfig {
  @override
  final BuiltSet<EdgeConnectivityEvent>? notifyOn;
  @override
  final BuiltSet<String>? edges;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$EdgeConnectionNotificationRuleTriggerConfig([
    void Function(EdgeConnectionNotificationRuleTriggerConfigBuilder)? updates,
  ]) => (EdgeConnectionNotificationRuleTriggerConfigBuilder()..update(updates))
      ._build();

  _$EdgeConnectionNotificationRuleTriggerConfig._({
    this.notifyOn,
    this.edges,
    required this.triggerType,
  }) : super._();
  @override
  EdgeConnectionNotificationRuleTriggerConfig rebuild(
    void Function(EdgeConnectionNotificationRuleTriggerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdgeConnectionNotificationRuleTriggerConfigBuilder toBuilder() =>
      EdgeConnectionNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeConnectionNotificationRuleTriggerConfig &&
        notifyOn == other.notifyOn &&
        edges == other.edges &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notifyOn.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EdgeConnectionNotificationRuleTriggerConfig',
          )
          ..add('notifyOn', notifyOn)
          ..add('edges', edges)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class EdgeConnectionNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          EdgeConnectionNotificationRuleTriggerConfig,
          EdgeConnectionNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$EdgeConnectionNotificationRuleTriggerConfig? _$v;

  SetBuilder<EdgeConnectivityEvent>? _notifyOn;
  SetBuilder<EdgeConnectivityEvent> get notifyOn =>
      _$this._notifyOn ??= SetBuilder<EdgeConnectivityEvent>();
  set notifyOn(covariant SetBuilder<EdgeConnectivityEvent>? notifyOn) =>
      _$this._notifyOn = notifyOn;

  SetBuilder<String>? _edges;
  SetBuilder<String> get edges => _$this._edges ??= SetBuilder<String>();
  set edges(covariant SetBuilder<String>? edges) => _$this._edges = edges;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  EdgeConnectionNotificationRuleTriggerConfigBuilder() {
    EdgeConnectionNotificationRuleTriggerConfig._defaults(this);
  }

  EdgeConnectionNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notifyOn = $v.notifyOn?.toBuilder();
      _edges = $v.edges?.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EdgeConnectionNotificationRuleTriggerConfig other) {
    _$v = other as _$EdgeConnectionNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(EdgeConnectionNotificationRuleTriggerConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EdgeConnectionNotificationRuleTriggerConfig build() => _build();

  _$EdgeConnectionNotificationRuleTriggerConfig _build() {
    _$EdgeConnectionNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$EdgeConnectionNotificationRuleTriggerConfig._(
            notifyOn: _notifyOn?.build(),
            edges: _edges?.build(),
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'EdgeConnectionNotificationRuleTriggerConfig',
              'triggerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notifyOn';
        _notifyOn?.build();
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdgeConnectionNotificationRuleTriggerConfig',
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
