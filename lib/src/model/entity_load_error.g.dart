// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_load_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityLoadError extends EntityLoadError {
  @override
  final String? type;
  @override
  final EntityId? source_;
  @override
  final EntityId? target;
  @override
  final String? message;

  factory _$EntityLoadError([void Function(EntityLoadErrorBuilder)? updates]) =>
      (EntityLoadErrorBuilder()..update(updates))._build();

  _$EntityLoadError._({this.type, this.source_, this.target, this.message})
    : super._();
  @override
  EntityLoadError rebuild(void Function(EntityLoadErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityLoadErrorBuilder toBuilder() => EntityLoadErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityLoadError &&
        type == other.type &&
        source_ == other.source_ &&
        target == other.target &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityLoadError')
          ..add('type', type)
          ..add('source_', source_)
          ..add('target', target)
          ..add('message', message))
        .toString();
  }
}

class EntityLoadErrorBuilder
    implements Builder<EntityLoadError, EntityLoadErrorBuilder> {
  _$EntityLoadError? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  EntityId? _source_;
  EntityId? get source_ => _$this._source_;
  set source_(EntityId? source_) => _$this._source_ = source_;

  EntityId? _target;
  EntityId? get target => _$this._target;
  set target(EntityId? target) => _$this._target = target;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  EntityLoadErrorBuilder() {
    EntityLoadError._defaults(this);
  }

  EntityLoadErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _source_ = $v.source_;
      _target = $v.target;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityLoadError other) {
    _$v = other as _$EntityLoadError;
  }

  @override
  void update(void Function(EntityLoadErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityLoadError build() => _build();

  _$EntityLoadError _build() {
    final _$result =
        _$v ??
        _$EntityLoadError._(
          type: type,
          source_: source_,
          target: target,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
