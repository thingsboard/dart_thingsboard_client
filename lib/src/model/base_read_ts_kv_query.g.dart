// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_read_ts_kv_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseReadTsKvQuery extends BaseReadTsKvQuery {
  @override
  final int? id;
  @override
  final String? key;
  @override
  final int? startTs;
  @override
  final int? endTs;
  @override
  final AggregationParams? aggParameters;
  @override
  final int? limit;
  @override
  final String? order;
  @override
  final Aggregation? aggregation;
  @override
  final int? interval;

  factory _$BaseReadTsKvQuery([
    void Function(BaseReadTsKvQueryBuilder)? updates,
  ]) => (BaseReadTsKvQueryBuilder()..update(updates))._build();

  _$BaseReadTsKvQuery._({
    this.id,
    this.key,
    this.startTs,
    this.endTs,
    this.aggParameters,
    this.limit,
    this.order,
    this.aggregation,
    this.interval,
  }) : super._();
  @override
  BaseReadTsKvQuery rebuild(void Function(BaseReadTsKvQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseReadTsKvQueryBuilder toBuilder() =>
      BaseReadTsKvQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseReadTsKvQuery &&
        id == other.id &&
        key == other.key &&
        startTs == other.startTs &&
        endTs == other.endTs &&
        aggParameters == other.aggParameters &&
        limit == other.limit &&
        order == other.order &&
        aggregation == other.aggregation &&
        interval == other.interval;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, startTs.hashCode);
    _$hash = $jc(_$hash, endTs.hashCode);
    _$hash = $jc(_$hash, aggParameters.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, aggregation.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaseReadTsKvQuery')
          ..add('id', id)
          ..add('key', key)
          ..add('startTs', startTs)
          ..add('endTs', endTs)
          ..add('aggParameters', aggParameters)
          ..add('limit', limit)
          ..add('order', order)
          ..add('aggregation', aggregation)
          ..add('interval', interval))
        .toString();
  }
}

class BaseReadTsKvQueryBuilder
    implements Builder<BaseReadTsKvQuery, BaseReadTsKvQueryBuilder> {
  _$BaseReadTsKvQuery? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _startTs;
  int? get startTs => _$this._startTs;
  set startTs(int? startTs) => _$this._startTs = startTs;

  int? _endTs;
  int? get endTs => _$this._endTs;
  set endTs(int? endTs) => _$this._endTs = endTs;

  AggregationParamsBuilder? _aggParameters;
  AggregationParamsBuilder get aggParameters =>
      _$this._aggParameters ??= AggregationParamsBuilder();
  set aggParameters(AggregationParamsBuilder? aggParameters) =>
      _$this._aggParameters = aggParameters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _order;
  String? get order => _$this._order;
  set order(String? order) => _$this._order = order;

  Aggregation? _aggregation;
  Aggregation? get aggregation => _$this._aggregation;
  set aggregation(Aggregation? aggregation) =>
      _$this._aggregation = aggregation;

  int? _interval;
  int? get interval => _$this._interval;
  set interval(int? interval) => _$this._interval = interval;

  BaseReadTsKvQueryBuilder() {
    BaseReadTsKvQuery._defaults(this);
  }

  BaseReadTsKvQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _key = $v.key;
      _startTs = $v.startTs;
      _endTs = $v.endTs;
      _aggParameters = $v.aggParameters?.toBuilder();
      _limit = $v.limit;
      _order = $v.order;
      _aggregation = $v.aggregation;
      _interval = $v.interval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseReadTsKvQuery other) {
    _$v = other as _$BaseReadTsKvQuery;
  }

  @override
  void update(void Function(BaseReadTsKvQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseReadTsKvQuery build() => _build();

  _$BaseReadTsKvQuery _build() {
    _$BaseReadTsKvQuery _$result;
    try {
      _$result =
          _$v ??
          _$BaseReadTsKvQuery._(
            id: id,
            key: key,
            startTs: startTs,
            endTs: endTs,
            aggParameters: _aggParameters?.build(),
            limit: limit,
            order: order,
            aggregation: aggregation,
            interval: interval,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggParameters';
        _aggParameters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BaseReadTsKvQuery',
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
