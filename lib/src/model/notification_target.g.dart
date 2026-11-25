// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationTarget extends NotificationTarget {
  @override
  final NotificationTargetId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String name;
  @override
  final NotificationTargetConfig configuration;

  factory _$NotificationTarget([
    void Function(NotificationTargetBuilder)? updates,
  ]) => (NotificationTargetBuilder()..update(updates))._build();

  _$NotificationTarget._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.name,
    required this.configuration,
  }) : super._();
  @override
  NotificationTarget rebuild(
    void Function(NotificationTargetBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationTargetBuilder toBuilder() =>
      NotificationTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationTarget &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        configuration == other.configuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationTarget')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('configuration', configuration))
        .toString();
  }
}

class NotificationTargetBuilder
    implements Builder<NotificationTarget, NotificationTargetBuilder> {
  _$NotificationTarget? _$v;

  NotificationTargetIdBuilder? _id;
  NotificationTargetIdBuilder get id =>
      _$this._id ??= NotificationTargetIdBuilder();
  set id(NotificationTargetIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  NotificationTargetConfig? _configuration;
  NotificationTargetConfig? get configuration => _$this._configuration;
  set configuration(NotificationTargetConfig? configuration) =>
      _$this._configuration = configuration;

  NotificationTargetBuilder() {
    NotificationTarget._defaults(this);
  }

  NotificationTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _configuration = $v.configuration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationTarget other) {
    _$v = other as _$NotificationTarget;
  }

  @override
  void update(void Function(NotificationTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationTarget build() => _build();

  _$NotificationTarget _build() {
    _$NotificationTarget _$result;
    try {
      _$result =
          _$v ??
          _$NotificationTarget._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'NotificationTarget',
              'name',
            ),
            configuration: BuiltValueNullFieldError.checkNotNull(
              configuration,
              r'NotificationTarget',
              'configuration',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationTarget',
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
