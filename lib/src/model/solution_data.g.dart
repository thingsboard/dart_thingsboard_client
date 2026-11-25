// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solution_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SolutionData extends SolutionData {
  @override
  final BuiltMap<String, BuiltList<EntityExportData>> entities;

  factory _$SolutionData([void Function(SolutionDataBuilder)? updates]) =>
      (SolutionDataBuilder()..update(updates))._build();

  _$SolutionData._({required this.entities}) : super._();
  @override
  SolutionData rebuild(void Function(SolutionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SolutionDataBuilder toBuilder() => SolutionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SolutionData && entities == other.entities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'SolutionData',
    )..add('entities', entities)).toString();
  }
}

class SolutionDataBuilder
    implements Builder<SolutionData, SolutionDataBuilder> {
  _$SolutionData? _$v;

  MapBuilder<String, BuiltList<EntityExportData>>? _entities;
  MapBuilder<String, BuiltList<EntityExportData>> get entities =>
      _$this._entities ??= MapBuilder<String, BuiltList<EntityExportData>>();
  set entities(MapBuilder<String, BuiltList<EntityExportData>>? entities) =>
      _$this._entities = entities;

  SolutionDataBuilder() {
    SolutionData._defaults(this);
  }

  SolutionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entities = $v.entities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SolutionData other) {
    _$v = other as _$SolutionData;
  }

  @override
  void update(void Function(SolutionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SolutionData build() => _build();

  _$SolutionData _build() {
    _$SolutionData _$result;
    try {
      _$result = _$v ?? _$SolutionData._(entities: entities.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entities';
        entities.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SolutionData',
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
