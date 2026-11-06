// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeEvent extends EdgeEvent {
  @override
  final EdgeEventId? id;
  @override
  final int? createdTime;
  @override
  final int? seqId;
  @override
  final TenantId? tenantId;
  @override
  final EdgeId? edgeId;
  @override
  final EdgeEventActionType? action;
  @override
  final String? entityId;
  @override
  final String? uid;
  @override
  final EdgeEventType? type;
  @override
  final JsonObject? body;
  @override
  final String? entityGroupId;

  factory _$EdgeEvent([void Function(EdgeEventBuilder)? updates]) =>
      (EdgeEventBuilder()..update(updates))._build();

  _$EdgeEvent._({
    this.id,
    this.createdTime,
    this.seqId,
    this.tenantId,
    this.edgeId,
    this.action,
    this.entityId,
    this.uid,
    this.type,
    this.body,
    this.entityGroupId,
  }) : super._();
  @override
  EdgeEvent rebuild(void Function(EdgeEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdgeEventBuilder toBuilder() => EdgeEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeEvent &&
        id == other.id &&
        createdTime == other.createdTime &&
        seqId == other.seqId &&
        tenantId == other.tenantId &&
        edgeId == other.edgeId &&
        action == other.action &&
        entityId == other.entityId &&
        uid == other.uid &&
        type == other.type &&
        body == other.body &&
        entityGroupId == other.entityGroupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, seqId.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, edgeId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, entityGroupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdgeEvent')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('seqId', seqId)
          ..add('tenantId', tenantId)
          ..add('edgeId', edgeId)
          ..add('action', action)
          ..add('entityId', entityId)
          ..add('uid', uid)
          ..add('type', type)
          ..add('body', body)
          ..add('entityGroupId', entityGroupId))
        .toString();
  }
}

class EdgeEventBuilder implements Builder<EdgeEvent, EdgeEventBuilder> {
  _$EdgeEvent? _$v;

  EdgeEventIdBuilder? _id;
  EdgeEventIdBuilder get id => _$this._id ??= EdgeEventIdBuilder();
  set id(EdgeEventIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  int? _seqId;
  int? get seqId => _$this._seqId;
  set seqId(int? seqId) => _$this._seqId = seqId;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  EdgeIdBuilder? _edgeId;
  EdgeIdBuilder get edgeId => _$this._edgeId ??= EdgeIdBuilder();
  set edgeId(EdgeIdBuilder? edgeId) => _$this._edgeId = edgeId;

  EdgeEventActionType? _action;
  EdgeEventActionType? get action => _$this._action;
  set action(EdgeEventActionType? action) => _$this._action = action;

  String? _entityId;
  String? get entityId => _$this._entityId;
  set entityId(String? entityId) => _$this._entityId = entityId;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  EdgeEventType? _type;
  EdgeEventType? get type => _$this._type;
  set type(EdgeEventType? type) => _$this._type = type;

  JsonObject? _body;
  JsonObject? get body => _$this._body;
  set body(JsonObject? body) => _$this._body = body;

  String? _entityGroupId;
  String? get entityGroupId => _$this._entityGroupId;
  set entityGroupId(String? entityGroupId) =>
      _$this._entityGroupId = entityGroupId;

  EdgeEventBuilder() {
    EdgeEvent._defaults(this);
  }

  EdgeEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _seqId = $v.seqId;
      _tenantId = $v.tenantId?.toBuilder();
      _edgeId = $v.edgeId?.toBuilder();
      _action = $v.action;
      _entityId = $v.entityId;
      _uid = $v.uid;
      _type = $v.type;
      _body = $v.body;
      _entityGroupId = $v.entityGroupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdgeEvent other) {
    _$v = other as _$EdgeEvent;
  }

  @override
  void update(void Function(EdgeEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdgeEvent build() => _build();

  _$EdgeEvent _build() {
    _$EdgeEvent _$result;
    try {
      _$result =
          _$v ??
          _$EdgeEvent._(
            id: _id?.build(),
            createdTime: createdTime,
            seqId: seqId,
            tenantId: _tenantId?.build(),
            edgeId: _edgeId?.build(),
            action: action,
            entityId: entityId,
            uid: uid,
            type: type,
            body: body,
            entityGroupId: entityGroupId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'edgeId';
        _edgeId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdgeEvent',
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
