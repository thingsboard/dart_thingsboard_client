// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubmitStrategy extends SubmitStrategy {
  @override
  final SubmitStrategyType? type;
  @override
  final int? batchSize;

  factory _$SubmitStrategy([void Function(SubmitStrategyBuilder)? updates]) =>
      (SubmitStrategyBuilder()..update(updates))._build();

  _$SubmitStrategy._({this.type, this.batchSize}) : super._();
  @override
  SubmitStrategy rebuild(void Function(SubmitStrategyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitStrategyBuilder toBuilder() => SubmitStrategyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitStrategy &&
        type == other.type &&
        batchSize == other.batchSize;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, batchSize.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubmitStrategy')
          ..add('type', type)
          ..add('batchSize', batchSize))
        .toString();
  }
}

class SubmitStrategyBuilder
    implements Builder<SubmitStrategy, SubmitStrategyBuilder> {
  _$SubmitStrategy? _$v;

  SubmitStrategyType? _type;
  SubmitStrategyType? get type => _$this._type;
  set type(SubmitStrategyType? type) => _$this._type = type;

  int? _batchSize;
  int? get batchSize => _$this._batchSize;
  set batchSize(int? batchSize) => _$this._batchSize = batchSize;

  SubmitStrategyBuilder() {
    SubmitStrategy._defaults(this);
  }

  SubmitStrategyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _batchSize = $v.batchSize;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitStrategy other) {
    _$v = other as _$SubmitStrategy;
  }

  @override
  void update(void Function(SubmitStrategyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubmitStrategy build() => _build();

  _$SubmitStrategy _build() {
    final _$result =
        _$v ?? _$SubmitStrategy._(type: type, batchSize: batchSize);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
