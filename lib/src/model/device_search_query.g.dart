// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_search_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceSearchQuery extends DeviceSearchQuery {
  @override
  final RelationsSearchParameters? parameters;
  @override
  final String? relationType;
  @override
  final BuiltList<String>? deviceTypes;

  factory _$DeviceSearchQuery([
    void Function(DeviceSearchQueryBuilder)? updates,
  ]) => (DeviceSearchQueryBuilder()..update(updates))._build();

  _$DeviceSearchQuery._({this.parameters, this.relationType, this.deviceTypes})
    : super._();
  @override
  DeviceSearchQuery rebuild(void Function(DeviceSearchQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceSearchQueryBuilder toBuilder() =>
      DeviceSearchQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceSearchQuery &&
        parameters == other.parameters &&
        relationType == other.relationType &&
        deviceTypes == other.deviceTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jc(_$hash, deviceTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceSearchQuery')
          ..add('parameters', parameters)
          ..add('relationType', relationType)
          ..add('deviceTypes', deviceTypes))
        .toString();
  }
}

class DeviceSearchQueryBuilder
    implements Builder<DeviceSearchQuery, DeviceSearchQueryBuilder> {
  _$DeviceSearchQuery? _$v;

  RelationsSearchParametersBuilder? _parameters;
  RelationsSearchParametersBuilder get parameters =>
      _$this._parameters ??= RelationsSearchParametersBuilder();
  set parameters(RelationsSearchParametersBuilder? parameters) =>
      _$this._parameters = parameters;

  String? _relationType;
  String? get relationType => _$this._relationType;
  set relationType(String? relationType) => _$this._relationType = relationType;

  ListBuilder<String>? _deviceTypes;
  ListBuilder<String> get deviceTypes =>
      _$this._deviceTypes ??= ListBuilder<String>();
  set deviceTypes(ListBuilder<String>? deviceTypes) =>
      _$this._deviceTypes = deviceTypes;

  DeviceSearchQueryBuilder() {
    DeviceSearchQuery._defaults(this);
  }

  DeviceSearchQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameters = $v.parameters?.toBuilder();
      _relationType = $v.relationType;
      _deviceTypes = $v.deviceTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceSearchQuery other) {
    _$v = other as _$DeviceSearchQuery;
  }

  @override
  void update(void Function(DeviceSearchQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceSearchQuery build() => _build();

  _$DeviceSearchQuery _build() {
    _$DeviceSearchQuery _$result;
    try {
      _$result =
          _$v ??
          _$DeviceSearchQuery._(
            parameters: _parameters?.build(),
            relationType: relationType,
            deviceTypes: _deviceTypes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();

        _$failedField = 'deviceTypes';
        _deviceTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeviceSearchQuery',
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
