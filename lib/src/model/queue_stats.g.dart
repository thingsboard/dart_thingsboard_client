// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueueStats extends QueueStats {
  @override
  final QueueStatsId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String? queueName;
  @override
  final String? serviceId;

  factory _$QueueStats([void Function(QueueStatsBuilder)? updates]) =>
      (QueueStatsBuilder()..update(updates))._build();

  _$QueueStats._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.queueName,
    this.serviceId,
  }) : super._();
  @override
  QueueStats rebuild(void Function(QueueStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueueStatsBuilder toBuilder() => QueueStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueueStats &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        queueName == other.queueName &&
        serviceId == other.serviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, queueName.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QueueStats')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('queueName', queueName)
          ..add('serviceId', serviceId))
        .toString();
  }
}

class QueueStatsBuilder implements Builder<QueueStats, QueueStatsBuilder> {
  _$QueueStats? _$v;

  QueueStatsIdBuilder? _id;
  QueueStatsIdBuilder get id => _$this._id ??= QueueStatsIdBuilder();
  set id(QueueStatsIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _queueName;
  String? get queueName => _$this._queueName;
  set queueName(String? queueName) => _$this._queueName = queueName;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  QueueStatsBuilder() {
    QueueStats._defaults(this);
  }

  QueueStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _queueName = $v.queueName;
      _serviceId = $v.serviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueueStats other) {
    _$v = other as _$QueueStats;
  }

  @override
  void update(void Function(QueueStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueueStats build() => _build();

  _$QueueStats _build() {
    _$QueueStats _$result;
    try {
      _$result =
          _$v ??
          _$QueueStats._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            queueName: queueName,
            serviceId: serviceId,
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
          r'QueueStats',
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
