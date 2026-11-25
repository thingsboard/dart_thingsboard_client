// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_rule_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationRuleConfig extends NotificationRuleConfig {
  @override
  final String? description;

  factory _$NotificationRuleConfig([
    void Function(NotificationRuleConfigBuilder)? updates,
  ]) => (NotificationRuleConfigBuilder()..update(updates))._build();

  _$NotificationRuleConfig._({this.description}) : super._();
  @override
  NotificationRuleConfig rebuild(
    void Function(NotificationRuleConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationRuleConfigBuilder toBuilder() =>
      NotificationRuleConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRuleConfig && description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'NotificationRuleConfig',
    )..add('description', description)).toString();
  }
}

class NotificationRuleConfigBuilder
    implements Builder<NotificationRuleConfig, NotificationRuleConfigBuilder> {
  _$NotificationRuleConfig? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  NotificationRuleConfigBuilder() {
    NotificationRuleConfig._defaults(this);
  }

  NotificationRuleConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRuleConfig other) {
    _$v = other as _$NotificationRuleConfig;
  }

  @override
  void update(void Function(NotificationRuleConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRuleConfig build() => _build();

  _$NotificationRuleConfig _build() {
    final _$result =
        _$v ?? _$NotificationRuleConfig._(description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
