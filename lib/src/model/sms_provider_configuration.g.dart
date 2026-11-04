// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_provider_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class SmsProviderConfigurationBuilder {
  void replace(SmsProviderConfiguration other);
  void update(void Function(SmsProviderConfigurationBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$SmsProviderConfiguration extends $SmsProviderConfiguration {
  @override
  final String type;

  factory _$$SmsProviderConfiguration([
    void Function($SmsProviderConfigurationBuilder)? updates,
  ]) => ($SmsProviderConfigurationBuilder()..update(updates))._build();

  _$$SmsProviderConfiguration._({required this.type}) : super._();
  @override
  $SmsProviderConfiguration rebuild(
    void Function($SmsProviderConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $SmsProviderConfigurationBuilder toBuilder() =>
      $SmsProviderConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $SmsProviderConfiguration && type == other.type;
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
      r'$SmsProviderConfiguration',
    )..add('type', type)).toString();
  }
}

class $SmsProviderConfigurationBuilder
    implements
        Builder<$SmsProviderConfiguration, $SmsProviderConfigurationBuilder>,
        SmsProviderConfigurationBuilder {
  _$$SmsProviderConfiguration? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $SmsProviderConfigurationBuilder() {
    $SmsProviderConfiguration._defaults(this);
  }

  $SmsProviderConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $SmsProviderConfiguration other) {
    _$v = other as _$$SmsProviderConfiguration;
  }

  @override
  void update(void Function($SmsProviderConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $SmsProviderConfiguration build() => _build();

  _$$SmsProviderConfiguration _build() {
    final _$result =
        _$v ??
        _$$SmsProviderConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$SmsProviderConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
