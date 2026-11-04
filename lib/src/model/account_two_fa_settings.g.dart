// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_two_fa_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountTwoFaSettings extends AccountTwoFaSettings {
  @override
  final BuiltMap<String, TwoFaAccountConfig>? configs;

  factory _$AccountTwoFaSettings([
    void Function(AccountTwoFaSettingsBuilder)? updates,
  ]) => (AccountTwoFaSettingsBuilder()..update(updates))._build();

  _$AccountTwoFaSettings._({this.configs}) : super._();
  @override
  AccountTwoFaSettings rebuild(
    void Function(AccountTwoFaSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AccountTwoFaSettingsBuilder toBuilder() =>
      AccountTwoFaSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountTwoFaSettings && configs == other.configs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AccountTwoFaSettings',
    )..add('configs', configs)).toString();
  }
}

class AccountTwoFaSettingsBuilder
    implements Builder<AccountTwoFaSettings, AccountTwoFaSettingsBuilder> {
  _$AccountTwoFaSettings? _$v;

  MapBuilder<String, TwoFaAccountConfig>? _configs;
  MapBuilder<String, TwoFaAccountConfig> get configs =>
      _$this._configs ??= MapBuilder<String, TwoFaAccountConfig>();
  set configs(MapBuilder<String, TwoFaAccountConfig>? configs) =>
      _$this._configs = configs;

  AccountTwoFaSettingsBuilder() {
    AccountTwoFaSettings._defaults(this);
  }

  AccountTwoFaSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configs = $v.configs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountTwoFaSettings other) {
    _$v = other as _$AccountTwoFaSettings;
  }

  @override
  void update(void Function(AccountTwoFaSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountTwoFaSettings build() => _build();

  _$AccountTwoFaSettings _build() {
    _$AccountTwoFaSettings _$result;
    try {
      _$result = _$v ?? _$AccountTwoFaSettings._(configs: _configs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configs';
        _configs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AccountTwoFaSettings',
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
