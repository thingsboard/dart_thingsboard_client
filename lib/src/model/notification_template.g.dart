// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationTemplate extends NotificationTemplate {
  @override
  final NotificationTemplateId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String name;
  @override
  final NotificationType notificationType;
  @override
  final NotificationTemplateConfig configuration;

  factory _$NotificationTemplate([
    void Function(NotificationTemplateBuilder)? updates,
  ]) => (NotificationTemplateBuilder()..update(updates))._build();

  _$NotificationTemplate._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.name,
    required this.notificationType,
    required this.configuration,
  }) : super._();
  @override
  NotificationTemplate rebuild(
    void Function(NotificationTemplateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotificationTemplateBuilder toBuilder() =>
      NotificationTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationTemplate &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        notificationType == other.notificationType &&
        configuration == other.configuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, notificationType.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationTemplate')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('notificationType', notificationType)
          ..add('configuration', configuration))
        .toString();
  }
}

class NotificationTemplateBuilder
    implements Builder<NotificationTemplate, NotificationTemplateBuilder> {
  _$NotificationTemplate? _$v;

  NotificationTemplateIdBuilder? _id;
  NotificationTemplateIdBuilder get id =>
      _$this._id ??= NotificationTemplateIdBuilder();
  set id(NotificationTemplateIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  NotificationType? _notificationType;
  NotificationType? get notificationType => _$this._notificationType;
  set notificationType(NotificationType? notificationType) =>
      _$this._notificationType = notificationType;

  NotificationTemplateConfigBuilder? _configuration;
  NotificationTemplateConfigBuilder get configuration =>
      _$this._configuration ??= NotificationTemplateConfigBuilder();
  set configuration(NotificationTemplateConfigBuilder? configuration) =>
      _$this._configuration = configuration;

  NotificationTemplateBuilder() {
    NotificationTemplate._defaults(this);
  }

  NotificationTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _notificationType = $v.notificationType;
      _configuration = $v.configuration.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationTemplate other) {
    _$v = other as _$NotificationTemplate;
  }

  @override
  void update(void Function(NotificationTemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationTemplate build() => _build();

  _$NotificationTemplate _build() {
    _$NotificationTemplate _$result;
    try {
      _$result =
          _$v ??
          _$NotificationTemplate._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'NotificationTemplate',
              'name',
            ),
            notificationType: BuiltValueNullFieldError.checkNotNull(
              notificationType,
              r'NotificationTemplate',
              'notificationType',
            ),
            configuration: configuration.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'configuration';
        configuration.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotificationTemplate',
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
