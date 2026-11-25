// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slack_notification_target_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SlackNotificationTargetConfig extends SlackNotificationTargetConfig {
  @override
  final SlackConversationType? conversationType;
  @override
  final SlackConversation conversation;
  @override
  final String? description;
  @override
  final String type;

  factory _$SlackNotificationTargetConfig([
    void Function(SlackNotificationTargetConfigBuilder)? updates,
  ]) => (SlackNotificationTargetConfigBuilder()..update(updates))._build();

  _$SlackNotificationTargetConfig._({
    this.conversationType,
    required this.conversation,
    this.description,
    required this.type,
  }) : super._();
  @override
  SlackNotificationTargetConfig rebuild(
    void Function(SlackNotificationTargetConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SlackNotificationTargetConfigBuilder toBuilder() =>
      SlackNotificationTargetConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SlackNotificationTargetConfig &&
        conversationType == other.conversationType &&
        conversation == other.conversation &&
        description == other.description &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conversationType.hashCode);
    _$hash = $jc(_$hash, conversation.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SlackNotificationTargetConfig')
          ..add('conversationType', conversationType)
          ..add('conversation', conversation)
          ..add('description', description)
          ..add('type', type))
        .toString();
  }
}

class SlackNotificationTargetConfigBuilder
    implements
        Builder<
          SlackNotificationTargetConfig,
          SlackNotificationTargetConfigBuilder
        >,
        NotificationTargetConfigBuilder {
  _$SlackNotificationTargetConfig? _$v;

  SlackConversationType? _conversationType;
  SlackConversationType? get conversationType => _$this._conversationType;
  set conversationType(covariant SlackConversationType? conversationType) =>
      _$this._conversationType = conversationType;

  SlackConversationBuilder? _conversation;
  SlackConversationBuilder get conversation =>
      _$this._conversation ??= SlackConversationBuilder();
  set conversation(covariant SlackConversationBuilder? conversation) =>
      _$this._conversation = conversation;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  SlackNotificationTargetConfigBuilder() {
    SlackNotificationTargetConfig._defaults(this);
  }

  SlackNotificationTargetConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conversationType = $v.conversationType;
      _conversation = $v.conversation.toBuilder();
      _description = $v.description;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SlackNotificationTargetConfig other) {
    _$v = other as _$SlackNotificationTargetConfig;
  }

  @override
  void update(void Function(SlackNotificationTargetConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SlackNotificationTargetConfig build() => _build();

  _$SlackNotificationTargetConfig _build() {
    _$SlackNotificationTargetConfig _$result;
    try {
      _$result =
          _$v ??
          _$SlackNotificationTargetConfig._(
            conversationType: conversationType,
            conversation: conversation.build(),
            description: description,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SlackNotificationTargetConfig',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conversation';
        conversation.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SlackNotificationTargetConfig',
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
