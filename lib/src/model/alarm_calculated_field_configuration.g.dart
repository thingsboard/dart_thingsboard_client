// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_calculated_field_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmCalculatedFieldConfiguration
    extends AlarmCalculatedFieldConfiguration {
  @override
  final bool? propagateToTenant;
  @override
  final bool? propagateToOwner;
  @override
  final BuiltMap<String, AlarmRule> createRules;
  @override
  final BuiltList<String>? propagateRelationTypes;
  @override
  final AlarmRule? clearRule;
  @override
  final bool? propagate;
  @override
  final BuiltMap<String, Argument> arguments;
  @override
  final bool? propagateToOwnerHierarchy;
  @override
  final Output? output;
  @override
  final String type;

  factory _$AlarmCalculatedFieldConfiguration([
    void Function(AlarmCalculatedFieldConfigurationBuilder)? updates,
  ]) => (AlarmCalculatedFieldConfigurationBuilder()..update(updates))._build();

  _$AlarmCalculatedFieldConfiguration._({
    this.propagateToTenant,
    this.propagateToOwner,
    required this.createRules,
    this.propagateRelationTypes,
    this.clearRule,
    this.propagate,
    required this.arguments,
    this.propagateToOwnerHierarchy,
    this.output,
    required this.type,
  }) : super._();
  @override
  AlarmCalculatedFieldConfiguration rebuild(
    void Function(AlarmCalculatedFieldConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmCalculatedFieldConfigurationBuilder toBuilder() =>
      AlarmCalculatedFieldConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmCalculatedFieldConfiguration &&
        propagateToTenant == other.propagateToTenant &&
        propagateToOwner == other.propagateToOwner &&
        createRules == other.createRules &&
        propagateRelationTypes == other.propagateRelationTypes &&
        clearRule == other.clearRule &&
        propagate == other.propagate &&
        arguments == other.arguments &&
        propagateToOwnerHierarchy == other.propagateToOwnerHierarchy &&
        output == other.output &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, propagateToTenant.hashCode);
    _$hash = $jc(_$hash, propagateToOwner.hashCode);
    _$hash = $jc(_$hash, createRules.hashCode);
    _$hash = $jc(_$hash, propagateRelationTypes.hashCode);
    _$hash = $jc(_$hash, clearRule.hashCode);
    _$hash = $jc(_$hash, propagate.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, propagateToOwnerHierarchy.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmCalculatedFieldConfiguration')
          ..add('propagateToTenant', propagateToTenant)
          ..add('propagateToOwner', propagateToOwner)
          ..add('createRules', createRules)
          ..add('propagateRelationTypes', propagateRelationTypes)
          ..add('clearRule', clearRule)
          ..add('propagate', propagate)
          ..add('arguments', arguments)
          ..add('propagateToOwnerHierarchy', propagateToOwnerHierarchy)
          ..add('output', output)
          ..add('type', type))
        .toString();
  }
}

class AlarmCalculatedFieldConfigurationBuilder
    implements
        Builder<
          AlarmCalculatedFieldConfiguration,
          AlarmCalculatedFieldConfigurationBuilder
        >,
        CalculatedFieldConfigurationBuilder {
  _$AlarmCalculatedFieldConfiguration? _$v;

  bool? _propagateToTenant;
  bool? get propagateToTenant => _$this._propagateToTenant;
  set propagateToTenant(covariant bool? propagateToTenant) =>
      _$this._propagateToTenant = propagateToTenant;

  bool? _propagateToOwner;
  bool? get propagateToOwner => _$this._propagateToOwner;
  set propagateToOwner(covariant bool? propagateToOwner) =>
      _$this._propagateToOwner = propagateToOwner;

  MapBuilder<String, AlarmRule>? _createRules;
  MapBuilder<String, AlarmRule> get createRules =>
      _$this._createRules ??= MapBuilder<String, AlarmRule>();
  set createRules(covariant MapBuilder<String, AlarmRule>? createRules) =>
      _$this._createRules = createRules;

  ListBuilder<String>? _propagateRelationTypes;
  ListBuilder<String> get propagateRelationTypes =>
      _$this._propagateRelationTypes ??= ListBuilder<String>();
  set propagateRelationTypes(
    covariant ListBuilder<String>? propagateRelationTypes,
  ) => _$this._propagateRelationTypes = propagateRelationTypes;

  AlarmRuleBuilder? _clearRule;
  AlarmRuleBuilder get clearRule => _$this._clearRule ??= AlarmRuleBuilder();
  set clearRule(covariant AlarmRuleBuilder? clearRule) =>
      _$this._clearRule = clearRule;

  bool? _propagate;
  bool? get propagate => _$this._propagate;
  set propagate(covariant bool? propagate) => _$this._propagate = propagate;

  MapBuilder<String, Argument>? _arguments;
  MapBuilder<String, Argument> get arguments =>
      _$this._arguments ??= MapBuilder<String, Argument>();
  set arguments(covariant MapBuilder<String, Argument>? arguments) =>
      _$this._arguments = arguments;

  bool? _propagateToOwnerHierarchy;
  bool? get propagateToOwnerHierarchy => _$this._propagateToOwnerHierarchy;
  set propagateToOwnerHierarchy(covariant bool? propagateToOwnerHierarchy) =>
      _$this._propagateToOwnerHierarchy = propagateToOwnerHierarchy;

  Output? _output;
  Output? get output => _$this._output;
  set output(covariant Output? output) => _$this._output = output;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AlarmCalculatedFieldConfigurationBuilder() {
    AlarmCalculatedFieldConfiguration._defaults(this);
  }

  AlarmCalculatedFieldConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _propagateToTenant = $v.propagateToTenant;
      _propagateToOwner = $v.propagateToOwner;
      _createRules = $v.createRules.toBuilder();
      _propagateRelationTypes = $v.propagateRelationTypes?.toBuilder();
      _clearRule = $v.clearRule?.toBuilder();
      _propagate = $v.propagate;
      _arguments = $v.arguments.toBuilder();
      _propagateToOwnerHierarchy = $v.propagateToOwnerHierarchy;
      _output = $v.output;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmCalculatedFieldConfiguration other) {
    _$v = other as _$AlarmCalculatedFieldConfiguration;
  }

  @override
  void update(
    void Function(AlarmCalculatedFieldConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AlarmCalculatedFieldConfiguration build() => _build();

  _$AlarmCalculatedFieldConfiguration _build() {
    _$AlarmCalculatedFieldConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$AlarmCalculatedFieldConfiguration._(
            propagateToTenant: propagateToTenant,
            propagateToOwner: propagateToOwner,
            createRules: createRules.build(),
            propagateRelationTypes: _propagateRelationTypes?.build(),
            clearRule: _clearRule?.build(),
            propagate: propagate,
            arguments: arguments.build(),
            propagateToOwnerHierarchy: propagateToOwnerHierarchy,
            output: output,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AlarmCalculatedFieldConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createRules';
        createRules.build();
        _$failedField = 'propagateRelationTypes';
        _propagateRelationTypes?.build();
        _$failedField = 'clearRule';
        _clearRule?.build();

        _$failedField = 'arguments';
        arguments.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmCalculatedFieldConfiguration',
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
