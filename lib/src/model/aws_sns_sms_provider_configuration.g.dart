// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_sns_sms_provider_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwsSnsSmsProviderConfiguration extends AwsSnsSmsProviderConfiguration {
  @override
  final String? accessKeyId;
  @override
  final String? secretAccessKey;
  @override
  final String? region;
  @override
  final String type;

  factory _$AwsSnsSmsProviderConfiguration([
    void Function(AwsSnsSmsProviderConfigurationBuilder)? updates,
  ]) => (AwsSnsSmsProviderConfigurationBuilder()..update(updates))._build();

  _$AwsSnsSmsProviderConfiguration._({
    this.accessKeyId,
    this.secretAccessKey,
    this.region,
    required this.type,
  }) : super._();
  @override
  AwsSnsSmsProviderConfiguration rebuild(
    void Function(AwsSnsSmsProviderConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AwsSnsSmsProviderConfigurationBuilder toBuilder() =>
      AwsSnsSmsProviderConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwsSnsSmsProviderConfiguration &&
        accessKeyId == other.accessKeyId &&
        secretAccessKey == other.secretAccessKey &&
        region == other.region &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jc(_$hash, secretAccessKey.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AwsSnsSmsProviderConfiguration')
          ..add('accessKeyId', accessKeyId)
          ..add('secretAccessKey', secretAccessKey)
          ..add('region', region)
          ..add('type', type))
        .toString();
  }
}

class AwsSnsSmsProviderConfigurationBuilder
    implements
        Builder<
          AwsSnsSmsProviderConfiguration,
          AwsSnsSmsProviderConfigurationBuilder
        >,
        SmsProviderConfigurationBuilder {
  _$AwsSnsSmsProviderConfiguration? _$v;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(covariant String? accessKeyId) =>
      _$this._accessKeyId = accessKeyId;

  String? _secretAccessKey;
  String? get secretAccessKey => _$this._secretAccessKey;
  set secretAccessKey(covariant String? secretAccessKey) =>
      _$this._secretAccessKey = secretAccessKey;

  String? _region;
  String? get region => _$this._region;
  set region(covariant String? region) => _$this._region = region;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AwsSnsSmsProviderConfigurationBuilder() {
    AwsSnsSmsProviderConfiguration._defaults(this);
  }

  AwsSnsSmsProviderConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKeyId = $v.accessKeyId;
      _secretAccessKey = $v.secretAccessKey;
      _region = $v.region;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AwsSnsSmsProviderConfiguration other) {
    _$v = other as _$AwsSnsSmsProviderConfiguration;
  }

  @override
  void update(void Function(AwsSnsSmsProviderConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AwsSnsSmsProviderConfiguration build() => _build();

  _$AwsSnsSmsProviderConfiguration _build() {
    final _$result =
        _$v ??
        _$AwsSnsSmsProviderConfiguration._(
          accessKeyId: accessKeyId,
          secretAccessKey: secretAccessKey,
          region: region,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AwsSnsSmsProviderConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
