// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_target_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class NotificationTargetConfigBuilder {
  void replace(NotificationTargetConfig other);
  void update(void Function(NotificationTargetConfigBuilder) updates);
  String? get description;
  set description(String? description);

  String? get type;
  set type(String? type);
}

class _$$NotificationTargetConfig extends $NotificationTargetConfig {
  @override
  final String? description;
  @override
  final String type;

  factory _$$NotificationTargetConfig([
    void Function($NotificationTargetConfigBuilder)? updates,
  ]) => ($NotificationTargetConfigBuilder()..update(updates))._build();

  _$$NotificationTargetConfig._({this.description, required this.type})
    : super._();
  @override
  $NotificationTargetConfig rebuild(
    void Function($NotificationTargetConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $NotificationTargetConfigBuilder toBuilder() =>
      $NotificationTargetConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NotificationTargetConfig &&
        description == other.description &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$NotificationTargetConfig')
          ..add('description', description)
          ..add('type', type))
        .toString();
  }
}

class $NotificationTargetConfigBuilder
    implements
        Builder<$NotificationTargetConfig, $NotificationTargetConfigBuilder>,
        NotificationTargetConfigBuilder {
  _$$NotificationTargetConfig? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $NotificationTargetConfigBuilder() {
    $NotificationTargetConfig._defaults(this);
  }

  $NotificationTargetConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NotificationTargetConfig other) {
    _$v = other as _$$NotificationTargetConfig;
  }

  @override
  void update(void Function($NotificationTargetConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $NotificationTargetConfig build() => _build();

  _$$NotificationTargetConfig _build() {
    final _$result =
        _$v ??
        _$$NotificationTargetConfig._(
          description: description,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$NotificationTargetConfig',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
