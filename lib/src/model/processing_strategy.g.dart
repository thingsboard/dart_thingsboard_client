// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'processing_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProcessingStrategy extends ProcessingStrategy {
  @override
  final ProcessingStrategyType? type;
  @override
  final int? retries;
  @override
  final double? failurePercentage;
  @override
  final int? pauseBetweenRetries;
  @override
  final int? maxPauseBetweenRetries;

  factory _$ProcessingStrategy([
    void Function(ProcessingStrategyBuilder)? updates,
  ]) => (ProcessingStrategyBuilder()..update(updates))._build();

  _$ProcessingStrategy._({
    this.type,
    this.retries,
    this.failurePercentage,
    this.pauseBetweenRetries,
    this.maxPauseBetweenRetries,
  }) : super._();
  @override
  ProcessingStrategy rebuild(
    void Function(ProcessingStrategyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProcessingStrategyBuilder toBuilder() =>
      ProcessingStrategyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessingStrategy &&
        type == other.type &&
        retries == other.retries &&
        failurePercentage == other.failurePercentage &&
        pauseBetweenRetries == other.pauseBetweenRetries &&
        maxPauseBetweenRetries == other.maxPauseBetweenRetries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, retries.hashCode);
    _$hash = $jc(_$hash, failurePercentage.hashCode);
    _$hash = $jc(_$hash, pauseBetweenRetries.hashCode);
    _$hash = $jc(_$hash, maxPauseBetweenRetries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProcessingStrategy')
          ..add('type', type)
          ..add('retries', retries)
          ..add('failurePercentage', failurePercentage)
          ..add('pauseBetweenRetries', pauseBetweenRetries)
          ..add('maxPauseBetweenRetries', maxPauseBetweenRetries))
        .toString();
  }
}

class ProcessingStrategyBuilder
    implements Builder<ProcessingStrategy, ProcessingStrategyBuilder> {
  _$ProcessingStrategy? _$v;

  ProcessingStrategyType? _type;
  ProcessingStrategyType? get type => _$this._type;
  set type(ProcessingStrategyType? type) => _$this._type = type;

  int? _retries;
  int? get retries => _$this._retries;
  set retries(int? retries) => _$this._retries = retries;

  double? _failurePercentage;
  double? get failurePercentage => _$this._failurePercentage;
  set failurePercentage(double? failurePercentage) =>
      _$this._failurePercentage = failurePercentage;

  int? _pauseBetweenRetries;
  int? get pauseBetweenRetries => _$this._pauseBetweenRetries;
  set pauseBetweenRetries(int? pauseBetweenRetries) =>
      _$this._pauseBetweenRetries = pauseBetweenRetries;

  int? _maxPauseBetweenRetries;
  int? get maxPauseBetweenRetries => _$this._maxPauseBetweenRetries;
  set maxPauseBetweenRetries(int? maxPauseBetweenRetries) =>
      _$this._maxPauseBetweenRetries = maxPauseBetweenRetries;

  ProcessingStrategyBuilder() {
    ProcessingStrategy._defaults(this);
  }

  ProcessingStrategyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _retries = $v.retries;
      _failurePercentage = $v.failurePercentage;
      _pauseBetweenRetries = $v.pauseBetweenRetries;
      _maxPauseBetweenRetries = $v.maxPauseBetweenRetries;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessingStrategy other) {
    _$v = other as _$ProcessingStrategy;
  }

  @override
  void update(void Function(ProcessingStrategyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProcessingStrategy build() => _build();

  _$ProcessingStrategy _build() {
    final _$result =
        _$v ??
        _$ProcessingStrategy._(
          type: type,
          retries: retries,
          failurePercentage: failurePercentage,
          pauseBetweenRetries: pauseBetweenRetries,
          maxPauseBetweenRetries: maxPauseBetweenRetries,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
