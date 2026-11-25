// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DataKey extends DataKey {
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? label;
  @override
  final String? color;
  @override
  final int? decimals;
  @override
  final String? units;
  @override
  final Aggregation? aggregationType;
  @override
  final TimeWindowConfiguration? timewindow;
  @override
  final bool? usePostProcessing;
  @override
  final String? postFuncBody;
  @override
  final DataKeySettings? settings;

  factory _$DataKey([void Function(DataKeyBuilder)? updates]) =>
      (DataKeyBuilder()..update(updates))._build();

  _$DataKey._({
    this.name,
    this.type,
    this.label,
    this.color,
    this.decimals,
    this.units,
    this.aggregationType,
    this.timewindow,
    this.usePostProcessing,
    this.postFuncBody,
    this.settings,
  }) : super._();
  @override
  DataKey rebuild(void Function(DataKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataKeyBuilder toBuilder() => DataKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataKey &&
        name == other.name &&
        type == other.type &&
        label == other.label &&
        color == other.color &&
        decimals == other.decimals &&
        units == other.units &&
        aggregationType == other.aggregationType &&
        timewindow == other.timewindow &&
        usePostProcessing == other.usePostProcessing &&
        postFuncBody == other.postFuncBody &&
        settings == other.settings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, decimals.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, aggregationType.hashCode);
    _$hash = $jc(_$hash, timewindow.hashCode);
    _$hash = $jc(_$hash, usePostProcessing.hashCode);
    _$hash = $jc(_$hash, postFuncBody.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataKey')
          ..add('name', name)
          ..add('type', type)
          ..add('label', label)
          ..add('color', color)
          ..add('decimals', decimals)
          ..add('units', units)
          ..add('aggregationType', aggregationType)
          ..add('timewindow', timewindow)
          ..add('usePostProcessing', usePostProcessing)
          ..add('postFuncBody', postFuncBody)
          ..add('settings', settings))
        .toString();
  }
}

class DataKeyBuilder implements Builder<DataKey, DataKeyBuilder> {
  _$DataKey? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  int? _decimals;
  int? get decimals => _$this._decimals;
  set decimals(int? decimals) => _$this._decimals = decimals;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  Aggregation? _aggregationType;
  Aggregation? get aggregationType => _$this._aggregationType;
  set aggregationType(Aggregation? aggregationType) =>
      _$this._aggregationType = aggregationType;

  TimeWindowConfigurationBuilder? _timewindow;
  TimeWindowConfigurationBuilder get timewindow =>
      _$this._timewindow ??= TimeWindowConfigurationBuilder();
  set timewindow(TimeWindowConfigurationBuilder? timewindow) =>
      _$this._timewindow = timewindow;

  bool? _usePostProcessing;
  bool? get usePostProcessing => _$this._usePostProcessing;
  set usePostProcessing(bool? usePostProcessing) =>
      _$this._usePostProcessing = usePostProcessing;

  String? _postFuncBody;
  String? get postFuncBody => _$this._postFuncBody;
  set postFuncBody(String? postFuncBody) => _$this._postFuncBody = postFuncBody;

  DataKeySettings? _settings;
  DataKeySettings? get settings => _$this._settings;
  set settings(DataKeySettings? settings) => _$this._settings = settings;

  DataKeyBuilder() {
    DataKey._defaults(this);
  }

  DataKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _label = $v.label;
      _color = $v.color;
      _decimals = $v.decimals;
      _units = $v.units;
      _aggregationType = $v.aggregationType;
      _timewindow = $v.timewindow?.toBuilder();
      _usePostProcessing = $v.usePostProcessing;
      _postFuncBody = $v.postFuncBody;
      _settings = $v.settings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataKey other) {
    _$v = other as _$DataKey;
  }

  @override
  void update(void Function(DataKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataKey build() => _build();

  _$DataKey _build() {
    _$DataKey _$result;
    try {
      _$result =
          _$v ??
          _$DataKey._(
            name: name,
            type: type,
            label: label,
            color: color,
            decimals: decimals,
            units: units,
            aggregationType: aggregationType,
            timewindow: _timewindow?.build(),
            usePostProcessing: usePostProcessing,
            postFuncBody: postFuncBody,
            settings: settings,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timewindow';
        _timewindow?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DataKey',
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
