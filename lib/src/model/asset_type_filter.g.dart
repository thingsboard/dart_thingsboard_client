// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_type_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssetTypeFilter extends AssetTypeFilter {
  @override
  final BuiltList<String>? assetTypes;
  @override
  final String? assetNameFilter;
  @override
  final String? assetType;
  @override
  final String type;

  factory _$AssetTypeFilter([void Function(AssetTypeFilterBuilder)? updates]) =>
      (AssetTypeFilterBuilder()..update(updates))._build();

  _$AssetTypeFilter._({
    this.assetTypes,
    this.assetNameFilter,
    this.assetType,
    required this.type,
  }) : super._();
  @override
  AssetTypeFilter rebuild(void Function(AssetTypeFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetTypeFilterBuilder toBuilder() => AssetTypeFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetTypeFilter &&
        assetTypes == other.assetTypes &&
        assetNameFilter == other.assetNameFilter &&
        assetType == other.assetType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assetTypes.hashCode);
    _$hash = $jc(_$hash, assetNameFilter.hashCode);
    _$hash = $jc(_$hash, assetType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetTypeFilter')
          ..add('assetTypes', assetTypes)
          ..add('assetNameFilter', assetNameFilter)
          ..add('assetType', assetType)
          ..add('type', type))
        .toString();
  }
}

class AssetTypeFilterBuilder
    implements
        Builder<AssetTypeFilter, AssetTypeFilterBuilder>,
        EntityFilterBuilder {
  _$AssetTypeFilter? _$v;

  ListBuilder<String>? _assetTypes;
  ListBuilder<String> get assetTypes =>
      _$this._assetTypes ??= ListBuilder<String>();
  set assetTypes(covariant ListBuilder<String>? assetTypes) =>
      _$this._assetTypes = assetTypes;

  String? _assetNameFilter;
  String? get assetNameFilter => _$this._assetNameFilter;
  set assetNameFilter(covariant String? assetNameFilter) =>
      _$this._assetNameFilter = assetNameFilter;

  String? _assetType;
  String? get assetType => _$this._assetType;
  set assetType(covariant String? assetType) => _$this._assetType = assetType;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AssetTypeFilterBuilder() {
    AssetTypeFilter._defaults(this);
  }

  AssetTypeFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetTypes = $v.assetTypes?.toBuilder();
      _assetNameFilter = $v.assetNameFilter;
      _assetType = $v.assetType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AssetTypeFilter other) {
    _$v = other as _$AssetTypeFilter;
  }

  @override
  void update(void Function(AssetTypeFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetTypeFilter build() => _build();

  _$AssetTypeFilter _build() {
    _$AssetTypeFilter _$result;
    try {
      _$result =
          _$v ??
          _$AssetTypeFilter._(
            assetTypes: _assetTypes?.build(),
            assetNameFilter: assetNameFilter,
            assetType: assetType,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AssetTypeFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assetTypes';
        _assetTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AssetTypeFilter',
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
