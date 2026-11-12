// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'two_fa_provider_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TwoFaProviderInfo extends TwoFaProviderInfo {
  @override
  final TwoFaProviderType? type;
  @override
  final bool? default_;
  @override
  final String? contact;
  @override
  final int? minVerificationCodeSendPeriod;

  factory _$TwoFaProviderInfo([
    void Function(TwoFaProviderInfoBuilder)? updates,
  ]) => (TwoFaProviderInfoBuilder()..update(updates))._build();

  _$TwoFaProviderInfo._({
    this.type,
    this.default_,
    this.contact,
    this.minVerificationCodeSendPeriod,
  }) : super._();
  @override
  TwoFaProviderInfo rebuild(void Function(TwoFaProviderInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TwoFaProviderInfoBuilder toBuilder() =>
      TwoFaProviderInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TwoFaProviderInfo &&
        type == other.type &&
        default_ == other.default_ &&
        contact == other.contact &&
        minVerificationCodeSendPeriod == other.minVerificationCodeSendPeriod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jc(_$hash, minVerificationCodeSendPeriod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TwoFaProviderInfo')
          ..add('type', type)
          ..add('default_', default_)
          ..add('contact', contact)
          ..add('minVerificationCodeSendPeriod', minVerificationCodeSendPeriod))
        .toString();
  }
}

class TwoFaProviderInfoBuilder
    implements Builder<TwoFaProviderInfo, TwoFaProviderInfoBuilder> {
  _$TwoFaProviderInfo? _$v;

  TwoFaProviderType? _type;
  TwoFaProviderType? get type => _$this._type;
  set type(TwoFaProviderType? type) => _$this._type = type;

  bool? _default_;
  bool? get default_ => _$this._default_;
  set default_(bool? default_) => _$this._default_ = default_;

  String? _contact;
  String? get contact => _$this._contact;
  set contact(String? contact) => _$this._contact = contact;

  int? _minVerificationCodeSendPeriod;
  int? get minVerificationCodeSendPeriod =>
      _$this._minVerificationCodeSendPeriod;
  set minVerificationCodeSendPeriod(int? minVerificationCodeSendPeriod) =>
      _$this._minVerificationCodeSendPeriod = minVerificationCodeSendPeriod;

  TwoFaProviderInfoBuilder() {
    TwoFaProviderInfo._defaults(this);
  }

  TwoFaProviderInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _default_ = $v.default_;
      _contact = $v.contact;
      _minVerificationCodeSendPeriod = $v.minVerificationCodeSendPeriod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TwoFaProviderInfo other) {
    _$v = other as _$TwoFaProviderInfo;
  }

  @override
  void update(void Function(TwoFaProviderInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TwoFaProviderInfo build() => _build();

  _$TwoFaProviderInfo _build() {
    final _$result =
        _$v ??
        _$TwoFaProviderInfo._(
          type: type,
          default_: default_,
          contact: contact,
          minVerificationCodeSendPeriod: minVerificationCodeSendPeriod,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
