// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_key_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class DataKeySettingsBuilder {
  void replace(DataKeySettings other);
  void update(void Function(DataKeySettingsBuilder) updates);
  DataKeySettingsType? get type;
  set type(DataKeySettingsType? type);
}

class _$$DataKeySettings extends $DataKeySettings {
  @override
  final DataKeySettingsType type;

  factory _$$DataKeySettings([
    void Function($DataKeySettingsBuilder)? updates,
  ]) => ($DataKeySettingsBuilder()..update(updates))._build();

  _$$DataKeySettings._({required this.type}) : super._();
  @override
  $DataKeySettings rebuild(void Function($DataKeySettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $DataKeySettingsBuilder toBuilder() =>
      $DataKeySettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $DataKeySettings && type == other.type;
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
      r'$DataKeySettings',
    )..add('type', type)).toString();
  }
}

class $DataKeySettingsBuilder
    implements
        Builder<$DataKeySettings, $DataKeySettingsBuilder>,
        DataKeySettingsBuilder {
  _$$DataKeySettings? _$v;

  DataKeySettingsType? _type;
  DataKeySettingsType? get type => _$this._type;
  set type(covariant DataKeySettingsType? type) => _$this._type = type;

  $DataKeySettingsBuilder() {
    $DataKeySettings._defaults(this);
  }

  $DataKeySettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $DataKeySettings other) {
    _$v = other as _$$DataKeySettings;
  }

  @override
  void update(void Function($DataKeySettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $DataKeySettings build() => _build();

  _$$DataKeySettings _build() {
    final _$result =
        _$v ??
        _$$DataKeySettings._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$DataKeySettings',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
