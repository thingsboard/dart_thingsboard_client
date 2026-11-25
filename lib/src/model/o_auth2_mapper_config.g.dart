// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_mapper_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuth2MapperConfig extends OAuth2MapperConfig {
  @override
  final bool? allowUserCreation;
  @override
  final bool? activateUser;
  @override
  final MapperType type;
  @override
  final OAuth2BasicMapperConfig? basic;
  @override
  final OAuth2CustomMapperConfig? custom;

  factory _$OAuth2MapperConfig([
    void Function(OAuth2MapperConfigBuilder)? updates,
  ]) => (OAuth2MapperConfigBuilder()..update(updates))._build();

  _$OAuth2MapperConfig._({
    this.allowUserCreation,
    this.activateUser,
    required this.type,
    this.basic,
    this.custom,
  }) : super._();
  @override
  OAuth2MapperConfig rebuild(
    void Function(OAuth2MapperConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OAuth2MapperConfigBuilder toBuilder() =>
      OAuth2MapperConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2MapperConfig &&
        allowUserCreation == other.allowUserCreation &&
        activateUser == other.activateUser &&
        type == other.type &&
        basic == other.basic &&
        custom == other.custom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowUserCreation.hashCode);
    _$hash = $jc(_$hash, activateUser.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, basic.hashCode);
    _$hash = $jc(_$hash, custom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OAuth2MapperConfig')
          ..add('allowUserCreation', allowUserCreation)
          ..add('activateUser', activateUser)
          ..add('type', type)
          ..add('basic', basic)
          ..add('custom', custom))
        .toString();
  }
}

class OAuth2MapperConfigBuilder
    implements Builder<OAuth2MapperConfig, OAuth2MapperConfigBuilder> {
  _$OAuth2MapperConfig? _$v;

  bool? _allowUserCreation;
  bool? get allowUserCreation => _$this._allowUserCreation;
  set allowUserCreation(bool? allowUserCreation) =>
      _$this._allowUserCreation = allowUserCreation;

  bool? _activateUser;
  bool? get activateUser => _$this._activateUser;
  set activateUser(bool? activateUser) => _$this._activateUser = activateUser;

  MapperType? _type;
  MapperType? get type => _$this._type;
  set type(MapperType? type) => _$this._type = type;

  OAuth2BasicMapperConfigBuilder? _basic;
  OAuth2BasicMapperConfigBuilder get basic =>
      _$this._basic ??= OAuth2BasicMapperConfigBuilder();
  set basic(OAuth2BasicMapperConfigBuilder? basic) => _$this._basic = basic;

  OAuth2CustomMapperConfigBuilder? _custom;
  OAuth2CustomMapperConfigBuilder get custom =>
      _$this._custom ??= OAuth2CustomMapperConfigBuilder();
  set custom(OAuth2CustomMapperConfigBuilder? custom) =>
      _$this._custom = custom;

  OAuth2MapperConfigBuilder() {
    OAuth2MapperConfig._defaults(this);
  }

  OAuth2MapperConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowUserCreation = $v.allowUserCreation;
      _activateUser = $v.activateUser;
      _type = $v.type;
      _basic = $v.basic?.toBuilder();
      _custom = $v.custom?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuth2MapperConfig other) {
    _$v = other as _$OAuth2MapperConfig;
  }

  @override
  void update(void Function(OAuth2MapperConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2MapperConfig build() => _build();

  _$OAuth2MapperConfig _build() {
    _$OAuth2MapperConfig _$result;
    try {
      _$result =
          _$v ??
          _$OAuth2MapperConfig._(
            allowUserCreation: allowUserCreation,
            activateUser: activateUser,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'OAuth2MapperConfig',
              'type',
            ),
            basic: _basic?.build(),
            custom: _custom?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'basic';
        _basic?.build();
        _$failedField = 'custom';
        _custom?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OAuth2MapperConfig',
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
