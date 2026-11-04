// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_search_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssetSearchQuery extends AssetSearchQuery {
  @override
  final RelationsSearchParameters? parameters;
  @override
  final String? relationType;
  @override
  final BuiltList<String>? assetTypes;

  factory _$AssetSearchQuery([
    void Function(AssetSearchQueryBuilder)? updates,
  ]) => (AssetSearchQueryBuilder()..update(updates))._build();

  _$AssetSearchQuery._({this.parameters, this.relationType, this.assetTypes})
    : super._();
  @override
  AssetSearchQuery rebuild(void Function(AssetSearchQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetSearchQueryBuilder toBuilder() =>
      AssetSearchQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetSearchQuery &&
        parameters == other.parameters &&
        relationType == other.relationType &&
        assetTypes == other.assetTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jc(_$hash, assetTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetSearchQuery')
          ..add('parameters', parameters)
          ..add('relationType', relationType)
          ..add('assetTypes', assetTypes))
        .toString();
  }
}

class AssetSearchQueryBuilder
    implements Builder<AssetSearchQuery, AssetSearchQueryBuilder> {
  _$AssetSearchQuery? _$v;

  RelationsSearchParametersBuilder? _parameters;
  RelationsSearchParametersBuilder get parameters =>
      _$this._parameters ??= RelationsSearchParametersBuilder();
  set parameters(RelationsSearchParametersBuilder? parameters) =>
      _$this._parameters = parameters;

  String? _relationType;
  String? get relationType => _$this._relationType;
  set relationType(String? relationType) => _$this._relationType = relationType;

  ListBuilder<String>? _assetTypes;
  ListBuilder<String> get assetTypes =>
      _$this._assetTypes ??= ListBuilder<String>();
  set assetTypes(ListBuilder<String>? assetTypes) =>
      _$this._assetTypes = assetTypes;

  AssetSearchQueryBuilder() {
    AssetSearchQuery._defaults(this);
  }

  AssetSearchQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameters = $v.parameters?.toBuilder();
      _relationType = $v.relationType;
      _assetTypes = $v.assetTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetSearchQuery other) {
    _$v = other as _$AssetSearchQuery;
  }

  @override
  void update(void Function(AssetSearchQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetSearchQuery build() => _build();

  _$AssetSearchQuery _build() {
    _$AssetSearchQuery _$result;
    try {
      _$result =
          _$v ??
          _$AssetSearchQuery._(
            parameters: _parameters?.build(),
            relationType: relationType,
            assetTypes: _assetTypes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();

        _$failedField = 'assetTypes';
        _assetTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AssetSearchQuery',
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
