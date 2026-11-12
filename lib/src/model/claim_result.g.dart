// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClaimResult extends ClaimResult {
  @override
  final Device? device;
  @override
  final ClaimResponse? response;

  factory _$ClaimResult([void Function(ClaimResultBuilder)? updates]) =>
      (ClaimResultBuilder()..update(updates))._build();

  _$ClaimResult._({this.device, this.response}) : super._();
  @override
  ClaimResult rebuild(void Function(ClaimResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimResultBuilder toBuilder() => ClaimResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimResult &&
        device == other.device &&
        response == other.response;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimResult')
          ..add('device', device)
          ..add('response', response))
        .toString();
  }
}

class ClaimResultBuilder implements Builder<ClaimResult, ClaimResultBuilder> {
  _$ClaimResult? _$v;

  DeviceBuilder? _device;
  DeviceBuilder get device => _$this._device ??= DeviceBuilder();
  set device(DeviceBuilder? device) => _$this._device = device;

  ClaimResponse? _response;
  ClaimResponse? get response => _$this._response;
  set response(ClaimResponse? response) => _$this._response = response;

  ClaimResultBuilder() {
    ClaimResult._defaults(this);
  }

  ClaimResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _device = $v.device?.toBuilder();
      _response = $v.response;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimResult other) {
    _$v = other as _$ClaimResult;
  }

  @override
  void update(void Function(ClaimResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimResult build() => _build();

  _$ClaimResult _build() {
    _$ClaimResult _$result;
    try {
      _$result =
          _$v ?? _$ClaimResult._(device: _device?.build(), response: response);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'device';
        _device?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ClaimResult',
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
