// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_output_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class TimeSeriesOutputStrategyBuilder {
  void replace(TimeSeriesOutputStrategy other);
  void update(void Function(TimeSeriesOutputStrategyBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$TimeSeriesOutputStrategy extends $TimeSeriesOutputStrategy {
  @override
  final String type;

  factory _$$TimeSeriesOutputStrategy([
    void Function($TimeSeriesOutputStrategyBuilder)? updates,
  ]) => ($TimeSeriesOutputStrategyBuilder()..update(updates))._build();

  _$$TimeSeriesOutputStrategy._({required this.type}) : super._();
  @override
  $TimeSeriesOutputStrategy rebuild(
    void Function($TimeSeriesOutputStrategyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $TimeSeriesOutputStrategyBuilder toBuilder() =>
      $TimeSeriesOutputStrategyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TimeSeriesOutputStrategy && type == other.type;
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
      r'$TimeSeriesOutputStrategy',
    )..add('type', type)).toString();
  }
}

class $TimeSeriesOutputStrategyBuilder
    implements
        Builder<$TimeSeriesOutputStrategy, $TimeSeriesOutputStrategyBuilder>,
        TimeSeriesOutputStrategyBuilder {
  _$$TimeSeriesOutputStrategy? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $TimeSeriesOutputStrategyBuilder() {
    $TimeSeriesOutputStrategy._defaults(this);
  }

  $TimeSeriesOutputStrategyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TimeSeriesOutputStrategy other) {
    _$v = other as _$$TimeSeriesOutputStrategy;
  }

  @override
  void update(void Function($TimeSeriesOutputStrategyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TimeSeriesOutputStrategy build() => _build();

  _$$TimeSeriesOutputStrategy _build() {
    final _$result =
        _$v ??
        _$$TimeSeriesOutputStrategy._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$TimeSeriesOutputStrategy',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
