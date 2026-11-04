// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_immediate_output_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesImmediateOutputStrategy
    extends TimeSeriesImmediateOutputStrategy {
  @override
  final bool? sendWsUpdate;
  @override
  final bool? processCfs;
  @override
  final bool? saveTimeSeries;
  @override
  final int? ttl;
  @override
  final bool? saveLatest;
  @override
  final String type;

  factory _$TimeSeriesImmediateOutputStrategy([
    void Function(TimeSeriesImmediateOutputStrategyBuilder)? updates,
  ]) => (TimeSeriesImmediateOutputStrategyBuilder()..update(updates))._build();

  _$TimeSeriesImmediateOutputStrategy._({
    this.sendWsUpdate,
    this.processCfs,
    this.saveTimeSeries,
    this.ttl,
    this.saveLatest,
    required this.type,
  }) : super._();
  @override
  TimeSeriesImmediateOutputStrategy rebuild(
    void Function(TimeSeriesImmediateOutputStrategyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeSeriesImmediateOutputStrategyBuilder toBuilder() =>
      TimeSeriesImmediateOutputStrategyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesImmediateOutputStrategy &&
        sendWsUpdate == other.sendWsUpdate &&
        processCfs == other.processCfs &&
        saveTimeSeries == other.saveTimeSeries &&
        ttl == other.ttl &&
        saveLatest == other.saveLatest &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sendWsUpdate.hashCode);
    _$hash = $jc(_$hash, processCfs.hashCode);
    _$hash = $jc(_$hash, saveTimeSeries.hashCode);
    _$hash = $jc(_$hash, ttl.hashCode);
    _$hash = $jc(_$hash, saveLatest.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSeriesImmediateOutputStrategy')
          ..add('sendWsUpdate', sendWsUpdate)
          ..add('processCfs', processCfs)
          ..add('saveTimeSeries', saveTimeSeries)
          ..add('ttl', ttl)
          ..add('saveLatest', saveLatest)
          ..add('type', type))
        .toString();
  }
}

class TimeSeriesImmediateOutputStrategyBuilder
    implements
        Builder<
          TimeSeriesImmediateOutputStrategy,
          TimeSeriesImmediateOutputStrategyBuilder
        >,
        TimeSeriesOutputStrategyBuilder {
  _$TimeSeriesImmediateOutputStrategy? _$v;

  bool? _sendWsUpdate;
  bool? get sendWsUpdate => _$this._sendWsUpdate;
  set sendWsUpdate(covariant bool? sendWsUpdate) =>
      _$this._sendWsUpdate = sendWsUpdate;

  bool? _processCfs;
  bool? get processCfs => _$this._processCfs;
  set processCfs(covariant bool? processCfs) => _$this._processCfs = processCfs;

  bool? _saveTimeSeries;
  bool? get saveTimeSeries => _$this._saveTimeSeries;
  set saveTimeSeries(covariant bool? saveTimeSeries) =>
      _$this._saveTimeSeries = saveTimeSeries;

  int? _ttl;
  int? get ttl => _$this._ttl;
  set ttl(covariant int? ttl) => _$this._ttl = ttl;

  bool? _saveLatest;
  bool? get saveLatest => _$this._saveLatest;
  set saveLatest(covariant bool? saveLatest) => _$this._saveLatest = saveLatest;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  TimeSeriesImmediateOutputStrategyBuilder() {
    TimeSeriesImmediateOutputStrategy._defaults(this);
  }

  TimeSeriesImmediateOutputStrategyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sendWsUpdate = $v.sendWsUpdate;
      _processCfs = $v.processCfs;
      _saveTimeSeries = $v.saveTimeSeries;
      _ttl = $v.ttl;
      _saveLatest = $v.saveLatest;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TimeSeriesImmediateOutputStrategy other) {
    _$v = other as _$TimeSeriesImmediateOutputStrategy;
  }

  @override
  void update(
    void Function(TimeSeriesImmediateOutputStrategyBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesImmediateOutputStrategy build() => _build();

  _$TimeSeriesImmediateOutputStrategy _build() {
    final _$result =
        _$v ??
        _$TimeSeriesImmediateOutputStrategy._(
          sendWsUpdate: sendWsUpdate,
          processCfs: processCfs,
          saveTimeSeries: saveTimeSeries,
          ttl: ttl,
          saveLatest: saveLatest,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'TimeSeriesImmediateOutputStrategy',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
