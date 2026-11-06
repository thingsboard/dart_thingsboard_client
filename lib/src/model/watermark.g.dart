// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watermark.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Watermark extends Watermark {
  @override
  final int? duration;

  factory _$Watermark([void Function(WatermarkBuilder)? updates]) =>
      (WatermarkBuilder()..update(updates))._build();

  _$Watermark._({this.duration}) : super._();
  @override
  Watermark rebuild(void Function(WatermarkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatermarkBuilder toBuilder() => WatermarkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Watermark && duration == other.duration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'Watermark',
    )..add('duration', duration)).toString();
  }
}

class WatermarkBuilder implements Builder<Watermark, WatermarkBuilder> {
  _$Watermark? _$v;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  WatermarkBuilder() {
    Watermark._defaults(this);
  }

  WatermarkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _duration = $v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Watermark other) {
    _$v = other as _$Watermark;
  }

  @override
  void update(void Function(WatermarkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Watermark build() => _build();

  _$Watermark _build() {
    final _$result = _$v ?? _$Watermark._(duration: duration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
