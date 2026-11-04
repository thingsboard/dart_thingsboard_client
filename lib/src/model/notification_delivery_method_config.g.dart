// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_delivery_method_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class NotificationDeliveryMethodConfigBuilder {
  void replace(NotificationDeliveryMethodConfig other);
  void update(void Function(NotificationDeliveryMethodConfigBuilder) updates);
  String? get method;
  set method(String? method);
}

class _$$NotificationDeliveryMethodConfig
    extends $NotificationDeliveryMethodConfig {
  @override
  final String method;

  factory _$$NotificationDeliveryMethodConfig([
    void Function($NotificationDeliveryMethodConfigBuilder)? updates,
  ]) => ($NotificationDeliveryMethodConfigBuilder()..update(updates))._build();

  _$$NotificationDeliveryMethodConfig._({required this.method}) : super._();
  @override
  $NotificationDeliveryMethodConfig rebuild(
    void Function($NotificationDeliveryMethodConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $NotificationDeliveryMethodConfigBuilder toBuilder() =>
      $NotificationDeliveryMethodConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NotificationDeliveryMethodConfig && method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$NotificationDeliveryMethodConfig',
    )..add('method', method)).toString();
  }
}

class $NotificationDeliveryMethodConfigBuilder
    implements
        Builder<
          $NotificationDeliveryMethodConfig,
          $NotificationDeliveryMethodConfigBuilder
        >,
        NotificationDeliveryMethodConfigBuilder {
  _$$NotificationDeliveryMethodConfig? _$v;

  String? _method;
  String? get method => _$this._method;
  set method(covariant String? method) => _$this._method = method;

  $NotificationDeliveryMethodConfigBuilder() {
    $NotificationDeliveryMethodConfig._defaults(this);
  }

  $NotificationDeliveryMethodConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NotificationDeliveryMethodConfig other) {
    _$v = other as _$$NotificationDeliveryMethodConfig;
  }

  @override
  void update(
    void Function($NotificationDeliveryMethodConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  $NotificationDeliveryMethodConfig build() => _build();

  _$$NotificationDeliveryMethodConfig _build() {
    final _$result =
        _$v ??
        _$$NotificationDeliveryMethodConfig._(
          method: BuiltValueNullFieldError.checkNotNull(
            method,
            r'$NotificationDeliveryMethodConfig',
            'method',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
