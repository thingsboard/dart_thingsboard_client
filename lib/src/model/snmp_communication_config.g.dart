// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snmp_communication_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class SnmpCommunicationConfigBuilder {
  void replace(SnmpCommunicationConfig other);
  void update(void Function(SnmpCommunicationConfigBuilder) updates);
  SnmpCommunicationSpec? get spec;
  set spec(SnmpCommunicationSpec? spec);
}

class _$$SnmpCommunicationConfig extends $SnmpCommunicationConfig {
  @override
  final SnmpCommunicationSpec spec;

  factory _$$SnmpCommunicationConfig([
    void Function($SnmpCommunicationConfigBuilder)? updates,
  ]) => ($SnmpCommunicationConfigBuilder()..update(updates))._build();

  _$$SnmpCommunicationConfig._({required this.spec}) : super._();
  @override
  $SnmpCommunicationConfig rebuild(
    void Function($SnmpCommunicationConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $SnmpCommunicationConfigBuilder toBuilder() =>
      $SnmpCommunicationConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $SnmpCommunicationConfig && spec == other.spec;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, spec.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$SnmpCommunicationConfig',
    )..add('spec', spec)).toString();
  }
}

class $SnmpCommunicationConfigBuilder
    implements
        Builder<$SnmpCommunicationConfig, $SnmpCommunicationConfigBuilder>,
        SnmpCommunicationConfigBuilder {
  _$$SnmpCommunicationConfig? _$v;

  SnmpCommunicationSpec? _spec;
  SnmpCommunicationSpec? get spec => _$this._spec;
  set spec(covariant SnmpCommunicationSpec? spec) => _$this._spec = spec;

  $SnmpCommunicationConfigBuilder() {
    $SnmpCommunicationConfig._defaults(this);
  }

  $SnmpCommunicationConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spec = $v.spec;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $SnmpCommunicationConfig other) {
    _$v = other as _$$SnmpCommunicationConfig;
  }

  @override
  void update(void Function($SnmpCommunicationConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $SnmpCommunicationConfig build() => _build();

  _$$SnmpCommunicationConfig _build() {
    final _$result =
        _$v ??
        _$$SnmpCommunicationConfig._(
          spec: BuiltValueNullFieldError.checkNotNull(
            spec,
            r'$SnmpCommunicationConfig',
            'spec',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
