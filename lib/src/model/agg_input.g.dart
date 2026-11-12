// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agg_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class AggInputBuilder {
  void replace(AggInput other);
  void update(void Function(AggInputBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$AggInput extends $AggInput {
  @override
  final String type;

  factory _$$AggInput([void Function($AggInputBuilder)? updates]) =>
      ($AggInputBuilder()..update(updates))._build();

  _$$AggInput._({required this.type}) : super._();
  @override
  $AggInput rebuild(void Function($AggInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $AggInputBuilder toBuilder() => $AggInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $AggInput && type == other.type;
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
      r'$AggInput',
    )..add('type', type)).toString();
  }
}

class $AggInputBuilder
    implements Builder<$AggInput, $AggInputBuilder>, AggInputBuilder {
  _$$AggInput? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $AggInputBuilder() {
    $AggInput._defaults(this);
  }

  $AggInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $AggInput other) {
    _$v = other as _$$AggInput;
  }

  @override
  void update(void Function($AggInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AggInput build() => _build();

  _$$AggInput _build() {
    final _$result =
        _$v ??
        _$$AggInput._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$AggInput',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
