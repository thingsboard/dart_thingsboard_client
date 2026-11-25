// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone_group_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ZoneGroupConfiguration extends ZoneGroupConfiguration {
  @override
  final EntityId? refEntityId;
  @override
  final CfArgumentDynamicSourceConfiguration? refDynamicSourceConfiguration;
  @override
  final String perimeterKeyName;
  @override
  final GeofencingReportStrategy reportStrategy;
  @override
  final bool? createRelationsWithMatchedZones;
  @override
  final String? relationType;
  @override
  final EntitySearchDirection? direction;

  factory _$ZoneGroupConfiguration([
    void Function(ZoneGroupConfigurationBuilder)? updates,
  ]) => (ZoneGroupConfigurationBuilder()..update(updates))._build();

  _$ZoneGroupConfiguration._({
    this.refEntityId,
    this.refDynamicSourceConfiguration,
    required this.perimeterKeyName,
    required this.reportStrategy,
    this.createRelationsWithMatchedZones,
    this.relationType,
    this.direction,
  }) : super._();
  @override
  ZoneGroupConfiguration rebuild(
    void Function(ZoneGroupConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ZoneGroupConfigurationBuilder toBuilder() =>
      ZoneGroupConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ZoneGroupConfiguration &&
        refEntityId == other.refEntityId &&
        refDynamicSourceConfiguration == other.refDynamicSourceConfiguration &&
        perimeterKeyName == other.perimeterKeyName &&
        reportStrategy == other.reportStrategy &&
        createRelationsWithMatchedZones ==
            other.createRelationsWithMatchedZones &&
        relationType == other.relationType &&
        direction == other.direction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refEntityId.hashCode);
    _$hash = $jc(_$hash, refDynamicSourceConfiguration.hashCode);
    _$hash = $jc(_$hash, perimeterKeyName.hashCode);
    _$hash = $jc(_$hash, reportStrategy.hashCode);
    _$hash = $jc(_$hash, createRelationsWithMatchedZones.hashCode);
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ZoneGroupConfiguration')
          ..add('refEntityId', refEntityId)
          ..add('refDynamicSourceConfiguration', refDynamicSourceConfiguration)
          ..add('perimeterKeyName', perimeterKeyName)
          ..add('reportStrategy', reportStrategy)
          ..add(
            'createRelationsWithMatchedZones',
            createRelationsWithMatchedZones,
          )
          ..add('relationType', relationType)
          ..add('direction', direction))
        .toString();
  }
}

class ZoneGroupConfigurationBuilder
    implements Builder<ZoneGroupConfiguration, ZoneGroupConfigurationBuilder> {
  _$ZoneGroupConfiguration? _$v;

  EntityId? _refEntityId;
  EntityId? get refEntityId => _$this._refEntityId;
  set refEntityId(EntityId? refEntityId) => _$this._refEntityId = refEntityId;

  CfArgumentDynamicSourceConfiguration? _refDynamicSourceConfiguration;
  CfArgumentDynamicSourceConfiguration? get refDynamicSourceConfiguration =>
      _$this._refDynamicSourceConfiguration;
  set refDynamicSourceConfiguration(
    CfArgumentDynamicSourceConfiguration? refDynamicSourceConfiguration,
  ) => _$this._refDynamicSourceConfiguration = refDynamicSourceConfiguration;

  String? _perimeterKeyName;
  String? get perimeterKeyName => _$this._perimeterKeyName;
  set perimeterKeyName(String? perimeterKeyName) =>
      _$this._perimeterKeyName = perimeterKeyName;

  GeofencingReportStrategy? _reportStrategy;
  GeofencingReportStrategy? get reportStrategy => _$this._reportStrategy;
  set reportStrategy(GeofencingReportStrategy? reportStrategy) =>
      _$this._reportStrategy = reportStrategy;

  bool? _createRelationsWithMatchedZones;
  bool? get createRelationsWithMatchedZones =>
      _$this._createRelationsWithMatchedZones;
  set createRelationsWithMatchedZones(bool? createRelationsWithMatchedZones) =>
      _$this._createRelationsWithMatchedZones = createRelationsWithMatchedZones;

  String? _relationType;
  String? get relationType => _$this._relationType;
  set relationType(String? relationType) => _$this._relationType = relationType;

  EntitySearchDirection? _direction;
  EntitySearchDirection? get direction => _$this._direction;
  set direction(EntitySearchDirection? direction) =>
      _$this._direction = direction;

  ZoneGroupConfigurationBuilder() {
    ZoneGroupConfiguration._defaults(this);
  }

  ZoneGroupConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refEntityId = $v.refEntityId;
      _refDynamicSourceConfiguration = $v.refDynamicSourceConfiguration;
      _perimeterKeyName = $v.perimeterKeyName;
      _reportStrategy = $v.reportStrategy;
      _createRelationsWithMatchedZones = $v.createRelationsWithMatchedZones;
      _relationType = $v.relationType;
      _direction = $v.direction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ZoneGroupConfiguration other) {
    _$v = other as _$ZoneGroupConfiguration;
  }

  @override
  void update(void Function(ZoneGroupConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ZoneGroupConfiguration build() => _build();

  _$ZoneGroupConfiguration _build() {
    final _$result =
        _$v ??
        _$ZoneGroupConfiguration._(
          refEntityId: refEntityId,
          refDynamicSourceConfiguration: refDynamicSourceConfiguration,
          perimeterKeyName: BuiltValueNullFieldError.checkNotNull(
            perimeterKeyName,
            r'ZoneGroupConfiguration',
            'perimeterKeyName',
          ),
          reportStrategy: BuiltValueNullFieldError.checkNotNull(
            reportStrategy,
            r'ZoneGroupConfiguration',
            'reportStrategy',
          ),
          createRelationsWithMatchedZones: createRelationsWithMatchedZones,
          relationType: relationType,
          direction: direction,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
