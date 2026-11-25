// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_chain_import_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleChainImportResult extends RuleChainImportResult {
  @override
  final RuleChainId? ruleChainId;
  @override
  final String? ruleChainName;
  @override
  final bool? updated;
  @override
  final String? error;

  factory _$RuleChainImportResult([
    void Function(RuleChainImportResultBuilder)? updates,
  ]) => (RuleChainImportResultBuilder()..update(updates))._build();

  _$RuleChainImportResult._({
    this.ruleChainId,
    this.ruleChainName,
    this.updated,
    this.error,
  }) : super._();
  @override
  RuleChainImportResult rebuild(
    void Function(RuleChainImportResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleChainImportResultBuilder toBuilder() =>
      RuleChainImportResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleChainImportResult &&
        ruleChainId == other.ruleChainId &&
        ruleChainName == other.ruleChainName &&
        updated == other.updated &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleChainId.hashCode);
    _$hash = $jc(_$hash, ruleChainName.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleChainImportResult')
          ..add('ruleChainId', ruleChainId)
          ..add('ruleChainName', ruleChainName)
          ..add('updated', updated)
          ..add('error', error))
        .toString();
  }
}

class RuleChainImportResultBuilder
    implements Builder<RuleChainImportResult, RuleChainImportResultBuilder> {
  _$RuleChainImportResult? _$v;

  RuleChainIdBuilder? _ruleChainId;
  RuleChainIdBuilder get ruleChainId =>
      _$this._ruleChainId ??= RuleChainIdBuilder();
  set ruleChainId(RuleChainIdBuilder? ruleChainId) =>
      _$this._ruleChainId = ruleChainId;

  String? _ruleChainName;
  String? get ruleChainName => _$this._ruleChainName;
  set ruleChainName(String? ruleChainName) =>
      _$this._ruleChainName = ruleChainName;

  bool? _updated;
  bool? get updated => _$this._updated;
  set updated(bool? updated) => _$this._updated = updated;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  RuleChainImportResultBuilder() {
    RuleChainImportResult._defaults(this);
  }

  RuleChainImportResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleChainId = $v.ruleChainId?.toBuilder();
      _ruleChainName = $v.ruleChainName;
      _updated = $v.updated;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleChainImportResult other) {
    _$v = other as _$RuleChainImportResult;
  }

  @override
  void update(void Function(RuleChainImportResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleChainImportResult build() => _build();

  _$RuleChainImportResult _build() {
    _$RuleChainImportResult _$result;
    try {
      _$result =
          _$v ??
          _$RuleChainImportResult._(
            ruleChainId: _ruleChainId?.build(),
            ruleChainName: ruleChainName,
            updated: updated,
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleChainId';
        _ruleChainId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleChainImportResult',
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
