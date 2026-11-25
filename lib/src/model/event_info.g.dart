// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventInfo extends EventInfo {
  @override
  final EventId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String? type;
  @override
  final String? uid;
  @override
  final EntityId? entityId;
  @override
  final JsonObject? body;

  factory _$EventInfo([void Function(EventInfoBuilder)? updates]) =>
      (EventInfoBuilder()..update(updates))._build();

  _$EventInfo._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.type,
    this.uid,
    this.entityId,
    this.body,
  }) : super._();
  @override
  EventInfo rebuild(void Function(EventInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventInfoBuilder toBuilder() => EventInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        type == other.type &&
        uid == other.uid &&
        entityId == other.entityId &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('type', type)
          ..add('uid', uid)
          ..add('entityId', entityId)
          ..add('body', body))
        .toString();
  }
}

class EventInfoBuilder implements Builder<EventInfo, EventInfoBuilder> {
  _$EventInfo? _$v;

  EventIdBuilder? _id;
  EventIdBuilder get id => _$this._id ??= EventIdBuilder();
  set id(EventIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  EntityId? _entityId;
  EntityId? get entityId => _$this._entityId;
  set entityId(EntityId? entityId) => _$this._entityId = entityId;

  JsonObject? _body;
  JsonObject? get body => _$this._body;
  set body(JsonObject? body) => _$this._body = body;

  EventInfoBuilder() {
    EventInfo._defaults(this);
  }

  EventInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _type = $v.type;
      _uid = $v.uid;
      _entityId = $v.entityId;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventInfo other) {
    _$v = other as _$EventInfo;
  }

  @override
  void update(void Function(EventInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventInfo build() => _build();

  _$EventInfo _build() {
    _$EventInfo _$result;
    try {
      _$result =
          _$v ??
          _$EventInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            type: type,
            uid: uid,
            entityId: entityId,
            body: body,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EventInfo',
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
