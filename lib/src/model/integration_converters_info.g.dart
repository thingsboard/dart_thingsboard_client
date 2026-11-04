// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_converters_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntegrationConvertersInfo extends IntegrationConvertersInfo {
  @override
  final ConvertersInfo? uplink;
  @override
  final ConvertersInfo? downlink;

  factory _$IntegrationConvertersInfo([
    void Function(IntegrationConvertersInfoBuilder)? updates,
  ]) => (IntegrationConvertersInfoBuilder()..update(updates))._build();

  _$IntegrationConvertersInfo._({this.uplink, this.downlink}) : super._();
  @override
  IntegrationConvertersInfo rebuild(
    void Function(IntegrationConvertersInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntegrationConvertersInfoBuilder toBuilder() =>
      IntegrationConvertersInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationConvertersInfo &&
        uplink == other.uplink &&
        downlink == other.downlink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uplink.hashCode);
    _$hash = $jc(_$hash, downlink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntegrationConvertersInfo')
          ..add('uplink', uplink)
          ..add('downlink', downlink))
        .toString();
  }
}

class IntegrationConvertersInfoBuilder
    implements
        Builder<IntegrationConvertersInfo, IntegrationConvertersInfoBuilder> {
  _$IntegrationConvertersInfo? _$v;

  ConvertersInfoBuilder? _uplink;
  ConvertersInfoBuilder get uplink =>
      _$this._uplink ??= ConvertersInfoBuilder();
  set uplink(ConvertersInfoBuilder? uplink) => _$this._uplink = uplink;

  ConvertersInfoBuilder? _downlink;
  ConvertersInfoBuilder get downlink =>
      _$this._downlink ??= ConvertersInfoBuilder();
  set downlink(ConvertersInfoBuilder? downlink) => _$this._downlink = downlink;

  IntegrationConvertersInfoBuilder() {
    IntegrationConvertersInfo._defaults(this);
  }

  IntegrationConvertersInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uplink = $v.uplink?.toBuilder();
      _downlink = $v.downlink?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntegrationConvertersInfo other) {
    _$v = other as _$IntegrationConvertersInfo;
  }

  @override
  void update(void Function(IntegrationConvertersInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationConvertersInfo build() => _build();

  _$IntegrationConvertersInfo _build() {
    _$IntegrationConvertersInfo _$result;
    try {
      _$result =
          _$v ??
          _$IntegrationConvertersInfo._(
            uplink: _uplink?.build(),
            downlink: _downlink?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uplink';
        _uplink?.build();
        _$failedField = 'downlink';
        _downlink?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntegrationConvertersInfo',
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
