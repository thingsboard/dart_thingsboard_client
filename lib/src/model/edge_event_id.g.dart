// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_event_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeEventId extends EdgeEventId {
  @override
  final String id;

  factory _$EdgeEventId([void Function(EdgeEventIdBuilder)? updates]) =>
      (EdgeEventIdBuilder()..update(updates))._build();

  _$EdgeEventId._({required this.id}) : super._();
  @override
  EdgeEventId rebuild(void Function(EdgeEventIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdgeEventIdBuilder toBuilder() => EdgeEventIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeEventId && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'EdgeEventId',
    )..add('id', id)).toString();
  }
}

class EdgeEventIdBuilder implements Builder<EdgeEventId, EdgeEventIdBuilder> {
  _$EdgeEventId? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  EdgeEventIdBuilder() {
    EdgeEventId._defaults(this);
  }

  EdgeEventIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdgeEventId other) {
    _$v = other as _$EdgeEventId;
  }

  @override
  void update(void Function(EdgeEventIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdgeEventId build() => _build();

  _$EdgeEventId _build() {
    final _$result =
        _$v ??
        _$EdgeEventId._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'EdgeEventId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
