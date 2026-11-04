// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_load_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VersionLoadResult extends VersionLoadResult {
  @override
  final BuiltList<EntityTypeLoadResult>? result;
  @override
  final EntityLoadError? error;
  @override
  final bool? done;

  factory _$VersionLoadResult([
    void Function(VersionLoadResultBuilder)? updates,
  ]) => (VersionLoadResultBuilder()..update(updates))._build();

  _$VersionLoadResult._({this.result, this.error, this.done}) : super._();
  @override
  VersionLoadResult rebuild(void Function(VersionLoadResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VersionLoadResultBuilder toBuilder() =>
      VersionLoadResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VersionLoadResult &&
        result == other.result &&
        error == other.error &&
        done == other.done;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, done.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VersionLoadResult')
          ..add('result', result)
          ..add('error', error)
          ..add('done', done))
        .toString();
  }
}

class VersionLoadResultBuilder
    implements Builder<VersionLoadResult, VersionLoadResultBuilder> {
  _$VersionLoadResult? _$v;

  ListBuilder<EntityTypeLoadResult>? _result;
  ListBuilder<EntityTypeLoadResult> get result =>
      _$this._result ??= ListBuilder<EntityTypeLoadResult>();
  set result(ListBuilder<EntityTypeLoadResult>? result) =>
      _$this._result = result;

  EntityLoadErrorBuilder? _error;
  EntityLoadErrorBuilder get error =>
      _$this._error ??= EntityLoadErrorBuilder();
  set error(EntityLoadErrorBuilder? error) => _$this._error = error;

  bool? _done;
  bool? get done => _$this._done;
  set done(bool? done) => _$this._done = done;

  VersionLoadResultBuilder() {
    VersionLoadResult._defaults(this);
  }

  VersionLoadResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result?.toBuilder();
      _error = $v.error?.toBuilder();
      _done = $v.done;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VersionLoadResult other) {
    _$v = other as _$VersionLoadResult;
  }

  @override
  void update(void Function(VersionLoadResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VersionLoadResult build() => _build();

  _$VersionLoadResult _build() {
    _$VersionLoadResult _$result;
    try {
      _$result =
          _$v ??
          _$VersionLoadResult._(
            result: _result?.build(),
            error: _error?.build(),
            done: done,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'VersionLoadResult',
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
