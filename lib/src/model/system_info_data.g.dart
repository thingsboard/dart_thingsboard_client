// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoData extends SystemInfoData {
  @override
  final String? serviceId;
  @override
  final String? serviceType;
  @override
  final int? cpuUsage;
  @override
  final int? cpuCount;
  @override
  final int? memoryUsage;
  @override
  final int? totalMemory;
  @override
  final int? discUsage;
  @override
  final int? totalDiscSpace;

  factory _$SystemInfoData([void Function(SystemInfoDataBuilder)? updates]) =>
      (SystemInfoDataBuilder()..update(updates))._build();

  _$SystemInfoData._({
    this.serviceId,
    this.serviceType,
    this.cpuUsage,
    this.cpuCount,
    this.memoryUsage,
    this.totalMemory,
    this.discUsage,
    this.totalDiscSpace,
  }) : super._();
  @override
  SystemInfoData rebuild(void Function(SystemInfoDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoDataBuilder toBuilder() => SystemInfoDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoData &&
        serviceId == other.serviceId &&
        serviceType == other.serviceType &&
        cpuUsage == other.cpuUsage &&
        cpuCount == other.cpuCount &&
        memoryUsage == other.memoryUsage &&
        totalMemory == other.totalMemory &&
        discUsage == other.discUsage &&
        totalDiscSpace == other.totalDiscSpace;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jc(_$hash, cpuUsage.hashCode);
    _$hash = $jc(_$hash, cpuCount.hashCode);
    _$hash = $jc(_$hash, memoryUsage.hashCode);
    _$hash = $jc(_$hash, totalMemory.hashCode);
    _$hash = $jc(_$hash, discUsage.hashCode);
    _$hash = $jc(_$hash, totalDiscSpace.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoData')
          ..add('serviceId', serviceId)
          ..add('serviceType', serviceType)
          ..add('cpuUsage', cpuUsage)
          ..add('cpuCount', cpuCount)
          ..add('memoryUsage', memoryUsage)
          ..add('totalMemory', totalMemory)
          ..add('discUsage', discUsage)
          ..add('totalDiscSpace', totalDiscSpace))
        .toString();
  }
}

class SystemInfoDataBuilder
    implements Builder<SystemInfoData, SystemInfoDataBuilder> {
  _$SystemInfoData? _$v;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  String? _serviceType;
  String? get serviceType => _$this._serviceType;
  set serviceType(String? serviceType) => _$this._serviceType = serviceType;

  int? _cpuUsage;
  int? get cpuUsage => _$this._cpuUsage;
  set cpuUsage(int? cpuUsage) => _$this._cpuUsage = cpuUsage;

  int? _cpuCount;
  int? get cpuCount => _$this._cpuCount;
  set cpuCount(int? cpuCount) => _$this._cpuCount = cpuCount;

  int? _memoryUsage;
  int? get memoryUsage => _$this._memoryUsage;
  set memoryUsage(int? memoryUsage) => _$this._memoryUsage = memoryUsage;

  int? _totalMemory;
  int? get totalMemory => _$this._totalMemory;
  set totalMemory(int? totalMemory) => _$this._totalMemory = totalMemory;

  int? _discUsage;
  int? get discUsage => _$this._discUsage;
  set discUsage(int? discUsage) => _$this._discUsage = discUsage;

  int? _totalDiscSpace;
  int? get totalDiscSpace => _$this._totalDiscSpace;
  set totalDiscSpace(int? totalDiscSpace) =>
      _$this._totalDiscSpace = totalDiscSpace;

  SystemInfoDataBuilder() {
    SystemInfoData._defaults(this);
  }

  SystemInfoDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceId = $v.serviceId;
      _serviceType = $v.serviceType;
      _cpuUsage = $v.cpuUsage;
      _cpuCount = $v.cpuCount;
      _memoryUsage = $v.memoryUsage;
      _totalMemory = $v.totalMemory;
      _discUsage = $v.discUsage;
      _totalDiscSpace = $v.totalDiscSpace;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoData other) {
    _$v = other as _$SystemInfoData;
  }

  @override
  void update(void Function(SystemInfoDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoData build() => _build();

  _$SystemInfoData _build() {
    final _$result =
        _$v ??
        _$SystemInfoData._(
          serviceId: serviceId,
          serviceType: serviceType,
          cpuUsage: cpuUsage,
          cpuCount: cpuCount,
          memoryUsage: memoryUsage,
          totalMemory: totalMemory,
          discUsage: discUsage,
          totalDiscSpace: totalDiscSpace,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
