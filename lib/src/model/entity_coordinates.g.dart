// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_coordinates.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityCoordinates extends EntityCoordinates {
  @override
  final String latitudeKeyName;
  @override
  final String longitudeKeyName;

  factory _$EntityCoordinates([
    void Function(EntityCoordinatesBuilder)? updates,
  ]) => (EntityCoordinatesBuilder()..update(updates))._build();

  _$EntityCoordinates._({
    required this.latitudeKeyName,
    required this.longitudeKeyName,
  }) : super._();
  @override
  EntityCoordinates rebuild(void Function(EntityCoordinatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityCoordinatesBuilder toBuilder() =>
      EntityCoordinatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityCoordinates &&
        latitudeKeyName == other.latitudeKeyName &&
        longitudeKeyName == other.longitudeKeyName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latitudeKeyName.hashCode);
    _$hash = $jc(_$hash, longitudeKeyName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityCoordinates')
          ..add('latitudeKeyName', latitudeKeyName)
          ..add('longitudeKeyName', longitudeKeyName))
        .toString();
  }
}

class EntityCoordinatesBuilder
    implements Builder<EntityCoordinates, EntityCoordinatesBuilder> {
  _$EntityCoordinates? _$v;

  String? _latitudeKeyName;
  String? get latitudeKeyName => _$this._latitudeKeyName;
  set latitudeKeyName(String? latitudeKeyName) =>
      _$this._latitudeKeyName = latitudeKeyName;

  String? _longitudeKeyName;
  String? get longitudeKeyName => _$this._longitudeKeyName;
  set longitudeKeyName(String? longitudeKeyName) =>
      _$this._longitudeKeyName = longitudeKeyName;

  EntityCoordinatesBuilder() {
    EntityCoordinates._defaults(this);
  }

  EntityCoordinatesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitudeKeyName = $v.latitudeKeyName;
      _longitudeKeyName = $v.longitudeKeyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityCoordinates other) {
    _$v = other as _$EntityCoordinates;
  }

  @override
  void update(void Function(EntityCoordinatesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityCoordinates build() => _build();

  _$EntityCoordinates _build() {
    final _$result =
        _$v ??
        _$EntityCoordinates._(
          latitudeKeyName: BuiltValueNullFieldError.checkNotNull(
            latitudeKeyName,
            r'EntityCoordinates',
            'latitudeKeyName',
          ),
          longitudeKeyName: BuiltValueNullFieldError.checkNotNull(
            longitudeKeyName,
            r'EntityCoordinates',
            'longitudeKeyName',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
