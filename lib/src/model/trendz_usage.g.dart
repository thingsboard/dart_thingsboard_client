// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trendz_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendzUsage extends TrendzUsage {
  @override
  final bool? used;
  @override
  final Entity? anomalyUsage;
  @override
  final Entity? predictionUsage;
  @override
  final Entity? calculationUsage;
  @override
  final SimpleEntity? viewUsage;
  @override
  final SimpleEntity? metricUsage;
  @override
  final SimpleEntity? chatUsage;

  factory _$TrendzUsage([void Function(TrendzUsageBuilder)? updates]) =>
      (TrendzUsageBuilder()..update(updates))._build();

  _$TrendzUsage._({
    this.used,
    this.anomalyUsage,
    this.predictionUsage,
    this.calculationUsage,
    this.viewUsage,
    this.metricUsage,
    this.chatUsage,
  }) : super._();
  @override
  TrendzUsage rebuild(void Function(TrendzUsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendzUsageBuilder toBuilder() => TrendzUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendzUsage &&
        used == other.used &&
        anomalyUsage == other.anomalyUsage &&
        predictionUsage == other.predictionUsage &&
        calculationUsage == other.calculationUsage &&
        viewUsage == other.viewUsage &&
        metricUsage == other.metricUsage &&
        chatUsage == other.chatUsage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, used.hashCode);
    _$hash = $jc(_$hash, anomalyUsage.hashCode);
    _$hash = $jc(_$hash, predictionUsage.hashCode);
    _$hash = $jc(_$hash, calculationUsage.hashCode);
    _$hash = $jc(_$hash, viewUsage.hashCode);
    _$hash = $jc(_$hash, metricUsage.hashCode);
    _$hash = $jc(_$hash, chatUsage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendzUsage')
          ..add('used', used)
          ..add('anomalyUsage', anomalyUsage)
          ..add('predictionUsage', predictionUsage)
          ..add('calculationUsage', calculationUsage)
          ..add('viewUsage', viewUsage)
          ..add('metricUsage', metricUsage)
          ..add('chatUsage', chatUsage))
        .toString();
  }
}

class TrendzUsageBuilder implements Builder<TrendzUsage, TrendzUsageBuilder> {
  _$TrendzUsage? _$v;

  bool? _used;
  bool? get used => _$this._used;
  set used(bool? used) => _$this._used = used;

  EntityBuilder? _anomalyUsage;
  EntityBuilder get anomalyUsage => _$this._anomalyUsage ??= EntityBuilder();
  set anomalyUsage(EntityBuilder? anomalyUsage) =>
      _$this._anomalyUsage = anomalyUsage;

  EntityBuilder? _predictionUsage;
  EntityBuilder get predictionUsage =>
      _$this._predictionUsage ??= EntityBuilder();
  set predictionUsage(EntityBuilder? predictionUsage) =>
      _$this._predictionUsage = predictionUsage;

  EntityBuilder? _calculationUsage;
  EntityBuilder get calculationUsage =>
      _$this._calculationUsage ??= EntityBuilder();
  set calculationUsage(EntityBuilder? calculationUsage) =>
      _$this._calculationUsage = calculationUsage;

  SimpleEntityBuilder? _viewUsage;
  SimpleEntityBuilder get viewUsage =>
      _$this._viewUsage ??= SimpleEntityBuilder();
  set viewUsage(SimpleEntityBuilder? viewUsage) =>
      _$this._viewUsage = viewUsage;

  SimpleEntityBuilder? _metricUsage;
  SimpleEntityBuilder get metricUsage =>
      _$this._metricUsage ??= SimpleEntityBuilder();
  set metricUsage(SimpleEntityBuilder? metricUsage) =>
      _$this._metricUsage = metricUsage;

  SimpleEntityBuilder? _chatUsage;
  SimpleEntityBuilder get chatUsage =>
      _$this._chatUsage ??= SimpleEntityBuilder();
  set chatUsage(SimpleEntityBuilder? chatUsage) =>
      _$this._chatUsage = chatUsage;

  TrendzUsageBuilder() {
    TrendzUsage._defaults(this);
  }

  TrendzUsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _used = $v.used;
      _anomalyUsage = $v.anomalyUsage?.toBuilder();
      _predictionUsage = $v.predictionUsage?.toBuilder();
      _calculationUsage = $v.calculationUsage?.toBuilder();
      _viewUsage = $v.viewUsage?.toBuilder();
      _metricUsage = $v.metricUsage?.toBuilder();
      _chatUsage = $v.chatUsage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendzUsage other) {
    _$v = other as _$TrendzUsage;
  }

  @override
  void update(void Function(TrendzUsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendzUsage build() => _build();

  _$TrendzUsage _build() {
    _$TrendzUsage _$result;
    try {
      _$result =
          _$v ??
          _$TrendzUsage._(
            used: used,
            anomalyUsage: _anomalyUsage?.build(),
            predictionUsage: _predictionUsage?.build(),
            calculationUsage: _calculationUsage?.build(),
            viewUsage: _viewUsage?.build(),
            metricUsage: _metricUsage?.build(),
            chatUsage: _chatUsage?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anomalyUsage';
        _anomalyUsage?.build();
        _$failedField = 'predictionUsage';
        _predictionUsage?.build();
        _$failedField = 'calculationUsage';
        _calculationUsage?.build();
        _$failedField = 'viewUsage';
        _viewUsage?.build();
        _$failedField = 'metricUsage';
        _metricUsage?.build();
        _$failedField = 'chatUsage';
        _chatUsage?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TrendzUsage',
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
