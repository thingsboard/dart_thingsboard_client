// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solution_validation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SolutionValidationResult extends SolutionValidationResult {
  @override
  final bool? valid;
  @override
  final BuiltMap<String, int>? entitySummary;
  @override
  final BuiltList<String>? conflicts;
  @override
  final BuiltList<String>? warnings;

  factory _$SolutionValidationResult([
    void Function(SolutionValidationResultBuilder)? updates,
  ]) => (SolutionValidationResultBuilder()..update(updates))._build();

  _$SolutionValidationResult._({
    this.valid,
    this.entitySummary,
    this.conflicts,
    this.warnings,
  }) : super._();
  @override
  SolutionValidationResult rebuild(
    void Function(SolutionValidationResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SolutionValidationResultBuilder toBuilder() =>
      SolutionValidationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SolutionValidationResult &&
        valid == other.valid &&
        entitySummary == other.entitySummary &&
        conflicts == other.conflicts &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jc(_$hash, entitySummary.hashCode);
    _$hash = $jc(_$hash, conflicts.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SolutionValidationResult')
          ..add('valid', valid)
          ..add('entitySummary', entitySummary)
          ..add('conflicts', conflicts)
          ..add('warnings', warnings))
        .toString();
  }
}

class SolutionValidationResultBuilder
    implements
        Builder<SolutionValidationResult, SolutionValidationResultBuilder> {
  _$SolutionValidationResult? _$v;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  MapBuilder<String, int>? _entitySummary;
  MapBuilder<String, int> get entitySummary =>
      _$this._entitySummary ??= MapBuilder<String, int>();
  set entitySummary(MapBuilder<String, int>? entitySummary) =>
      _$this._entitySummary = entitySummary;

  ListBuilder<String>? _conflicts;
  ListBuilder<String> get conflicts =>
      _$this._conflicts ??= ListBuilder<String>();
  set conflicts(ListBuilder<String>? conflicts) =>
      _$this._conflicts = conflicts;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  SolutionValidationResultBuilder() {
    SolutionValidationResult._defaults(this);
  }

  SolutionValidationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _valid = $v.valid;
      _entitySummary = $v.entitySummary?.toBuilder();
      _conflicts = $v.conflicts?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SolutionValidationResult other) {
    _$v = other as _$SolutionValidationResult;
  }

  @override
  void update(void Function(SolutionValidationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SolutionValidationResult build() => _build();

  _$SolutionValidationResult _build() {
    _$SolutionValidationResult _$result;
    try {
      _$result =
          _$v ??
          _$SolutionValidationResult._(
            valid: valid,
            entitySummary: _entitySummary?.build(),
            conflicts: _conflicts?.build(),
            warnings: _warnings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entitySummary';
        _entitySummary?.build();
        _$failedField = 'conflicts';
        _conflicts?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SolutionValidationResult',
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
