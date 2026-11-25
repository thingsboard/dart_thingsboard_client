// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_descriptor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComponentDescriptor extends ComponentDescriptor {
  @override
  final ComponentDescriptorId? id;
  @override
  final int? createdTime;
  @override
  final ComponentType? type;
  @override
  final ComponentScope? scope;
  @override
  final ComponentClusteringMode? clusteringMode;
  @override
  final String? name;
  @override
  final String? clazz;
  @override
  final JsonObject? configurationDescriptor;
  @override
  final int? configurationVersion;
  @override
  final String? actions;
  @override
  final bool? hasQueueName;
  @override
  final bool? hasSecrets;

  factory _$ComponentDescriptor([
    void Function(ComponentDescriptorBuilder)? updates,
  ]) => (ComponentDescriptorBuilder()..update(updates))._build();

  _$ComponentDescriptor._({
    this.id,
    this.createdTime,
    this.type,
    this.scope,
    this.clusteringMode,
    this.name,
    this.clazz,
    this.configurationDescriptor,
    this.configurationVersion,
    this.actions,
    this.hasQueueName,
    this.hasSecrets,
  }) : super._();
  @override
  ComponentDescriptor rebuild(
    void Function(ComponentDescriptorBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ComponentDescriptorBuilder toBuilder() =>
      ComponentDescriptorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComponentDescriptor &&
        id == other.id &&
        createdTime == other.createdTime &&
        type == other.type &&
        scope == other.scope &&
        clusteringMode == other.clusteringMode &&
        name == other.name &&
        clazz == other.clazz &&
        configurationDescriptor == other.configurationDescriptor &&
        configurationVersion == other.configurationVersion &&
        actions == other.actions &&
        hasQueueName == other.hasQueueName &&
        hasSecrets == other.hasSecrets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, clusteringMode.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, clazz.hashCode);
    _$hash = $jc(_$hash, configurationDescriptor.hashCode);
    _$hash = $jc(_$hash, configurationVersion.hashCode);
    _$hash = $jc(_$hash, actions.hashCode);
    _$hash = $jc(_$hash, hasQueueName.hashCode);
    _$hash = $jc(_$hash, hasSecrets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComponentDescriptor')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('type', type)
          ..add('scope', scope)
          ..add('clusteringMode', clusteringMode)
          ..add('name', name)
          ..add('clazz', clazz)
          ..add('configurationDescriptor', configurationDescriptor)
          ..add('configurationVersion', configurationVersion)
          ..add('actions', actions)
          ..add('hasQueueName', hasQueueName)
          ..add('hasSecrets', hasSecrets))
        .toString();
  }
}

class ComponentDescriptorBuilder
    implements Builder<ComponentDescriptor, ComponentDescriptorBuilder> {
  _$ComponentDescriptor? _$v;

  ComponentDescriptorIdBuilder? _id;
  ComponentDescriptorIdBuilder get id =>
      _$this._id ??= ComponentDescriptorIdBuilder();
  set id(ComponentDescriptorIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  ComponentType? _type;
  ComponentType? get type => _$this._type;
  set type(ComponentType? type) => _$this._type = type;

  ComponentScope? _scope;
  ComponentScope? get scope => _$this._scope;
  set scope(ComponentScope? scope) => _$this._scope = scope;

  ComponentClusteringMode? _clusteringMode;
  ComponentClusteringMode? get clusteringMode => _$this._clusteringMode;
  set clusteringMode(ComponentClusteringMode? clusteringMode) =>
      _$this._clusteringMode = clusteringMode;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _clazz;
  String? get clazz => _$this._clazz;
  set clazz(String? clazz) => _$this._clazz = clazz;

  JsonObject? _configurationDescriptor;
  JsonObject? get configurationDescriptor => _$this._configurationDescriptor;
  set configurationDescriptor(JsonObject? configurationDescriptor) =>
      _$this._configurationDescriptor = configurationDescriptor;

  int? _configurationVersion;
  int? get configurationVersion => _$this._configurationVersion;
  set configurationVersion(int? configurationVersion) =>
      _$this._configurationVersion = configurationVersion;

  String? _actions;
  String? get actions => _$this._actions;
  set actions(String? actions) => _$this._actions = actions;

  bool? _hasQueueName;
  bool? get hasQueueName => _$this._hasQueueName;
  set hasQueueName(bool? hasQueueName) => _$this._hasQueueName = hasQueueName;

  bool? _hasSecrets;
  bool? get hasSecrets => _$this._hasSecrets;
  set hasSecrets(bool? hasSecrets) => _$this._hasSecrets = hasSecrets;

  ComponentDescriptorBuilder() {
    ComponentDescriptor._defaults(this);
  }

  ComponentDescriptorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _type = $v.type;
      _scope = $v.scope;
      _clusteringMode = $v.clusteringMode;
      _name = $v.name;
      _clazz = $v.clazz;
      _configurationDescriptor = $v.configurationDescriptor;
      _configurationVersion = $v.configurationVersion;
      _actions = $v.actions;
      _hasQueueName = $v.hasQueueName;
      _hasSecrets = $v.hasSecrets;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComponentDescriptor other) {
    _$v = other as _$ComponentDescriptor;
  }

  @override
  void update(void Function(ComponentDescriptorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComponentDescriptor build() => _build();

  _$ComponentDescriptor _build() {
    _$ComponentDescriptor _$result;
    try {
      _$result =
          _$v ??
          _$ComponentDescriptor._(
            id: _id?.build(),
            createdTime: createdTime,
            type: type,
            scope: scope,
            clusteringMode: clusteringMode,
            name: name,
            clazz: clazz,
            configurationDescriptor: configurationDescriptor,
            configurationVersion: configurationVersion,
            actions: actions,
            hasQueueName: hasQueueName,
            hasSecrets: hasSecrets,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ComponentDescriptor',
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
