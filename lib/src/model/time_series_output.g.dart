// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesOutput extends TimeSeriesOutput {
  @override
  final int? decimalsByDefault;
  @override
  final String? name;
  @override
  final AttributeScope? scope;
  @override
  final JsonObject? strategy;
  @override
  final String type;

  factory _$TimeSeriesOutput([
    void Function(TimeSeriesOutputBuilder)? updates,
  ]) => (TimeSeriesOutputBuilder()..update(updates))._build();

  _$TimeSeriesOutput._({
    this.decimalsByDefault,
    this.name,
    this.scope,
    this.strategy,
    required this.type,
  }) : super._();
  @override
  TimeSeriesOutput rebuild(void Function(TimeSeriesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSeriesOutputBuilder toBuilder() =>
      TimeSeriesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesOutput &&
        decimalsByDefault == other.decimalsByDefault &&
        name == other.name &&
        scope == other.scope &&
        strategy == other.strategy &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, decimalsByDefault.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, strategy.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSeriesOutput')
          ..add('decimalsByDefault', decimalsByDefault)
          ..add('name', name)
          ..add('scope', scope)
          ..add('strategy', strategy)
          ..add('type', type))
        .toString();
  }
}

class TimeSeriesOutputBuilder
    implements
        Builder<TimeSeriesOutput, TimeSeriesOutputBuilder>,
        OutputBuilder {
  _$TimeSeriesOutput? _$v;

  int? _decimalsByDefault;
  int? get decimalsByDefault => _$this._decimalsByDefault;
  set decimalsByDefault(covariant int? decimalsByDefault) =>
      _$this._decimalsByDefault = decimalsByDefault;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  AttributeScope? _scope;
  AttributeScope? get scope => _$this._scope;
  set scope(covariant AttributeScope? scope) => _$this._scope = scope;

  JsonObject? _strategy;
  JsonObject? get strategy => _$this._strategy;
  set strategy(covariant JsonObject? strategy) => _$this._strategy = strategy;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  TimeSeriesOutputBuilder() {
    TimeSeriesOutput._defaults(this);
  }

  TimeSeriesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _decimalsByDefault = $v.decimalsByDefault;
      _name = $v.name;
      _scope = $v.scope;
      _strategy = $v.strategy;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TimeSeriesOutput other) {
    _$v = other as _$TimeSeriesOutput;
  }

  @override
  void update(void Function(TimeSeriesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesOutput build() => _build();

  _$TimeSeriesOutput _build() {
    final _$result =
        _$v ??
        _$TimeSeriesOutput._(
          decimalsByDefault: decimalsByDefault,
          name: name,
          scope: scope,
          strategy: strategy,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'TimeSeriesOutput',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
