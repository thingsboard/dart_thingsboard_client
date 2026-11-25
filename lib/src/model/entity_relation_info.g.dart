// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_relation_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityRelationInfo extends EntityRelationInfo {
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
  @override
  final String? fromName;
  @override
  final String? toName;

  factory _$EntityRelationInfo([
    void Function(EntityRelationInfoBuilder)? updates,
  ]) => (EntityRelationInfoBuilder()..update(updates))._build();

  _$EntityRelationInfo._({
    required this.from,
    required this.to,
    required this.type,
    required this.typeGroup,
    this.version,
    this.additionalInfo,
    this.fromName,
    this.toName,
  }) : super._();
  @override
  EntityRelationInfo rebuild(
    void Function(EntityRelationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityRelationInfoBuilder toBuilder() =>
      EntityRelationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityRelationInfo &&
        from == other.from &&
        to == other.to &&
        type == other.type &&
        typeGroup == other.typeGroup &&
        version == other.version &&
        additionalInfo == other.additionalInfo &&
        fromName == other.fromName &&
        toName == other.toName;
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
    _$hash = $jc(_$hash, fromName.hashCode);
    _$hash = $jc(_$hash, toName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityRelationInfo')
          ..add('from', from)
          ..add('to', to)
          ..add('type', type)
          ..add('typeGroup', typeGroup)
          ..add('version', version)
          ..add('additionalInfo', additionalInfo)
          ..add('fromName', fromName)
          ..add('toName', toName))
        .toString();
  }
}

class EntityRelationInfoBuilder
    implements Builder<EntityRelationInfo, EntityRelationInfoBuilder> {
  _$EntityRelationInfo? _$v;

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

  String? _fromName;
  String? get fromName => _$this._fromName;
  set fromName(String? fromName) => _$this._fromName = fromName;

  String? _toName;
  String? get toName => _$this._toName;
  set toName(String? toName) => _$this._toName = toName;

  EntityRelationInfoBuilder() {
    EntityRelationInfo._defaults(this);
  }

  EntityRelationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _type = $v.type;
      _typeGroup = $v.typeGroup;
      _version = $v.version;
      _additionalInfo = $v.additionalInfo;
      _fromName = $v.fromName;
      _toName = $v.toName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityRelationInfo other) {
    _$v = other as _$EntityRelationInfo;
  }

  @override
  void update(void Function(EntityRelationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityRelationInfo build() => _build();

  _$EntityRelationInfo _build() {
    final _$result =
        _$v ??
        _$EntityRelationInfo._(
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'EntityRelationInfo',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(
            to,
            r'EntityRelationInfo',
            'to',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'EntityRelationInfo',
            'type',
          ),
          typeGroup: BuiltValueNullFieldError.checkNotNull(
            typeGroup,
            r'EntityRelationInfo',
            'typeGroup',
          ),
          version: version,
          additionalInfo: additionalInfo,
          fromName: fromName,
          toName: toName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
