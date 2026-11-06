// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solution_export_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SolutionExportResponse extends SolutionExportResponse {
  @override
  final SolutionData? solution;
  @override
  final BuiltList<String>? warnings;

  factory _$SolutionExportResponse([
    void Function(SolutionExportResponseBuilder)? updates,
  ]) => (SolutionExportResponseBuilder()..update(updates))._build();

  _$SolutionExportResponse._({this.solution, this.warnings}) : super._();
  @override
  SolutionExportResponse rebuild(
    void Function(SolutionExportResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SolutionExportResponseBuilder toBuilder() =>
      SolutionExportResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SolutionExportResponse &&
        solution == other.solution &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, solution.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SolutionExportResponse')
          ..add('solution', solution)
          ..add('warnings', warnings))
        .toString();
  }
}

class SolutionExportResponseBuilder
    implements Builder<SolutionExportResponse, SolutionExportResponseBuilder> {
  _$SolutionExportResponse? _$v;

  SolutionDataBuilder? _solution;
  SolutionDataBuilder get solution =>
      _$this._solution ??= SolutionDataBuilder();
  set solution(SolutionDataBuilder? solution) => _$this._solution = solution;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  SolutionExportResponseBuilder() {
    SolutionExportResponse._defaults(this);
  }

  SolutionExportResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _solution = $v.solution?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SolutionExportResponse other) {
    _$v = other as _$SolutionExportResponse;
  }

  @override
  void update(void Function(SolutionExportResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SolutionExportResponse build() => _build();

  _$SolutionExportResponse _build() {
    _$SolutionExportResponse _$result;
    try {
      _$result =
          _$v ??
          _$SolutionExportResponse._(
            solution: _solution?.build(),
            warnings: _warnings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'solution';
        _solution?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SolutionExportResponse',
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
