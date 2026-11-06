// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_data_diff.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityDataDiff extends EntityDataDiff {
  @override
  final EntityExportData? currentVersion;
  @override
  final EntityExportData? otherVersion;

  factory _$EntityDataDiff([void Function(EntityDataDiffBuilder)? updates]) =>
      (EntityDataDiffBuilder()..update(updates))._build();

  _$EntityDataDiff._({this.currentVersion, this.otherVersion}) : super._();
  @override
  EntityDataDiff rebuild(void Function(EntityDataDiffBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityDataDiffBuilder toBuilder() => EntityDataDiffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityDataDiff &&
        currentVersion == other.currentVersion &&
        otherVersion == other.otherVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentVersion.hashCode);
    _$hash = $jc(_$hash, otherVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityDataDiff')
          ..add('currentVersion', currentVersion)
          ..add('otherVersion', otherVersion))
        .toString();
  }
}

class EntityDataDiffBuilder
    implements Builder<EntityDataDiff, EntityDataDiffBuilder> {
  _$EntityDataDiff? _$v;

  EntityExportData? _currentVersion;
  EntityExportData? get currentVersion => _$this._currentVersion;
  set currentVersion(EntityExportData? currentVersion) =>
      _$this._currentVersion = currentVersion;

  EntityExportData? _otherVersion;
  EntityExportData? get otherVersion => _$this._otherVersion;
  set otherVersion(EntityExportData? otherVersion) =>
      _$this._otherVersion = otherVersion;

  EntityDataDiffBuilder() {
    EntityDataDiff._defaults(this);
  }

  EntityDataDiffBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentVersion = $v.currentVersion;
      _otherVersion = $v.otherVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityDataDiff other) {
    _$v = other as _$EntityDataDiff;
  }

  @override
  void update(void Function(EntityDataDiffBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityDataDiff build() => _build();

  _$EntityDataDiff _build() {
    final _$result =
        _$v ??
        _$EntityDataDiff._(
          currentVersion: currentVersion,
          otherVersion: otherVersion,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
