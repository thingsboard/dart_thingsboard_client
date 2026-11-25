// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cf_argument_dynamic_source_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class CfArgumentDynamicSourceConfigurationBuilder {
  void replace(CfArgumentDynamicSourceConfiguration other);
  void update(
    void Function(CfArgumentDynamicSourceConfigurationBuilder) updates,
  );
  String? get type;
  set type(String? type);
}

class _$$CfArgumentDynamicSourceConfiguration
    extends $CfArgumentDynamicSourceConfiguration {
  @override
  final String type;

  factory _$$CfArgumentDynamicSourceConfiguration([
    void Function($CfArgumentDynamicSourceConfigurationBuilder)? updates,
  ]) => ($CfArgumentDynamicSourceConfigurationBuilder()..update(updates))
      ._build();

  _$$CfArgumentDynamicSourceConfiguration._({required this.type}) : super._();
  @override
  $CfArgumentDynamicSourceConfiguration rebuild(
    void Function($CfArgumentDynamicSourceConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $CfArgumentDynamicSourceConfigurationBuilder toBuilder() =>
      $CfArgumentDynamicSourceConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CfArgumentDynamicSourceConfiguration && type == other.type;
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
      r'$CfArgumentDynamicSourceConfiguration',
    )..add('type', type)).toString();
  }
}

class $CfArgumentDynamicSourceConfigurationBuilder
    implements
        Builder<
          $CfArgumentDynamicSourceConfiguration,
          $CfArgumentDynamicSourceConfigurationBuilder
        >,
        CfArgumentDynamicSourceConfigurationBuilder {
  _$$CfArgumentDynamicSourceConfiguration? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $CfArgumentDynamicSourceConfigurationBuilder() {
    $CfArgumentDynamicSourceConfiguration._defaults(this);
  }

  $CfArgumentDynamicSourceConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $CfArgumentDynamicSourceConfiguration other) {
    _$v = other as _$$CfArgumentDynamicSourceConfiguration;
  }

  @override
  void update(
    void Function($CfArgumentDynamicSourceConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  $CfArgumentDynamicSourceConfiguration build() => _build();

  _$$CfArgumentDynamicSourceConfiguration _build() {
    final _$result =
        _$v ??
        _$$CfArgumentDynamicSourceConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$CfArgumentDynamicSourceConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
