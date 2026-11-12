// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_secret_delete_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TbSecretDeleteResult extends TbSecretDeleteResult {
  @override
  final bool? success;
  @override
  final BuiltMap<String, BuiltList<EntityInfo>>? references;

  factory _$TbSecretDeleteResult([
    void Function(TbSecretDeleteResultBuilder)? updates,
  ]) => (TbSecretDeleteResultBuilder()..update(updates))._build();

  _$TbSecretDeleteResult._({this.success, this.references}) : super._();
  @override
  TbSecretDeleteResult rebuild(
    void Function(TbSecretDeleteResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TbSecretDeleteResultBuilder toBuilder() =>
      TbSecretDeleteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TbSecretDeleteResult &&
        success == other.success &&
        references == other.references;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, references.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TbSecretDeleteResult')
          ..add('success', success)
          ..add('references', references))
        .toString();
  }
}

class TbSecretDeleteResultBuilder
    implements Builder<TbSecretDeleteResult, TbSecretDeleteResultBuilder> {
  _$TbSecretDeleteResult? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  MapBuilder<String, BuiltList<EntityInfo>>? _references;
  MapBuilder<String, BuiltList<EntityInfo>> get references =>
      _$this._references ??= MapBuilder<String, BuiltList<EntityInfo>>();
  set references(MapBuilder<String, BuiltList<EntityInfo>>? references) =>
      _$this._references = references;

  TbSecretDeleteResultBuilder() {
    TbSecretDeleteResult._defaults(this);
  }

  TbSecretDeleteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _references = $v.references?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TbSecretDeleteResult other) {
    _$v = other as _$TbSecretDeleteResult;
  }

  @override
  void update(void Function(TbSecretDeleteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TbSecretDeleteResult build() => _build();

  _$TbSecretDeleteResult _build() {
    _$TbSecretDeleteResult _$result;
    try {
      _$result =
          _$v ??
          _$TbSecretDeleteResult._(
            success: success,
            references: _references?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'references';
        _references?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TbSecretDeleteResult',
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
