// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notification_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserNotificationSettings extends UserNotificationSettings {
  @override
  final BuiltMap<String, NotificationPref> prefs;

  factory _$UserNotificationSettings([
    void Function(UserNotificationSettingsBuilder)? updates,
  ]) => (UserNotificationSettingsBuilder()..update(updates))._build();

  _$UserNotificationSettings._({required this.prefs}) : super._();
  @override
  UserNotificationSettings rebuild(
    void Function(UserNotificationSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserNotificationSettingsBuilder toBuilder() =>
      UserNotificationSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserNotificationSettings && prefs == other.prefs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'UserNotificationSettings',
    )..add('prefs', prefs)).toString();
  }
}

class UserNotificationSettingsBuilder
    implements
        Builder<UserNotificationSettings, UserNotificationSettingsBuilder> {
  _$UserNotificationSettings? _$v;

  MapBuilder<String, NotificationPref>? _prefs;
  MapBuilder<String, NotificationPref> get prefs =>
      _$this._prefs ??= MapBuilder<String, NotificationPref>();
  set prefs(MapBuilder<String, NotificationPref>? prefs) =>
      _$this._prefs = prefs;

  UserNotificationSettingsBuilder() {
    UserNotificationSettings._defaults(this);
  }

  UserNotificationSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefs = $v.prefs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserNotificationSettings other) {
    _$v = other as _$UserNotificationSettings;
  }

  @override
  void update(void Function(UserNotificationSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserNotificationSettings build() => _build();

  _$UserNotificationSettings _build() {
    _$UserNotificationSettings _$result;
    try {
      _$result = _$v ?? _$UserNotificationSettings._(prefs: prefs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefs';
        prefs.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserNotificationSettings',
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
