// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_relation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityRelation extends EntityRelation {
  @override
  final EntityId from;
  @override
  final EntityId to;
  @override
  final String type;
  @override
  final RelationTypeGroup typeGroup;
  @override
  final int? version;
  @override
  final JsonObject? additionalInfo;

  factory _$EntityRelation([void Function(EntityRelationBuilder)? updates]) =>
      (EntityRelationBuilder()..update(updates))._build();

  _$EntityRelation._({
    required this.from,
    required this.to,
    required this.type,
    required this.typeGroup,
    this.version,
    this.additionalInfo,
  }) : super._();
  @override
  EntityRelation rebuild(void Function(EntityRelationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityRelationBuilder toBuilder() => EntityRelationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityRelation &&
        from == other.from &&
        to == other.to &&
        type == other.type &&
        typeGroup == other.typeGroup &&
        version == other.version &&
        additionalInfo == other.additionalInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeGroup.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityRelation')
          ..add('from', from)
          ..add('to', to)
          ..add('type', type)
          ..add('typeGroup', typeGroup)
          ..add('version', version)
          ..add('additionalInfo', additionalInfo))
        .toString();
  }
}

class EntityRelationBuilder
    implements Builder<EntityRelation, EntityRelationBuilder> {
  _$EntityRelation? _$v;

  EntityId? _from;
  EntityId? get from => _$this._from;
  set from(EntityId? from) => _$this._from = from;

  EntityId? _to;
  EntityId? get to => _$this._to;
  set to(EntityId? to) => _$this._to = to;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  RelationTypeGroup? _typeGroup;
  RelationTypeGroup? get typeGroup => _$this._typeGroup;
  set typeGroup(RelationTypeGroup? typeGroup) => _$this._typeGroup = typeGroup;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  EntityRelationBuilder() {
    EntityRelation._defaults(this);
  }

  EntityRelationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _type = $v.type;
      _typeGroup = $v.typeGroup;
      _version = $v.version;
      _additionalInfo = $v.additionalInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityRelation other) {
    _$v = other as _$EntityRelation;
  }

  @override
  void update(void Function(EntityRelationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityRelation build() => _build();

  _$EntityRelation _build() {
    final _$result =
        _$v ??
        _$EntityRelation._(
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'EntityRelation',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'EntityRelation',
            'to',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'EntityRelation',
            'type',
          ),
          typeGroup: BuiltValueNullFieldError.checkNotNull(
            typeGroup,
            r'EntityRelation',
            'typeGroup',
          ),
          version: version,
          additionalInfo: additionalInfo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
