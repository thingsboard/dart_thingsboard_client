// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_type_version_load_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityTypeVersionLoadRequest extends EntityTypeVersionLoadRequest {
  @override
  final bool? rollbackOnError;
  @override
  final BuiltMap<String, EntityTypeVersionLoadConfig>? entityTypes;
  @override
  final String? versionId;
  @override
  final VersionLoadRequestType type;

  factory _$EntityTypeVersionLoadRequest([
    void Function(EntityTypeVersionLoadRequestBuilder)? updates,
  ]) => (EntityTypeVersionLoadRequestBuilder()..update(updates))._build();

  _$EntityTypeVersionLoadRequest._({
    this.rollbackOnError,
    this.entityTypes,
    this.versionId,
    required this.type,
  }) : super._();
  @override
  EntityTypeVersionLoadRequest rebuild(
    void Function(EntityTypeVersionLoadRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityTypeVersionLoadRequestBuilder toBuilder() =>
      EntityTypeVersionLoadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityTypeVersionLoadRequest &&
        rollbackOnError == other.rollbackOnError &&
        entityTypes == other.entityTypes &&
        versionId == other.versionId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rollbackOnError.hashCode);
    _$hash = $jc(_$hash, entityTypes.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityTypeVersionLoadRequest')
          ..add('rollbackOnError', rollbackOnError)
          ..add('entityTypes', entityTypes)
          ..add('versionId', versionId)
          ..add('type', type))
        .toString();
  }
}

class EntityTypeVersionLoadRequestBuilder
    implements
        Builder<
          EntityTypeVersionLoadRequest,
          EntityTypeVersionLoadRequestBuilder
        >,
        VersionLoadRequestBuilder {
  _$EntityTypeVersionLoadRequest? _$v;

  bool? _rollbackOnError;
  bool? get rollbackOnError => _$this._rollbackOnError;
  set rollbackOnError(covariant bool? rollbackOnError) =>
      _$this._rollbackOnError = rollbackOnError;

  MapBuilder<String, EntityTypeVersionLoadConfig>? _entityTypes;
  MapBuilder<String, EntityTypeVersionLoadConfig> get entityTypes =>
      _$this._entityTypes ??= MapBuilder<String, EntityTypeVersionLoadConfig>();
  set entityTypes(
    covariant MapBuilder<String, EntityTypeVersionLoadConfig>? entityTypes,
  ) => _$this._entityTypes = entityTypes;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(covariant String? versionId) => _$this._versionId = versionId;

  VersionLoadRequestType? _type;
  VersionLoadRequestType? get type => _$this._type;
  set type(covariant VersionLoadRequestType? type) => _$this._type = type;

  EntityTypeVersionLoadRequestBuilder() {
    EntityTypeVersionLoadRequest._defaults(this);
  }

  EntityTypeVersionLoadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rollbackOnError = $v.rollbackOnError;
      _entityTypes = $v.entityTypes?.toBuilder();
      _versionId = $v.versionId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityTypeVersionLoadRequest other) {
    _$v = other as _$EntityTypeVersionLoadRequest;
  }

  @override
  void update(void Function(EntityTypeVersionLoadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityTypeVersionLoadRequest build() => _build();

  _$EntityTypeVersionLoadRequest _build() {
    _$EntityTypeVersionLoadRequest _$result;
    try {
      _$result =
          _$v ??
          _$EntityTypeVersionLoadRequest._(
            rollbackOnError: rollbackOnError,
            entityTypes: _entityTypes?.build(),
            versionId: versionId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntityTypeVersionLoadRequest',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityTypes';
        _entityTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityTypeVersionLoadRequest',
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
