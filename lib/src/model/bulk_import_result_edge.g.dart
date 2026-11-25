// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_import_result_edge.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkImportResultEdge extends BulkImportResultEdge {
  @override
  final int? created;
  @override
  final int? updated;
  @override
  final int? errors;
  @override
  final BuiltList<String>? errorsList;

  factory _$BulkImportResultEdge([
    void Function(BulkImportResultEdgeBuilder)? updates,
  ]) => (BulkImportResultEdgeBuilder()..update(updates))._build();

  _$BulkImportResultEdge._({
    this.created,
    this.updated,
    this.errors,
    this.errorsList,
  }) : super._();
  @override
  BulkImportResultEdge rebuild(
    void Function(BulkImportResultEdgeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BulkImportResultEdgeBuilder toBuilder() =>
      BulkImportResultEdgeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkImportResultEdge &&
        created == other.created &&
        updated == other.updated &&
        errors == other.errors &&
        errorsList == other.errorsList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, errorsList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkImportResultEdge')
          ..add('created', created)
          ..add('updated', updated)
          ..add('errors', errors)
          ..add('errorsList', errorsList))
        .toString();
  }
}

class BulkImportResultEdgeBuilder
    implements Builder<BulkImportResultEdge, BulkImportResultEdgeBuilder> {
  _$BulkImportResultEdge? _$v;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  int? _updated;
  int? get updated => _$this._updated;
  set updated(int? updated) => _$this._updated = updated;

  int? _errors;
  int? get errors => _$this._errors;
  set errors(int? errors) => _$this._errors = errors;

  ListBuilder<String>? _errorsList;
  ListBuilder<String> get errorsList =>
      _$this._errorsList ??= ListBuilder<String>();
  set errorsList(ListBuilder<String>? errorsList) =>
      _$this._errorsList = errorsList;

  BulkImportResultEdgeBuilder() {
    BulkImportResultEdge._defaults(this);
  }

  BulkImportResultEdgeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _created = $v.created;
      _updated = $v.updated;
      _errors = $v.errors;
      _errorsList = $v.errorsList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkImportResultEdge other) {
    _$v = other as _$BulkImportResultEdge;
  }

  @override
  void update(void Function(BulkImportResultEdgeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkImportResultEdge build() => _build();

  _$BulkImportResultEdge _build() {
    _$BulkImportResultEdge _$result;
    try {
      _$result =
          _$v ??
          _$BulkImportResultEdge._(
            created: created,
            updated: updated,
            errors: errors,
            errorsList: _errorsList?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errorsList';
        _errorsList?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BulkImportResultEdge',
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
