// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_users_notification_target_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlatformUsersNotificationTargetConfig
    extends PlatformUsersNotificationTargetConfig {
  @override
  final UsersFilter usersFilter;
  @override
  final String? description;
  @override
  final String type;

  factory _$PlatformUsersNotificationTargetConfig([
    void Function(PlatformUsersNotificationTargetConfigBuilder)? updates,
  ]) => (PlatformUsersNotificationTargetConfigBuilder()..update(updates))
      ._build();

  _$PlatformUsersNotificationTargetConfig._({
    required this.usersFilter,
    this.description,
    required this.type,
  }) : super._();
  @override
  PlatformUsersNotificationTargetConfig rebuild(
    void Function(PlatformUsersNotificationTargetConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlatformUsersNotificationTargetConfigBuilder toBuilder() =>
      PlatformUsersNotificationTargetConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformUsersNotificationTargetConfig &&
        usersFilter == other.usersFilter &&
        description == other.description &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usersFilter.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PlatformUsersNotificationTargetConfig',
          )
          ..add('usersFilter', usersFilter)
          ..add('description', description)
          ..add('type', type))
        .toString();
  }
}

class PlatformUsersNotificationTargetConfigBuilder
    implements
        Builder<
          PlatformUsersNotificationTargetConfig,
          PlatformUsersNotificationTargetConfigBuilder
        >,
        NotificationTargetConfigBuilder {
  _$PlatformUsersNotificationTargetConfig? _$v;

  UsersFilter? _usersFilter;
  UsersFilter? get usersFilter => _$this._usersFilter;
  set usersFilter(covariant UsersFilter? usersFilter) =>
      _$this._usersFilter = usersFilter;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  PlatformUsersNotificationTargetConfigBuilder() {
    PlatformUsersNotificationTargetConfig._defaults(this);
  }

  PlatformUsersNotificationTargetConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usersFilter = $v.usersFilter;
      _description = $v.description;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PlatformUsersNotificationTargetConfig other) {
    _$v = other as _$PlatformUsersNotificationTargetConfig;
  }

  @override
  void update(
    void Function(PlatformUsersNotificationTargetConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  PlatformUsersNotificationTargetConfig build() => _build();

  _$PlatformUsersNotificationTargetConfig _build() {
    final _$result =
        _$v ??
        _$PlatformUsersNotificationTargetConfig._(
          usersFilter: BuiltValueNullFieldError.checkNotNull(
            usersFilter,
            r'PlatformUsersNotificationTargetConfig',
            'usersFilter',
          ),
          description: description,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'PlatformUsersNotificationTargetConfig',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
