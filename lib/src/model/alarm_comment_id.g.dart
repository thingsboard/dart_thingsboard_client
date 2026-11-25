// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_comment_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmCommentId extends AlarmCommentId {
  @override
  final String id;

  factory _$AlarmCommentId([void Function(AlarmCommentIdBuilder)? updates]) =>
      (AlarmCommentIdBuilder()..update(updates))._build();

  _$AlarmCommentId._({required this.id}) : super._();
  @override
  AlarmCommentId rebuild(void Function(AlarmCommentIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmCommentIdBuilder toBuilder() => AlarmCommentIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmCommentId && id == other.id;
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
      r'AlarmCommentId',
    )..add('id', id)).toString();
  }
}

class AlarmCommentIdBuilder
    implements Builder<AlarmCommentId, AlarmCommentIdBuilder> {
  _$AlarmCommentId? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AlarmCommentIdBuilder() {
    AlarmCommentId._defaults(this);
  }

  AlarmCommentIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmCommentId other) {
    _$v = other as _$AlarmCommentId;
  }

  @override
  void update(void Function(AlarmCommentIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmCommentId build() => _build();

  _$AlarmCommentId _build() {
    final _$result =
        _$v ??
        _$AlarmCommentId._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'AlarmCommentId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
