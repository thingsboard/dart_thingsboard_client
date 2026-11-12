// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregation_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregationConfiguration extends AggregationConfiguration {
  @override
  final Aggregation? type;
  @override
  final int? limit;

  factory _$AggregationConfiguration([
    void Function(AggregationConfigurationBuilder)? updates,
  ]) => (AggregationConfigurationBuilder()..update(updates))._build();

  _$AggregationConfiguration._({this.type, this.limit}) : super._();
  @override
  AggregationConfiguration rebuild(
    void Function(AggregationConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AggregationConfigurationBuilder toBuilder() =>
      AggregationConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregationConfiguration &&
        type == other.type &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AggregationConfiguration')
          ..add('type', type)
          ..add('limit', limit))
        .toString();
  }
}

class AggregationConfigurationBuilder
    implements
        Builder<AggregationConfiguration, AggregationConfigurationBuilder> {
  _$AggregationConfiguration? _$v;

  Aggregation? _type;
  Aggregation? get type => _$this._type;
  set type(Aggregation? type) => _$this._type = type;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  AggregationConfigurationBuilder() {
    AggregationConfiguration._defaults(this);
  }

  AggregationConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregationConfiguration other) {
    _$v = other as _$AggregationConfiguration;
  }

  @override
  void update(void Function(AggregationConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregationConfiguration build() => _build();

  _$AggregationConfiguration _build() {
    final _$result =
        _$v ?? _$AggregationConfiguration._(type: type, limit: limit);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
