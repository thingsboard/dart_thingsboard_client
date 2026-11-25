// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_field.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpField extends SignUpField {
  @override
  final SignUpFieldId id;
  @override
  final String label;
  @override
  final bool? required_;

  factory _$SignUpField([void Function(SignUpFieldBuilder)? updates]) =>
      (SignUpFieldBuilder()..update(updates))._build();

  _$SignUpField._({required this.id, required this.label, this.required_})
    : super._();
  @override
  SignUpField rebuild(void Function(SignUpFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpFieldBuilder toBuilder() => SignUpFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpField &&
        id == other.id &&
        label == other.label &&
        required_ == other.required_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpField')
          ..add('id', id)
          ..add('label', label)
          ..add('required_', required_))
        .toString();
  }
}

class SignUpFieldBuilder implements Builder<SignUpField, SignUpFieldBuilder> {
  _$SignUpField? _$v;

  SignUpFieldId? _id;
  SignUpFieldId? get id => _$this._id;
  set id(SignUpFieldId? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  SignUpFieldBuilder() {
    SignUpField._defaults(this);
  }

  SignUpFieldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _label = $v.label;
      _required_ = $v.required_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpField other) {
    _$v = other as _$SignUpField;
  }

  @override
  void update(void Function(SignUpFieldBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpField build() => _build();

  _$SignUpField _build() {
    final _$result =
        _$v ??
        _$SignUpField._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'SignUpField', 'id'),
          label: BuiltValueNullFieldError.checkNotNull(
            label,
            r'SignUpField',
            'label',
          ),
          required_: required_,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
