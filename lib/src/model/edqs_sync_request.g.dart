// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edqs_sync_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdqsSyncRequest extends EdqsSyncRequest {
  @override
  final BuiltSet<ObjectType>? objectTypes;

  factory _$EdqsSyncRequest([void Function(EdqsSyncRequestBuilder)? updates]) =>
      (EdqsSyncRequestBuilder()..update(updates))._build();

  _$EdqsSyncRequest._({this.objectTypes}) : super._();
  @override
  EdqsSyncRequest rebuild(void Function(EdqsSyncRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdqsSyncRequestBuilder toBuilder() => EdqsSyncRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdqsSyncRequest && objectTypes == other.objectTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, objectTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'EdqsSyncRequest',
    )..add('objectTypes', objectTypes)).toString();
  }
}

class EdqsSyncRequestBuilder
    implements Builder<EdqsSyncRequest, EdqsSyncRequestBuilder> {
  _$EdqsSyncRequest? _$v;

  SetBuilder<ObjectType>? _objectTypes;
  SetBuilder<ObjectType> get objectTypes =>
      _$this._objectTypes ??= SetBuilder<ObjectType>();
  set objectTypes(SetBuilder<ObjectType>? objectTypes) =>
      _$this._objectTypes = objectTypes;

  EdqsSyncRequestBuilder() {
    EdqsSyncRequest._defaults(this);
  }

  EdqsSyncRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _objectTypes = $v.objectTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdqsSyncRequest other) {
    _$v = other as _$EdqsSyncRequest;
  }

  @override
  void update(void Function(EdqsSyncRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdqsSyncRequest build() => _build();

  _$EdqsSyncRequest _build() {
    _$EdqsSyncRequest _$result;
    try {
      _$result = _$v ?? _$EdqsSyncRequest._(objectTypes: _objectTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'objectTypes';
        _objectTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdqsSyncRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
