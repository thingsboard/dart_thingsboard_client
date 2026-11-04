// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_chain_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleChainData extends RuleChainData {
  @override
  final BuiltList<RuleChain> ruleChains;
  @override
  final BuiltList<RuleChainMetaData> metadata;

  factory _$RuleChainData([void Function(RuleChainDataBuilder)? updates]) =>
      (RuleChainDataBuilder()..update(updates))._build();

  _$RuleChainData._({required this.ruleChains, required this.metadata})
    : super._();
  @override
  RuleChainData rebuild(void Function(RuleChainDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleChainDataBuilder toBuilder() => RuleChainDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleChainData &&
        ruleChains == other.ruleChains &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleChains.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleChainData')
          ..add('ruleChains', ruleChains)
          ..add('metadata', metadata))
        .toString();
  }
}

class RuleChainDataBuilder
    implements Builder<RuleChainData, RuleChainDataBuilder> {
  _$RuleChainData? _$v;

  ListBuilder<RuleChain>? _ruleChains;
  ListBuilder<RuleChain> get ruleChains =>
      _$this._ruleChains ??= ListBuilder<RuleChain>();
  set ruleChains(ListBuilder<RuleChain>? ruleChains) =>
      _$this._ruleChains = ruleChains;

  ListBuilder<RuleChainMetaData>? _metadata;
  ListBuilder<RuleChainMetaData> get metadata =>
      _$this._metadata ??= ListBuilder<RuleChainMetaData>();
  set metadata(ListBuilder<RuleChainMetaData>? metadata) =>
      _$this._metadata = metadata;

  RuleChainDataBuilder() {
    RuleChainData._defaults(this);
  }

  RuleChainDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleChains = $v.ruleChains.toBuilder();
      _metadata = $v.metadata.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleChainData other) {
    _$v = other as _$RuleChainData;
  }

  @override
  void update(void Function(RuleChainDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleChainData build() => _build();

  _$RuleChainData _build() {
    _$RuleChainData _$result;
    try {
      _$result =
          _$v ??
          _$RuleChainData._(
            ruleChains: ruleChains.build(),
            metadata: metadata.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleChains';
        ruleChains.build();
        _$failedField = 'metadata';
        metadata.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleChainData',
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
