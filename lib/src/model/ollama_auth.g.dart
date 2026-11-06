// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ollama_auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class OllamaAuthBuilder {
  void replace(OllamaAuth other);
  void update(void Function(OllamaAuthBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$OllamaAuth extends $OllamaAuth {
  @override
  final String type;

  factory _$$OllamaAuth([void Function($OllamaAuthBuilder)? updates]) =>
      ($OllamaAuthBuilder()..update(updates))._build();

  _$$OllamaAuth._({required this.type}) : super._();
  @override
  $OllamaAuth rebuild(void Function($OllamaAuthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $OllamaAuthBuilder toBuilder() => $OllamaAuthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $OllamaAuth && type == other.type;
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
      r'$OllamaAuth',
    )..add('type', type)).toString();
  }
}

class $OllamaAuthBuilder
    implements Builder<$OllamaAuth, $OllamaAuthBuilder>, OllamaAuthBuilder {
  _$$OllamaAuth? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $OllamaAuthBuilder() {
    $OllamaAuth._defaults(this);
  }

  $OllamaAuthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $OllamaAuth other) {
    _$v = other as _$$OllamaAuth;
  }

  @override
  void update(void Function($OllamaAuthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $OllamaAuth build() => _build();

  _$$OllamaAuth _build() {
    final _$result =
        _$v ??
        _$$OllamaAuth._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$OllamaAuth',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
