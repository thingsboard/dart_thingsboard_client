// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class NotificationInfoBuilder {
  void replace(NotificationInfo other);
  void update(void Function(NotificationInfoBuilder) updates);
  DashboardIdBuilder get dashboardId;
  set dashboardId(DashboardIdBuilder? dashboardId);

  EntityId? get stateEntityId;
  set stateEntityId(EntityId? stateEntityId);

  String? get type;
  set type(String? type);
}

class _$$NotificationInfo extends $NotificationInfo {
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$$NotificationInfo([
    void Function($NotificationInfoBuilder)? updates,
  ]) => ($NotificationInfoBuilder()..update(updates))._build();

  _$$NotificationInfo._({
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  $NotificationInfo rebuild(void Function($NotificationInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $NotificationInfoBuilder toBuilder() =>
      $NotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NotificationInfo &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$NotificationInfo')
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class $NotificationInfoBuilder
    implements
        Builder<$NotificationInfo, $NotificationInfoBuilder>,
        NotificationInfoBuilder {
  _$$NotificationInfo? _$v;

  DashboardIdBuilder? _dashboardId;
  DashboardIdBuilder get dashboardId =>
      _$this._dashboardId ??= DashboardIdBuilder();
  set dashboardId(covariant DashboardIdBuilder? dashboardId) =>
      _$this._dashboardId = dashboardId;

  EntityId? _stateEntityId;
  EntityId? get stateEntityId => _$this._stateEntityId;
  set stateEntityId(covariant EntityId? stateEntityId) =>
      _$this._stateEntityId = stateEntityId;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $NotificationInfoBuilder() {
    $NotificationInfo._defaults(this);
  }

  $NotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NotificationInfo other) {
    _$v = other as _$$NotificationInfo;
  }

  @override
  void update(void Function($NotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $NotificationInfo build() => _build();

  _$$NotificationInfo _build() {
    _$$NotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$$NotificationInfo._(
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'$NotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'$NotificationInfo',
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
