// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_rule_chain_output_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributesRuleChainOutputStrategy
    extends AttributesRuleChainOutputStrategy {
  @override
  final String type;

  factory _$AttributesRuleChainOutputStrategy([
    void Function(AttributesRuleChainOutputStrategyBuilder)? updates,
  ]) => (AttributesRuleChainOutputStrategyBuilder()..update(updates))._build();

  _$AttributesRuleChainOutputStrategy._({required this.type}) : super._();
  @override
  AttributesRuleChainOutputStrategy rebuild(
    void Function(AttributesRuleChainOutputStrategyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttributesRuleChainOutputStrategyBuilder toBuilder() =>
      AttributesRuleChainOutputStrategyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributesRuleChainOutputStrategy && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AttributesRuleChainOutputStrategy',
    )..add('type', type)).toString();
  }
}

class AttributesRuleChainOutputStrategyBuilder
    implements
        Builder<
          AttributesRuleChainOutputStrategy,
          AttributesRuleChainOutputStrategyBuilder
        >,
        AttributesOutputStrategyBuilder {
  _$AttributesRuleChainOutputStrategy? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AttributesRuleChainOutputStrategyBuilder() {
    AttributesRuleChainOutputStrategy._defaults(this);
  }

  AttributesRuleChainOutputStrategyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AttributesRuleChainOutputStrategy other) {
    _$v = other as _$AttributesRuleChainOutputStrategy;
  }

  @override
  void update(
    void Function(AttributesRuleChainOutputStrategyBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AttributesRuleChainOutputStrategy build() => _build();

  _$AttributesRuleChainOutputStrategy _build() {
    final _$result =
        _$v ??
        _$AttributesRuleChainOutputStrategy._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AttributesRuleChainOutputStrategy',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
