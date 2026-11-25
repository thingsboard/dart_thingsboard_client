// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_comment_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmCommentRecipientsConfig extends AlarmCommentRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$AlarmCommentRecipientsConfig([
    void Function(AlarmCommentRecipientsConfigBuilder)? updates,
  ]) => (AlarmCommentRecipientsConfigBuilder()..update(updates))._build();

  _$AlarmCommentRecipientsConfig._({required this.targets, this.triggerType})
    : super._();
  @override
  AlarmCommentRecipientsConfig rebuild(
    void Function(AlarmCommentRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmCommentRecipientsConfigBuilder toBuilder() =>
      AlarmCommentRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmCommentRecipientsConfig &&
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
    return (newBuiltValueToStringHelper(r'AlarmCommentRecipientsConfig')
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class AlarmCommentRecipientsConfigBuilder
    implements
        Builder<
          AlarmCommentRecipientsConfig,
          AlarmCommentRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$AlarmCommentRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  AlarmCommentRecipientsConfigBuilder() {
    AlarmCommentRecipientsConfig._defaults(this);
  }

  AlarmCommentRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmCommentRecipientsConfig other) {
    _$v = other as _$AlarmCommentRecipientsConfig;
  }

  @override
  void update(void Function(AlarmCommentRecipientsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmCommentRecipientsConfig build() => _build();

  _$AlarmCommentRecipientsConfig _build() {
    _$AlarmCommentRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$AlarmCommentRecipientsConfig._(
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
          r'AlarmCommentRecipientsConfig',
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
