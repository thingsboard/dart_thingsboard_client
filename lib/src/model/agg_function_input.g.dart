// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agg_function_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggFunctionInput extends AggFunctionInput {
  @override
  final String? function_;
  @override
  final String type;

  factory _$AggFunctionInput([
    void Function(AggFunctionInputBuilder)? updates,
  ]) => (AggFunctionInputBuilder()..update(updates))._build();

  _$AggFunctionInput._({this.function_, required this.type}) : super._();
  @override
  AggFunctionInput rebuild(void Function(AggFunctionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggFunctionInputBuilder toBuilder() =>
      AggFunctionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggFunctionInput &&
        function_ == other.function_ &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, function_.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AggFunctionInput')
          ..add('function_', function_)
          ..add('type', type))
        .toString();
  }
}

class AggFunctionInputBuilder
    implements
        Builder<AggFunctionInput, AggFunctionInputBuilder>,
        AggInputBuilder {
  _$AggFunctionInput? _$v;

  String? _function_;
  String? get function_ => _$this._function_;
  set function_(covariant String? function_) => _$this._function_ = function_;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AggFunctionInputBuilder() {
    AggFunctionInput._defaults(this);
  }

  AggFunctionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _function_ = $v.function_;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AggFunctionInput other) {
    _$v = other as _$AggFunctionInput;
  }

  @override
  void update(void Function(AggFunctionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggFunctionInput build() => _build();

  _$AggFunctionInput _build() {
    final _$result =
        _$v ??
        _$AggFunctionInput._(
          function_: function_,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AggFunctionInput',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
