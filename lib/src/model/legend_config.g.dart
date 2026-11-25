// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legend_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LegendConfig extends LegendConfig {
  @override
  final LegendPosition? position;
  @override
  final bool? sortDataKeys;
  @override
  final bool? showMin;
  @override
  final bool? showMax;
  @override
  final bool? showAvg;
  @override
  final bool? showTotal;
  @override
  final bool? showLatest;

  factory _$LegendConfig([void Function(LegendConfigBuilder)? updates]) =>
      (LegendConfigBuilder()..update(updates))._build();

  _$LegendConfig._({
    this.position,
    this.sortDataKeys,
    this.showMin,
    this.showMax,
    this.showAvg,
    this.showTotal,
    this.showLatest,
  }) : super._();
  @override
  LegendConfig rebuild(void Function(LegendConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegendConfigBuilder toBuilder() => LegendConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegendConfig &&
        position == other.position &&
        sortDataKeys == other.sortDataKeys &&
        showMin == other.showMin &&
        showMax == other.showMax &&
        showAvg == other.showAvg &&
        showTotal == other.showTotal &&
        showLatest == other.showLatest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, sortDataKeys.hashCode);
    _$hash = $jc(_$hash, showMin.hashCode);
    _$hash = $jc(_$hash, showMax.hashCode);
    _$hash = $jc(_$hash, showAvg.hashCode);
    _$hash = $jc(_$hash, showTotal.hashCode);
    _$hash = $jc(_$hash, showLatest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LegendConfig')
          ..add('position', position)
          ..add('sortDataKeys', sortDataKeys)
          ..add('showMin', showMin)
          ..add('showMax', showMax)
          ..add('showAvg', showAvg)
          ..add('showTotal', showTotal)
          ..add('showLatest', showLatest))
        .toString();
  }
}

class LegendConfigBuilder
    implements Builder<LegendConfig, LegendConfigBuilder> {
  _$LegendConfig? _$v;

  LegendPosition? _position;
  LegendPosition? get position => _$this._position;
  set position(LegendPosition? position) => _$this._position = position;

  bool? _sortDataKeys;
  bool? get sortDataKeys => _$this._sortDataKeys;
  set sortDataKeys(bool? sortDataKeys) => _$this._sortDataKeys = sortDataKeys;

  bool? _showMin;
  bool? get showMin => _$this._showMin;
  set showMin(bool? showMin) => _$this._showMin = showMin;

  bool? _showMax;
  bool? get showMax => _$this._showMax;
  set showMax(bool? showMax) => _$this._showMax = showMax;

  bool? _showAvg;
  bool? get showAvg => _$this._showAvg;
  set showAvg(bool? showAvg) => _$this._showAvg = showAvg;

  bool? _showTotal;
  bool? get showTotal => _$this._showTotal;
  set showTotal(bool? showTotal) => _$this._showTotal = showTotal;

  bool? _showLatest;
  bool? get showLatest => _$this._showLatest;
  set showLatest(bool? showLatest) => _$this._showLatest = showLatest;

  LegendConfigBuilder() {
    LegendConfig._defaults(this);
  }

  LegendConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position;
      _sortDataKeys = $v.sortDataKeys;
      _showMin = $v.showMin;
      _showMax = $v.showMax;
      _showAvg = $v.showAvg;
      _showTotal = $v.showTotal;
      _showLatest = $v.showLatest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LegendConfig other) {
    _$v = other as _$LegendConfig;
  }

  @override
  void update(void Function(LegendConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegendConfig build() => _build();

  _$LegendConfig _build() {
    final _$result =
        _$v ??
        _$LegendConfig._(
          position: position,
          sortDataKeys: sortDataKeys,
          showMin: showMin,
          showMax: showMax,
          showAvg: showAvg,
          showTotal: showTotal,
          showLatest: showLatest,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
