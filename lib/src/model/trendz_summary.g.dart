// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trendz_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendzSummary extends TrendzSummary {
  @override
  final BuiltList<JsonObject?>? metricSummaryItems;
  @override
  final BuiltList<JsonObject?>? anomalyModelSummaryItems;
  @override
  final BuiltList<JsonObject?>? calculationFieldSummaryItems;
  @override
  final BuiltList<JsonObject?>? predictionModelSummaryItems;
  @override
  final BuiltList<JsonObject?>? viewSummaryItems;
  @override
  final BuiltList<JsonObject?>? aiSummaryItems;

  factory _$TrendzSummary([void Function(TrendzSummaryBuilder)? updates]) =>
      (TrendzSummaryBuilder()..update(updates))._build();

  _$TrendzSummary._({
    this.metricSummaryItems,
    this.anomalyModelSummaryItems,
    this.calculationFieldSummaryItems,
    this.predictionModelSummaryItems,
    this.viewSummaryItems,
    this.aiSummaryItems,
  }) : super._();
  @override
  TrendzSummary rebuild(void Function(TrendzSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendzSummaryBuilder toBuilder() => TrendzSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendzSummary &&
        metricSummaryItems == other.metricSummaryItems &&
        anomalyModelSummaryItems == other.anomalyModelSummaryItems &&
        calculationFieldSummaryItems == other.calculationFieldSummaryItems &&
        predictionModelSummaryItems == other.predictionModelSummaryItems &&
        viewSummaryItems == other.viewSummaryItems &&
        aiSummaryItems == other.aiSummaryItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metricSummaryItems.hashCode);
    _$hash = $jc(_$hash, anomalyModelSummaryItems.hashCode);
    _$hash = $jc(_$hash, calculationFieldSummaryItems.hashCode);
    _$hash = $jc(_$hash, predictionModelSummaryItems.hashCode);
    _$hash = $jc(_$hash, viewSummaryItems.hashCode);
    _$hash = $jc(_$hash, aiSummaryItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendzSummary')
          ..add('metricSummaryItems', metricSummaryItems)
          ..add('anomalyModelSummaryItems', anomalyModelSummaryItems)
          ..add('calculationFieldSummaryItems', calculationFieldSummaryItems)
          ..add('predictionModelSummaryItems', predictionModelSummaryItems)
          ..add('viewSummaryItems', viewSummaryItems)
          ..add('aiSummaryItems', aiSummaryItems))
        .toString();
  }
}

class TrendzSummaryBuilder
    implements Builder<TrendzSummary, TrendzSummaryBuilder> {
  _$TrendzSummary? _$v;

  ListBuilder<JsonObject?>? _metricSummaryItems;
  ListBuilder<JsonObject?> get metricSummaryItems =>
      _$this._metricSummaryItems ??= ListBuilder<JsonObject?>();
  set metricSummaryItems(ListBuilder<JsonObject?>? metricSummaryItems) =>
      _$this._metricSummaryItems = metricSummaryItems;

  ListBuilder<JsonObject?>? _anomalyModelSummaryItems;
  ListBuilder<JsonObject?> get anomalyModelSummaryItems =>
      _$this._anomalyModelSummaryItems ??= ListBuilder<JsonObject?>();
  set anomalyModelSummaryItems(
    ListBuilder<JsonObject?>? anomalyModelSummaryItems,
  ) => _$this._anomalyModelSummaryItems = anomalyModelSummaryItems;

  ListBuilder<JsonObject?>? _calculationFieldSummaryItems;
  ListBuilder<JsonObject?> get calculationFieldSummaryItems =>
      _$this._calculationFieldSummaryItems ??= ListBuilder<JsonObject?>();
  set calculationFieldSummaryItems(
    ListBuilder<JsonObject?>? calculationFieldSummaryItems,
  ) => _$this._calculationFieldSummaryItems = calculationFieldSummaryItems;

  ListBuilder<JsonObject?>? _predictionModelSummaryItems;
  ListBuilder<JsonObject?> get predictionModelSummaryItems =>
      _$this._predictionModelSummaryItems ??= ListBuilder<JsonObject?>();
  set predictionModelSummaryItems(
    ListBuilder<JsonObject?>? predictionModelSummaryItems,
  ) => _$this._predictionModelSummaryItems = predictionModelSummaryItems;

  ListBuilder<JsonObject?>? _viewSummaryItems;
  ListBuilder<JsonObject?> get viewSummaryItems =>
      _$this._viewSummaryItems ??= ListBuilder<JsonObject?>();
  set viewSummaryItems(ListBuilder<JsonObject?>? viewSummaryItems) =>
      _$this._viewSummaryItems = viewSummaryItems;

  ListBuilder<JsonObject?>? _aiSummaryItems;
  ListBuilder<JsonObject?> get aiSummaryItems =>
      _$this._aiSummaryItems ??= ListBuilder<JsonObject?>();
  set aiSummaryItems(ListBuilder<JsonObject?>? aiSummaryItems) =>
      _$this._aiSummaryItems = aiSummaryItems;

  TrendzSummaryBuilder() {
    TrendzSummary._defaults(this);
  }

  TrendzSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metricSummaryItems = $v.metricSummaryItems?.toBuilder();
      _anomalyModelSummaryItems = $v.anomalyModelSummaryItems?.toBuilder();
      _calculationFieldSummaryItems = $v.calculationFieldSummaryItems
          ?.toBuilder();
      _predictionModelSummaryItems = $v.predictionModelSummaryItems
          ?.toBuilder();
      _viewSummaryItems = $v.viewSummaryItems?.toBuilder();
      _aiSummaryItems = $v.aiSummaryItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendzSummary other) {
    _$v = other as _$TrendzSummary;
  }

  @override
  void update(void Function(TrendzSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendzSummary build() => _build();

  _$TrendzSummary _build() {
    _$TrendzSummary _$result;
    try {
      _$result =
          _$v ??
          _$TrendzSummary._(
            metricSummaryItems: _metricSummaryItems?.build(),
            anomalyModelSummaryItems: _anomalyModelSummaryItems?.build(),
            calculationFieldSummaryItems: _calculationFieldSummaryItems
                ?.build(),
            predictionModelSummaryItems: _predictionModelSummaryItems?.build(),
            viewSummaryItems: _viewSummaryItems?.build(),
            aiSummaryItems: _aiSummaryItems?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metricSummaryItems';
        _metricSummaryItems?.build();
        _$failedField = 'anomalyModelSummaryItems';
        _anomalyModelSummaryItems?.build();
        _$failedField = 'calculationFieldSummaryItems';
        _calculationFieldSummaryItems?.build();
        _$failedField = 'predictionModelSummaryItems';
        _predictionModelSummaryItems?.build();
        _$failedField = 'viewSummaryItems';
        _viewSummaryItems?.build();
        _$failedField = 'aiSummaryItems';
        _aiSummaryItems?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TrendzSummary',
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
