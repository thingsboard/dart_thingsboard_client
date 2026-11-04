// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_mapping_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TelemetryMappingConfiguration extends TelemetryMappingConfiguration {
  @override
  final BuiltMap<String, String>? keyName;
  @override
  final BuiltSet<String>? observe;
  @override
  final BuiltSet<String>? attribute;
  @override
  final BuiltSet<String>? telemetry;
  @override
  final BuiltMap<String, ObjectAttributes>? attributeLwm2m;
  @override
  final bool? initAttrTelAsObsStrategy;
  @override
  final TelemetryObserveStrategy? observeStrategy;

  factory _$TelemetryMappingConfiguration([
    void Function(TelemetryMappingConfigurationBuilder)? updates,
  ]) => (TelemetryMappingConfigurationBuilder()..update(updates))._build();

  _$TelemetryMappingConfiguration._({
    this.keyName,
    this.observe,
    this.attribute,
    this.telemetry,
    this.attributeLwm2m,
    this.initAttrTelAsObsStrategy,
    this.observeStrategy,
  }) : super._();
  @override
  TelemetryMappingConfiguration rebuild(
    void Function(TelemetryMappingConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TelemetryMappingConfigurationBuilder toBuilder() =>
      TelemetryMappingConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TelemetryMappingConfiguration &&
        keyName == other.keyName &&
        observe == other.observe &&
        attribute == other.attribute &&
        telemetry == other.telemetry &&
        attributeLwm2m == other.attributeLwm2m &&
        initAttrTelAsObsStrategy == other.initAttrTelAsObsStrategy &&
        observeStrategy == other.observeStrategy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, observe.hashCode);
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, telemetry.hashCode);
    _$hash = $jc(_$hash, attributeLwm2m.hashCode);
    _$hash = $jc(_$hash, initAttrTelAsObsStrategy.hashCode);
    _$hash = $jc(_$hash, observeStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TelemetryMappingConfiguration')
          ..add('keyName', keyName)
          ..add('observe', observe)
          ..add('attribute', attribute)
          ..add('telemetry', telemetry)
          ..add('attributeLwm2m', attributeLwm2m)
          ..add('initAttrTelAsObsStrategy', initAttrTelAsObsStrategy)
          ..add('observeStrategy', observeStrategy))
        .toString();
  }
}

class TelemetryMappingConfigurationBuilder
    implements
        Builder<
          TelemetryMappingConfiguration,
          TelemetryMappingConfigurationBuilder
        > {
  _$TelemetryMappingConfiguration? _$v;

  MapBuilder<String, String>? _keyName;
  MapBuilder<String, String> get keyName =>
      _$this._keyName ??= MapBuilder<String, String>();
  set keyName(MapBuilder<String, String>? keyName) => _$this._keyName = keyName;

  SetBuilder<String>? _observe;
  SetBuilder<String> get observe => _$this._observe ??= SetBuilder<String>();
  set observe(SetBuilder<String>? observe) => _$this._observe = observe;

  SetBuilder<String>? _attribute;
  SetBuilder<String> get attribute =>
      _$this._attribute ??= SetBuilder<String>();
  set attribute(SetBuilder<String>? attribute) => _$this._attribute = attribute;

  SetBuilder<String>? _telemetry;
  SetBuilder<String> get telemetry =>
      _$this._telemetry ??= SetBuilder<String>();
  set telemetry(SetBuilder<String>? telemetry) => _$this._telemetry = telemetry;

  MapBuilder<String, ObjectAttributes>? _attributeLwm2m;
  MapBuilder<String, ObjectAttributes> get attributeLwm2m =>
      _$this._attributeLwm2m ??= MapBuilder<String, ObjectAttributes>();
  set attributeLwm2m(MapBuilder<String, ObjectAttributes>? attributeLwm2m) =>
      _$this._attributeLwm2m = attributeLwm2m;

  bool? _initAttrTelAsObsStrategy;
  bool? get initAttrTelAsObsStrategy => _$this._initAttrTelAsObsStrategy;
  set initAttrTelAsObsStrategy(bool? initAttrTelAsObsStrategy) =>
      _$this._initAttrTelAsObsStrategy = initAttrTelAsObsStrategy;

  TelemetryObserveStrategy? _observeStrategy;
  TelemetryObserveStrategy? get observeStrategy => _$this._observeStrategy;
  set observeStrategy(TelemetryObserveStrategy? observeStrategy) =>
      _$this._observeStrategy = observeStrategy;

  TelemetryMappingConfigurationBuilder() {
    TelemetryMappingConfiguration._defaults(this);
  }

  TelemetryMappingConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyName = $v.keyName?.toBuilder();
      _observe = $v.observe?.toBuilder();
      _attribute = $v.attribute?.toBuilder();
      _telemetry = $v.telemetry?.toBuilder();
      _attributeLwm2m = $v.attributeLwm2m?.toBuilder();
      _initAttrTelAsObsStrategy = $v.initAttrTelAsObsStrategy;
      _observeStrategy = $v.observeStrategy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TelemetryMappingConfiguration other) {
    _$v = other as _$TelemetryMappingConfiguration;
  }

  @override
  void update(void Function(TelemetryMappingConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TelemetryMappingConfiguration build() => _build();

  _$TelemetryMappingConfiguration _build() {
    _$TelemetryMappingConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$TelemetryMappingConfiguration._(
            keyName: _keyName?.build(),
            observe: _observe?.build(),
            attribute: _attribute?.build(),
            telemetry: _telemetry?.build(),
            attributeLwm2m: _attributeLwm2m?.build(),
            initAttrTelAsObsStrategy: initAttrTelAsObsStrategy,
            observeStrategy: observeStrategy,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keyName';
        _keyName?.build();
        _$failedField = 'observe';
        _observe?.build();
        _$failedField = 'attribute';
        _attribute?.build();
        _$failedField = 'telemetry';
        _telemetry?.build();
        _$failedField = 'attributeLwm2m';
        _attributeLwm2m?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TelemetryMappingConfiguration',
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
