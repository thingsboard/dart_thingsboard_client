// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_entity_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TelemetryEntityView extends TelemetryEntityView {
  @override
  final BuiltList<String> timeseries;
  @override
  final AttributesEntityView attributes;

  factory _$TelemetryEntityView([
    void Function(TelemetryEntityViewBuilder)? updates,
  ]) => (TelemetryEntityViewBuilder()..update(updates))._build();

  _$TelemetryEntityView._({required this.timeseries, required this.attributes})
    : super._();
  @override
  TelemetryEntityView rebuild(
    void Function(TelemetryEntityViewBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TelemetryEntityViewBuilder toBuilder() =>
      TelemetryEntityViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TelemetryEntityView &&
        timeseries == other.timeseries &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timeseries.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TelemetryEntityView')
          ..add('timeseries', timeseries)
          ..add('attributes', attributes))
        .toString();
  }
}

class TelemetryEntityViewBuilder
    implements Builder<TelemetryEntityView, TelemetryEntityViewBuilder> {
  _$TelemetryEntityView? _$v;

  ListBuilder<String>? _timeseries;
  ListBuilder<String> get timeseries =>
      _$this._timeseries ??= ListBuilder<String>();
  set timeseries(ListBuilder<String>? timeseries) =>
      _$this._timeseries = timeseries;

  AttributesEntityViewBuilder? _attributes;
  AttributesEntityViewBuilder get attributes =>
      _$this._attributes ??= AttributesEntityViewBuilder();
  set attributes(AttributesEntityViewBuilder? attributes) =>
      _$this._attributes = attributes;

  TelemetryEntityViewBuilder() {
    TelemetryEntityView._defaults(this);
  }

  TelemetryEntityViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeseries = $v.timeseries.toBuilder();
      _attributes = $v.attributes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TelemetryEntityView other) {
    _$v = other as _$TelemetryEntityView;
  }

  @override
  void update(void Function(TelemetryEntityViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TelemetryEntityView build() => _build();

  _$TelemetryEntityView _build() {
    _$TelemetryEntityView _$result;
    try {
      _$result =
          _$v ??
          _$TelemetryEntityView._(
            timeseries: timeseries.build(),
            attributes: attributes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeseries';
        timeseries.build();
        _$failedField = 'attributes';
        attributes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TelemetryEntityView',
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
