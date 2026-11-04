// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'two_fa_account_config_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TwoFaAccountConfigUpdateRequest
    extends TwoFaAccountConfigUpdateRequest {
  @override
  final bool? useByDefault;

  factory _$TwoFaAccountConfigUpdateRequest([
    void Function(TwoFaAccountConfigUpdateRequestBuilder)? updates,
  ]) => (TwoFaAccountConfigUpdateRequestBuilder()..update(updates))._build();

  _$TwoFaAccountConfigUpdateRequest._({this.useByDefault}) : super._();
  @override
  TwoFaAccountConfigUpdateRequest rebuild(
    void Function(TwoFaAccountConfigUpdateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TwoFaAccountConfigUpdateRequestBuilder toBuilder() =>
      TwoFaAccountConfigUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TwoFaAccountConfigUpdateRequest &&
        useByDefault == other.useByDefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, useByDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TwoFaAccountConfigUpdateRequest',
    )..add('useByDefault', useByDefault)).toString();
  }
}

class TwoFaAccountConfigUpdateRequestBuilder
    implements
        Builder<
          TwoFaAccountConfigUpdateRequest,
          TwoFaAccountConfigUpdateRequestBuilder
        > {
  _$TwoFaAccountConfigUpdateRequest? _$v;

  bool? _useByDefault;
  bool? get useByDefault => _$this._useByDefault;
  set useByDefault(bool? useByDefault) => _$this._useByDefault = useByDefault;

  TwoFaAccountConfigUpdateRequestBuilder() {
    TwoFaAccountConfigUpdateRequest._defaults(this);
  }

  TwoFaAccountConfigUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _useByDefault = $v.useByDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TwoFaAccountConfigUpdateRequest other) {
    _$v = other as _$TwoFaAccountConfigUpdateRequest;
  }

  @override
  void update(void Function(TwoFaAccountConfigUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TwoFaAccountConfigUpdateRequest build() => _build();

  _$TwoFaAccountConfigUpdateRequest _build() {
    final _$result =
        _$v ?? _$TwoFaAccountConfigUpdateRequest._(useByDefault: useByDefault);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
