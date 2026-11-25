// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationSettings extends NotificationSettings {
  @override
  final BuiltMap<String, NotificationDeliveryMethodConfig>
  deliveryMethodsConfigs;

  factory _$NotificationSettings([
    void Function(NotificationSettingsBuilder)? updates,
  ]) => (NotificationSettingsBuilder()..update(updates))._build();

  _$NotificationSettings._({required this.deliveryMethodsConfigs}) : super._();
  @override
  NotificationSettings rebuild(
    void Function(NotificationSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationSettingsBuilder toBuilder() =>
      NotificationSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationSettings &&
        deliveryMethodsConfigs == other.deliveryMethodsConfigs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryMethodsConfigs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'NotificationSettings',
    )..add('deliveryMethodsConfigs', deliveryMethodsConfigs)).toString();
  }
}

class NotificationSettingsBuilder
    implements Builder<NotificationSettings, NotificationSettingsBuilder> {
  _$NotificationSettings? _$v;

  MapBuilder<String, NotificationDeliveryMethodConfig>? _deliveryMethodsConfigs;
  MapBuilder<String, NotificationDeliveryMethodConfig>
  get deliveryMethodsConfigs => _$this._deliveryMethodsConfigs ??=
      MapBuilder<String, NotificationDeliveryMethodConfig>();
  set deliveryMethodsConfigs(
    MapBuilder<String, NotificationDeliveryMethodConfig>?
    deliveryMethodsConfigs,
  ) => _$this._deliveryMethodsConfigs = deliveryMethodsConfigs;

  NotificationSettingsBuilder() {
    NotificationSettings._defaults(this);
  }

  NotificationSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryMethodsConfigs = $v.deliveryMethodsConfigs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationSettings other) {
    _$v = other as _$NotificationSettings;
  }

  @override
  void update(void Function(NotificationSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationSettings build() => _build();

  _$NotificationSettings _build() {
    _$NotificationSettings _$result;
    try {
      _$result =
          _$v ??
          _$NotificationSettings._(
            deliveryMethodsConfigs: deliveryMethodsConfigs.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryMethodsConfigs';
        deliveryMethodsConfigs.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationSettings',
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
