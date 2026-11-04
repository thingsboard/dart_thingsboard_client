// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_type_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeTypeFilter extends EdgeTypeFilter {
  @override
  final String? edgeNameFilter;
  @override
  final BuiltList<String>? edgeTypes;
  @override
  final String? edgeType;
  @override
  final String type;

  factory _$EdgeTypeFilter([void Function(EdgeTypeFilterBuilder)? updates]) =>
      (EdgeTypeFilterBuilder()..update(updates))._build();

  _$EdgeTypeFilter._({
    this.edgeNameFilter,
    this.edgeTypes,
    this.edgeType,
    required this.type,
  }) : super._();
  @override
  EdgeTypeFilter rebuild(void Function(EdgeTypeFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdgeTypeFilterBuilder toBuilder() => EdgeTypeFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeTypeFilter &&
        edgeNameFilter == other.edgeNameFilter &&
        edgeTypes == other.edgeTypes &&
        edgeType == other.edgeType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, edgeNameFilter.hashCode);
    _$hash = $jc(_$hash, edgeTypes.hashCode);
    _$hash = $jc(_$hash, edgeType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdgeTypeFilter')
          ..add('edgeNameFilter', edgeNameFilter)
          ..add('edgeTypes', edgeTypes)
          ..add('edgeType', edgeType)
          ..add('type', type))
        .toString();
  }
}

class EdgeTypeFilterBuilder
    implements
        Builder<EdgeTypeFilter, EdgeTypeFilterBuilder>,
        EntityFilterBuilder {
  _$EdgeTypeFilter? _$v;

  String? _edgeNameFilter;
  String? get edgeNameFilter => _$this._edgeNameFilter;
  set edgeNameFilter(covariant String? edgeNameFilter) =>
      _$this._edgeNameFilter = edgeNameFilter;

  ListBuilder<String>? _edgeTypes;
  ListBuilder<String> get edgeTypes =>
      _$this._edgeTypes ??= ListBuilder<String>();
  set edgeTypes(covariant ListBuilder<String>? edgeTypes) =>
      _$this._edgeTypes = edgeTypes;

  String? _edgeType;
  String? get edgeType => _$this._edgeType;
  set edgeType(covariant String? edgeType) => _$this._edgeType = edgeType;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EdgeTypeFilterBuilder() {
    EdgeTypeFilter._defaults(this);
  }

  EdgeTypeFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _edgeNameFilter = $v.edgeNameFilter;
      _edgeTypes = $v.edgeTypes?.toBuilder();
      _edgeType = $v.edgeType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EdgeTypeFilter other) {
    _$v = other as _$EdgeTypeFilter;
  }

  @override
  void update(void Function(EdgeTypeFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdgeTypeFilter build() => _build();

  _$EdgeTypeFilter _build() {
    _$EdgeTypeFilter _$result;
    try {
      _$result =
          _$v ??
          _$EdgeTypeFilter._(
            edgeNameFilter: edgeNameFilter,
            edgeTypes: _edgeTypes?.build(),
            edgeType: edgeType,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EdgeTypeFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edgeTypes';
        _edgeTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdgeTypeFilter',
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
