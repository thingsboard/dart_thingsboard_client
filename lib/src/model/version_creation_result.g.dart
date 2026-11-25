// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_creation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VersionCreationResult extends VersionCreationResult {
  @override
  final EntityVersion? version;
  @override
  final int? added;
  @override
  final int? modified;
  @override
  final int? removed;
  @override
  final String? error;
  @override
  final bool? done;

  factory _$VersionCreationResult([
    void Function(VersionCreationResultBuilder)? updates,
  ]) => (VersionCreationResultBuilder()..update(updates))._build();

  _$VersionCreationResult._({
    this.version,
    this.added,
    this.modified,
    this.removed,
    this.error,
    this.done,
  }) : super._();
  @override
  VersionCreationResult rebuild(
    void Function(VersionCreationResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VersionCreationResultBuilder toBuilder() =>
      VersionCreationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VersionCreationResult &&
        version == other.version &&
        added == other.added &&
        modified == other.modified &&
        removed == other.removed &&
        error == other.error &&
        done == other.done;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, added.hashCode);
    _$hash = $jc(_$hash, modified.hashCode);
    _$hash = $jc(_$hash, removed.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, done.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VersionCreationResult')
          ..add('version', version)
          ..add('added', added)
          ..add('modified', modified)
          ..add('removed', removed)
          ..add('error', error)
          ..add('done', done))
        .toString();
  }
}

class VersionCreationResultBuilder
    implements Builder<VersionCreationResult, VersionCreationResultBuilder> {
  _$VersionCreationResult? _$v;

  EntityVersionBuilder? _version;
  EntityVersionBuilder get version =>
      _$this._version ??= EntityVersionBuilder();
  set version(EntityVersionBuilder? version) => _$this._version = version;

  int? _added;
  int? get added => _$this._added;
  set added(int? added) => _$this._added = added;

  int? _modified;
  int? get modified => _$this._modified;
  set modified(int? modified) => _$this._modified = modified;

  int? _removed;
  int? get removed => _$this._removed;
  set removed(int? removed) => _$this._removed = removed;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _done;
  bool? get done => _$this._done;
  set done(bool? done) => _$this._done = done;

  VersionCreationResultBuilder() {
    VersionCreationResult._defaults(this);
  }

  VersionCreationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version?.toBuilder();
      _added = $v.added;
      _modified = $v.modified;
      _removed = $v.removed;
      _error = $v.error;
      _done = $v.done;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VersionCreationResult other) {
    _$v = other as _$VersionCreationResult;
  }

  @override
  void update(void Function(VersionCreationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VersionCreationResult build() => _build();

  _$VersionCreationResult _build() {
    _$VersionCreationResult _$result;
    try {
      _$result =
          _$v ??
          _$VersionCreationResult._(
            version: _version?.build(),
            added: added,
            modified: modified,
            removed: removed,
            error: error,
            done: done,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'version';
        _version?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'VersionCreationResult',
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
