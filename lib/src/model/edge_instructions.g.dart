// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_instructions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeInstructions extends EdgeInstructions {
  @override
  final String? instructions;

  factory _$EdgeInstructions([
    void Function(EdgeInstructionsBuilder)? updates,
  ]) => (EdgeInstructionsBuilder()..update(updates))._build();

  _$EdgeInstructions._({this.instructions}) : super._();
  @override
  EdgeInstructions rebuild(void Function(EdgeInstructionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdgeInstructionsBuilder toBuilder() =>
      EdgeInstructionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeInstructions && instructions == other.instructions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instructions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'EdgeInstructions',
    )..add('instructions', instructions)).toString();
  }
}

class EdgeInstructionsBuilder
    implements Builder<EdgeInstructions, EdgeInstructionsBuilder> {
  _$EdgeInstructions? _$v;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  EdgeInstructionsBuilder() {
    EdgeInstructions._defaults(this);
  }

  EdgeInstructionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instructions = $v.instructions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdgeInstructions other) {
    _$v = other as _$EdgeInstructions;
  }

  @override
  void update(void Function(EdgeInstructionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdgeInstructions build() => _build();

  _$EdgeInstructions _build() {
    final _$result = _$v ?? _$EdgeInstructions._(instructions: instructions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
