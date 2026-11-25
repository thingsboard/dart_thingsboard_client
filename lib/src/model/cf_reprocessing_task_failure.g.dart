// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cf_reprocessing_task_failure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CfReprocessingTaskFailure extends CfReprocessingTaskFailure {
  @override
  final String? error;
  @override
  final EntityInfo? entityInfo;

  factory _$CfReprocessingTaskFailure([
    void Function(CfReprocessingTaskFailureBuilder)? updates,
  ]) => (CfReprocessingTaskFailureBuilder()..update(updates))._build();

  _$CfReprocessingTaskFailure._({this.error, this.entityInfo}) : super._();
  @override
  CfReprocessingTaskFailure rebuild(
    void Function(CfReprocessingTaskFailureBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CfReprocessingTaskFailureBuilder toBuilder() =>
      CfReprocessingTaskFailureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CfReprocessingTaskFailure &&
        error == other.error &&
        entityInfo == other.entityInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, entityInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CfReprocessingTaskFailure')
          ..add('error', error)
          ..add('entityInfo', entityInfo))
        .toString();
  }
}

class CfReprocessingTaskFailureBuilder
    implements
        Builder<CfReprocessingTaskFailure, CfReprocessingTaskFailureBuilder> {
  _$CfReprocessingTaskFailure? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  EntityInfoBuilder? _entityInfo;
  EntityInfoBuilder get entityInfo =>
      _$this._entityInfo ??= EntityInfoBuilder();
  set entityInfo(EntityInfoBuilder? entityInfo) =>
      _$this._entityInfo = entityInfo;

  CfReprocessingTaskFailureBuilder() {
    CfReprocessingTaskFailure._defaults(this);
  }

  CfReprocessingTaskFailureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _entityInfo = $v.entityInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CfReprocessingTaskFailure other) {
    _$v = other as _$CfReprocessingTaskFailure;
  }

  @override
  void update(void Function(CfReprocessingTaskFailureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CfReprocessingTaskFailure build() => _build();

  _$CfReprocessingTaskFailure _build() {
    _$CfReprocessingTaskFailure _$result;
    try {
      _$result =
          _$v ??
          _$CfReprocessingTaskFailure._(
            error: error,
            entityInfo: _entityInfo?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityInfo';
        _entityInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CfReprocessingTaskFailure',
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
