// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agg_key_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggKeyInput extends AggKeyInput {
  @override
  final String? key;
  @override
  final String type;

  factory _$AggKeyInput([void Function(AggKeyInputBuilder)? updates]) =>
      (AggKeyInputBuilder()..update(updates))._build();

  _$AggKeyInput._({this.key, required this.type}) : super._();
  @override
  AggKeyInput rebuild(void Function(AggKeyInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggKeyInputBuilder toBuilder() => AggKeyInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggKeyInput && key == other.key && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AggKeyInput')
          ..add('key', key)
          ..add('type', type))
        .toString();
  }
}

class AggKeyInputBuilder
    implements Builder<AggKeyInput, AggKeyInputBuilder>, AggInputBuilder {
  _$AggKeyInput? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(covariant String? key) => _$this._key = key;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AggKeyInputBuilder() {
    AggKeyInput._defaults(this);
  }

  AggKeyInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AggKeyInput other) {
    _$v = other as _$AggKeyInput;
  }

  @override
  void update(void Function(AggKeyInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggKeyInput build() => _build();

  _$AggKeyInput _build() {
    final _$result =
        _$v ??
        _$AggKeyInput._(
          key: key,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AggKeyInput',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
