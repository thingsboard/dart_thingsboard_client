// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_pref.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationPref extends NotificationPref {
  @override
  final bool? enabled;
  @override
  final BuiltMap<String, bool> enabledDeliveryMethods;

  factory _$NotificationPref([
    void Function(NotificationPrefBuilder)? updates,
  ]) => (NotificationPrefBuilder()..update(updates))._build();

  _$NotificationPref._({this.enabled, required this.enabledDeliveryMethods})
    : super._();
  @override
  NotificationPref rebuild(void Function(NotificationPrefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationPrefBuilder toBuilder() =>
      NotificationPrefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationPref &&
        enabled == other.enabled &&
        enabledDeliveryMethods == other.enabledDeliveryMethods;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, enabledDeliveryMethods.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationPref')
          ..add('enabled', enabled)
          ..add('enabledDeliveryMethods', enabledDeliveryMethods))
        .toString();
  }
}

class NotificationPrefBuilder
    implements Builder<NotificationPref, NotificationPrefBuilder> {
  _$NotificationPref? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  MapBuilder<String, bool>? _enabledDeliveryMethods;
  MapBuilder<String, bool> get enabledDeliveryMethods =>
      _$this._enabledDeliveryMethods ??= MapBuilder<String, bool>();
  set enabledDeliveryMethods(
    MapBuilder<String, bool>? enabledDeliveryMethods,
  ) => _$this._enabledDeliveryMethods = enabledDeliveryMethods;

  NotificationPrefBuilder() {
    NotificationPref._defaults(this);
  }

  NotificationPrefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _enabledDeliveryMethods = $v.enabledDeliveryMethods.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationPref other) {
    _$v = other as _$NotificationPref;
  }

  @override
  void update(void Function(NotificationPrefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationPref build() => _build();

  _$NotificationPref _build() {
    _$NotificationPref _$result;
    try {
      _$result =
          _$v ??
          _$NotificationPref._(
            enabled: enabled,
            enabledDeliveryMethods: enabledDeliveryMethods.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enabledDeliveryMethods';
        enabledDeliveryMethods.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationPref',
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
