// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_field_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class CalculatedFieldConfigurationBuilder {
  void replace(CalculatedFieldConfiguration other);
  void update(void Function(CalculatedFieldConfigurationBuilder) updates);
  Output? get output;
  set output(Output? output);

  String? get type;
  set type(String? type);
}

class _$$CalculatedFieldConfiguration extends $CalculatedFieldConfiguration {
  @override
  final Output? output;
  @override
  final String type;

  factory _$$CalculatedFieldConfiguration([
    void Function($CalculatedFieldConfigurationBuilder)? updates,
  ]) => ($CalculatedFieldConfigurationBuilder()..update(updates))._build();

  _$$CalculatedFieldConfiguration._({this.output, required this.type})
    : super._();
  @override
  $CalculatedFieldConfiguration rebuild(
    void Function($CalculatedFieldConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $CalculatedFieldConfigurationBuilder toBuilder() =>
      $CalculatedFieldConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CalculatedFieldConfiguration &&
        output == other.output &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$CalculatedFieldConfiguration')
          ..add('output', output)
          ..add('type', type))
        .toString();
  }
}

class $CalculatedFieldConfigurationBuilder
    implements
        Builder<
          $CalculatedFieldConfiguration,
          $CalculatedFieldConfigurationBuilder
        >,
        CalculatedFieldConfigurationBuilder {
  _$$CalculatedFieldConfiguration? _$v;

  Output? _output;
  Output? get output => _$this._output;
  set output(covariant Output? output) => _$this._output = output;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $CalculatedFieldConfigurationBuilder() {
    $CalculatedFieldConfiguration._defaults(this);
  }

  $CalculatedFieldConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _output = $v.output;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $CalculatedFieldConfiguration other) {
    _$v = other as _$$CalculatedFieldConfiguration;
  }

  @override
  void update(void Function($CalculatedFieldConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $CalculatedFieldConfiguration build() => _build();

  _$$CalculatedFieldConfiguration _build() {
    final _$result =
        _$v ??
        _$$CalculatedFieldConfiguration._(
          output: output,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$CalculatedFieldConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
