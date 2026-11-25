// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_upgrade_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentUpgradeRequest extends AgentUpgradeRequest {
  @override
  final String imageRef;

  factory _$AgentUpgradeRequest([
    void Function(AgentUpgradeRequestBuilder)? updates,
  ]) => (AgentUpgradeRequestBuilder()..update(updates))._build();

  _$AgentUpgradeRequest._({required this.imageRef}) : super._();
  @override
  AgentUpgradeRequest rebuild(
    void Function(AgentUpgradeRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AgentUpgradeRequestBuilder toBuilder() =>
      AgentUpgradeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentUpgradeRequest && imageRef == other.imageRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AgentUpgradeRequest',
    )..add('imageRef', imageRef)).toString();
  }
}

class AgentUpgradeRequestBuilder
    implements Builder<AgentUpgradeRequest, AgentUpgradeRequestBuilder> {
  _$AgentUpgradeRequest? _$v;

  String? _imageRef;
  String? get imageRef => _$this._imageRef;
  set imageRef(String? imageRef) => _$this._imageRef = imageRef;

  AgentUpgradeRequestBuilder() {
    AgentUpgradeRequest._defaults(this);
  }

  AgentUpgradeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageRef = $v.imageRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentUpgradeRequest other) {
    _$v = other as _$AgentUpgradeRequest;
  }

  @override
  void update(void Function(AgentUpgradeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentUpgradeRequest build() => _build();

  _$AgentUpgradeRequest _build() {
    final _$result =
        _$v ??
        _$AgentUpgradeRequest._(
          imageRef: BuiltValueNullFieldError.checkNotNull(
            imageRef,
            r'AgentUpgradeRequest',
            'imageRef',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
