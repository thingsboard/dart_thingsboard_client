// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solution_import_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SolutionImportResult extends SolutionImportResult {
  @override
  final bool? success;
  @override
  final BuiltMap<String, int>? created;
  @override
  final BuiltMap<String, String>? idMapping;

  factory _$SolutionImportResult([
    void Function(SolutionImportResultBuilder)? updates,
  ]) => (SolutionImportResultBuilder()..update(updates))._build();

  _$SolutionImportResult._({this.success, this.created, this.idMapping})
    : super._();
  @override
  SolutionImportResult rebuild(
    void Function(SolutionImportResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SolutionImportResultBuilder toBuilder() =>
      SolutionImportResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SolutionImportResult &&
        success == other.success &&
        created == other.created &&
        idMapping == other.idMapping;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, idMapping.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SolutionImportResult')
          ..add('success', success)
          ..add('created', created)
          ..add('idMapping', idMapping))
        .toString();
  }
}

class SolutionImportResultBuilder
    implements Builder<SolutionImportResult, SolutionImportResultBuilder> {
  _$SolutionImportResult? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  MapBuilder<String, int>? _created;
  MapBuilder<String, int> get created =>
      _$this._created ??= MapBuilder<String, int>();
  set created(MapBuilder<String, int>? created) => _$this._created = created;

  MapBuilder<String, String>? _idMapping;
  MapBuilder<String, String> get idMapping =>
      _$this._idMapping ??= MapBuilder<String, String>();
  set idMapping(MapBuilder<String, String>? idMapping) =>
      _$this._idMapping = idMapping;

  SolutionImportResultBuilder() {
    SolutionImportResult._defaults(this);
  }

  SolutionImportResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _created = $v.created?.toBuilder();
      _idMapping = $v.idMapping?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SolutionImportResult other) {
    _$v = other as _$SolutionImportResult;
  }

  @override
  void update(void Function(SolutionImportResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SolutionImportResult build() => _build();

  _$SolutionImportResult _build() {
    _$SolutionImportResult _$result;
    try {
      _$result =
          _$v ??
          _$SolutionImportResult._(
            success: success,
            created: _created?.build(),
            idMapping: _idMapping?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'created';
        _created?.build();
        _$failedField = 'idMapping';
        _idMapping?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SolutionImportResult',
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
