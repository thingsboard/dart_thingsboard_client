// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_search_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeSearchQuery extends EdgeSearchQuery {
  @override
  final RelationsSearchParameters? parameters;
  @override
  final String? relationType;
  @override
  final BuiltList<String>? edgeTypes;

  factory _$EdgeSearchQuery([void Function(EdgeSearchQueryBuilder)? updates]) =>
      (EdgeSearchQueryBuilder()..update(updates))._build();

  _$EdgeSearchQuery._({this.parameters, this.relationType, this.edgeTypes})
    : super._();
  @override
  EdgeSearchQuery rebuild(void Function(EdgeSearchQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdgeSearchQueryBuilder toBuilder() => EdgeSearchQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeSearchQuery &&
        parameters == other.parameters &&
        relationType == other.relationType &&
        edgeTypes == other.edgeTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jc(_$hash, edgeTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdgeSearchQuery')
          ..add('parameters', parameters)
          ..add('relationType', relationType)
          ..add('edgeTypes', edgeTypes))
        .toString();
  }
}

class EdgeSearchQueryBuilder
    implements Builder<EdgeSearchQuery, EdgeSearchQueryBuilder> {
  _$EdgeSearchQuery? _$v;

  RelationsSearchParametersBuilder? _parameters;
  RelationsSearchParametersBuilder get parameters =>
      _$this._parameters ??= RelationsSearchParametersBuilder();
  set parameters(RelationsSearchParametersBuilder? parameters) =>
      _$this._parameters = parameters;

  String? _relationType;
  String? get relationType => _$this._relationType;
  set relationType(String? relationType) => _$this._relationType = relationType;

  ListBuilder<String>? _edgeTypes;
  ListBuilder<String> get edgeTypes =>
      _$this._edgeTypes ??= ListBuilder<String>();
  set edgeTypes(ListBuilder<String>? edgeTypes) =>
      _$this._edgeTypes = edgeTypes;

  EdgeSearchQueryBuilder() {
    EdgeSearchQuery._defaults(this);
  }

  EdgeSearchQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameters = $v.parameters?.toBuilder();
      _relationType = $v.relationType;
      _edgeTypes = $v.edgeTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdgeSearchQuery other) {
    _$v = other as _$EdgeSearchQuery;
  }

  @override
  void update(void Function(EdgeSearchQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdgeSearchQuery build() => _build();

  _$EdgeSearchQuery _build() {
    _$EdgeSearchQuery _$result;
    try {
      _$result =
          _$v ??
          _$EdgeSearchQuery._(
            parameters: _parameters?.build(),
            relationType: relationType,
            edgeTypes: _edgeTypes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();

        _$failedField = 'edgeTypes';
        _edgeTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdgeSearchQuery',
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
