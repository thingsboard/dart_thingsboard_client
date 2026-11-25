// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_instructions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentInstructions extends AgentInstructions {
  @override
  final String? instructions;

  factory _$AgentInstructions([
    void Function(AgentInstructionsBuilder)? updates,
  ]) => (AgentInstructionsBuilder()..update(updates))._build();

  _$AgentInstructions._({this.instructions}) : super._();
  @override
  AgentInstructions rebuild(void Function(AgentInstructionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentInstructionsBuilder toBuilder() =>
      AgentInstructionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentInstructions && instructions == other.instructions;
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
      r'AgentInstructions',
    )..add('instructions', instructions)).toString();
  }
}

class AgentInstructionsBuilder
    implements Builder<AgentInstructions, AgentInstructionsBuilder> {
  _$AgentInstructions? _$v;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  AgentInstructionsBuilder() {
    AgentInstructions._defaults(this);
  }

  AgentInstructionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instructions = $v.instructions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentInstructions other) {
    _$v = other as _$AgentInstructions;
  }

  @override
  void update(void Function(AgentInstructionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentInstructions build() => _build();

  _$AgentInstructions _build() {
    final _$result = _$v ?? _$AgentInstructions._(instructions: instructions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
