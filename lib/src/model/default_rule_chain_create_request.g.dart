// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_rule_chain_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultRuleChainCreateRequest extends DefaultRuleChainCreateRequest {
  @override
  final String name;

  factory _$DefaultRuleChainCreateRequest([
    void Function(DefaultRuleChainCreateRequestBuilder)? updates,
  ]) => (DefaultRuleChainCreateRequestBuilder()..update(updates))._build();

  _$DefaultRuleChainCreateRequest._({required this.name}) : super._();
  @override
  DefaultRuleChainCreateRequest rebuild(
    void Function(DefaultRuleChainCreateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DefaultRuleChainCreateRequestBuilder toBuilder() =>
      DefaultRuleChainCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultRuleChainCreateRequest && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'DefaultRuleChainCreateRequest',
    )..add('name', name)).toString();
  }
}

class DefaultRuleChainCreateRequestBuilder
    implements
        Builder<
          DefaultRuleChainCreateRequest,
          DefaultRuleChainCreateRequestBuilder
        > {
  _$DefaultRuleChainCreateRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DefaultRuleChainCreateRequestBuilder() {
    DefaultRuleChainCreateRequest._defaults(this);
  }

  DefaultRuleChainCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefaultRuleChainCreateRequest other) {
    _$v = other as _$DefaultRuleChainCreateRequest;
  }

  @override
  void update(void Function(DefaultRuleChainCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefaultRuleChainCreateRequest build() => _build();

  _$DefaultRuleChainCreateRequest _build() {
    final _$result =
        _$v ??
        _$DefaultRuleChainCreateRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'DefaultRuleChainCreateRequest',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
