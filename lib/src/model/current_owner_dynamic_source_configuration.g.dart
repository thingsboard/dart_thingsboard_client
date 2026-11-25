// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_owner_dynamic_source_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CurrentOwnerDynamicSourceConfiguration
    extends CurrentOwnerDynamicSourceConfiguration {
  @override
  final String type;

  factory _$CurrentOwnerDynamicSourceConfiguration([
    void Function(CurrentOwnerDynamicSourceConfigurationBuilder)? updates,
  ]) => (CurrentOwnerDynamicSourceConfigurationBuilder()..update(updates))
      ._build();

  _$CurrentOwnerDynamicSourceConfiguration._({required this.type}) : super._();
  @override
  CurrentOwnerDynamicSourceConfiguration rebuild(
    void Function(CurrentOwnerDynamicSourceConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CurrentOwnerDynamicSourceConfigurationBuilder toBuilder() =>
      CurrentOwnerDynamicSourceConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentOwnerDynamicSourceConfiguration &&
        type == other.type;
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
      r'CurrentOwnerDynamicSourceConfiguration',
    )..add('type', type)).toString();
  }
}

class CurrentOwnerDynamicSourceConfigurationBuilder
    implements
        Builder<
          CurrentOwnerDynamicSourceConfiguration,
          CurrentOwnerDynamicSourceConfigurationBuilder
        >,
        CfArgumentDynamicSourceConfigurationBuilder {
  _$CurrentOwnerDynamicSourceConfiguration? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  CurrentOwnerDynamicSourceConfigurationBuilder() {
    CurrentOwnerDynamicSourceConfiguration._defaults(this);
  }

  CurrentOwnerDynamicSourceConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CurrentOwnerDynamicSourceConfiguration other) {
    _$v = other as _$CurrentOwnerDynamicSourceConfiguration;
  }

  @override
  void update(
    void Function(CurrentOwnerDynamicSourceConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CurrentOwnerDynamicSourceConfiguration build() => _build();

  _$CurrentOwnerDynamicSourceConfiguration _build() {
    final _$result =
        _$v ??
        _$CurrentOwnerDynamicSourceConfiguration._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'CurrentOwnerDynamicSourceConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
