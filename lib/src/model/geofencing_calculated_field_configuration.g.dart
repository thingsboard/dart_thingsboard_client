// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geofencing_calculated_field_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GeofencingCalculatedFieldConfiguration
    extends GeofencingCalculatedFieldConfiguration {
  @override
  final EntityCoordinates entityCoordinates;
  @override
  final BuiltMap<String, ZoneGroupConfiguration> zoneGroups;
  @override
  final bool? scheduledUpdateEnabled;
  @override
  final int? scheduledUpdateInterval;
  @override
  final Output? output;
  @override
  final String type;

  factory _$GeofencingCalculatedFieldConfiguration([
    void Function(GeofencingCalculatedFieldConfigurationBuilder)? updates,
  ]) => (GeofencingCalculatedFieldConfigurationBuilder()..update(updates))
      ._build();

  _$GeofencingCalculatedFieldConfiguration._({
    required this.entityCoordinates,
    required this.zoneGroups,
    this.scheduledUpdateEnabled,
    this.scheduledUpdateInterval,
    this.output,
    required this.type,
  }) : super._();
  @override
  GeofencingCalculatedFieldConfiguration rebuild(
    void Function(GeofencingCalculatedFieldConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GeofencingCalculatedFieldConfigurationBuilder toBuilder() =>
      GeofencingCalculatedFieldConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeofencingCalculatedFieldConfiguration &&
        entityCoordinates == other.entityCoordinates &&
        zoneGroups == other.zoneGroups &&
        scheduledUpdateEnabled == other.scheduledUpdateEnabled &&
        scheduledUpdateInterval == other.scheduledUpdateInterval &&
        output == other.output &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityCoordinates.hashCode);
    _$hash = $jc(_$hash, zoneGroups.hashCode);
    _$hash = $jc(_$hash, scheduledUpdateEnabled.hashCode);
    _$hash = $jc(_$hash, scheduledUpdateInterval.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GeofencingCalculatedFieldConfiguration',
          )
          ..add('entityCoordinates', entityCoordinates)
          ..add('zoneGroups', zoneGroups)
          ..add('scheduledUpdateEnabled', scheduledUpdateEnabled)
          ..add('scheduledUpdateInterval', scheduledUpdateInterval)
          ..add('output', output)
          ..add('type', type))
        .toString();
  }
}

class GeofencingCalculatedFieldConfigurationBuilder
    implements
        Builder<
          GeofencingCalculatedFieldConfiguration,
          GeofencingCalculatedFieldConfigurationBuilder
        >,
        CalculatedFieldConfigurationBuilder {
  _$GeofencingCalculatedFieldConfiguration? _$v;

  EntityCoordinatesBuilder? _entityCoordinates;
  EntityCoordinatesBuilder get entityCoordinates =>
      _$this._entityCoordinates ??= EntityCoordinatesBuilder();
  set entityCoordinates(
    covariant EntityCoordinatesBuilder? entityCoordinates,
  ) => _$this._entityCoordinates = entityCoordinates;

  MapBuilder<String, ZoneGroupConfiguration>? _zoneGroups;
  MapBuilder<String, ZoneGroupConfiguration> get zoneGroups =>
      _$this._zoneGroups ??= MapBuilder<String, ZoneGroupConfiguration>();
  set zoneGroups(
    covariant MapBuilder<String, ZoneGroupConfiguration>? zoneGroups,
  ) => _$this._zoneGroups = zoneGroups;

  bool? _scheduledUpdateEnabled;
  bool? get scheduledUpdateEnabled => _$this._scheduledUpdateEnabled;
  set scheduledUpdateEnabled(covariant bool? scheduledUpdateEnabled) =>
      _$this._scheduledUpdateEnabled = scheduledUpdateEnabled;

  int? _scheduledUpdateInterval;
  int? get scheduledUpdateInterval => _$this._scheduledUpdateInterval;
  set scheduledUpdateInterval(covariant int? scheduledUpdateInterval) =>
      _$this._scheduledUpdateInterval = scheduledUpdateInterval;

  Output? _output;
  Output? get output => _$this._output;
  set output(covariant Output? output) => _$this._output = output;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  GeofencingCalculatedFieldConfigurationBuilder() {
    GeofencingCalculatedFieldConfiguration._defaults(this);
  }

  GeofencingCalculatedFieldConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityCoordinates = $v.entityCoordinates.toBuilder();
      _zoneGroups = $v.zoneGroups.toBuilder();
      _scheduledUpdateEnabled = $v.scheduledUpdateEnabled;
      _scheduledUpdateInterval = $v.scheduledUpdateInterval;
      _output = $v.output;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant GeofencingCalculatedFieldConfiguration other) {
    _$v = other as _$GeofencingCalculatedFieldConfiguration;
  }

  @override
  void update(
    void Function(GeofencingCalculatedFieldConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GeofencingCalculatedFieldConfiguration build() => _build();

  _$GeofencingCalculatedFieldConfiguration _build() {
    _$GeofencingCalculatedFieldConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$GeofencingCalculatedFieldConfiguration._(
            entityCoordinates: entityCoordinates.build(),
            zoneGroups: zoneGroups.build(),
            scheduledUpdateEnabled: scheduledUpdateEnabled,
            scheduledUpdateInterval: scheduledUpdateInterval,
            output: output,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'GeofencingCalculatedFieldConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityCoordinates';
        entityCoordinates.build();
        _$failedField = 'zoneGroups';
        zoneGroups.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GeofencingCalculatedFieldConfiguration',
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
