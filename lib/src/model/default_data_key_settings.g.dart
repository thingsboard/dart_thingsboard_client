// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_data_key_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultDataKeySettings extends DefaultDataKeySettings {
  @override
  final DataKeySettingsType type;

  factory _$DefaultDataKeySettings([
    void Function(DefaultDataKeySettingsBuilder)? updates,
  ]) => (DefaultDataKeySettingsBuilder()..update(updates))._build();

  _$DefaultDataKeySettings._({required this.type}) : super._();
  @override
  DefaultDataKeySettings rebuild(
    void Function(DefaultDataKeySettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DefaultDataKeySettingsBuilder toBuilder() =>
      DefaultDataKeySettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultDataKeySettings && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'DefaultDataKeySettings',
    )..add('type', type)).toString();
  }
}

class DefaultDataKeySettingsBuilder
    implements
        Builder<DefaultDataKeySettings, DefaultDataKeySettingsBuilder>,
        DataKeySettingsBuilder {
  _$DefaultDataKeySettings? _$v;

  DataKeySettingsType? _type;
  DataKeySettingsType? get type => _$this._type;
  set type(covariant DataKeySettingsType? type) => _$this._type = type;

  DefaultDataKeySettingsBuilder() {
    DefaultDataKeySettings._defaults(this);
  }

  DefaultDataKeySettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DefaultDataKeySettings other) {
    _$v = other as _$DefaultDataKeySettings;
  }

  @override
  void update(void Function(DefaultDataKeySettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefaultDataKeySettings build() => _build();

  _$DefaultDataKeySettings _build() {
    final _$result =
        _$v ??
        _$DefaultDataKeySettings._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DefaultDataKeySettings',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
