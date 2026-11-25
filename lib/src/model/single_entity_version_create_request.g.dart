// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_entity_version_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SingleEntityVersionCreateRequest
    extends SingleEntityVersionCreateRequest {
  @override
  final EntityId? entityId;
  @override
  final VersionCreateConfig? config;
  @override
  final String? versionName;
  @override
  final String? branch;
  @override
  final VersionCreateRequestType type;

  factory _$SingleEntityVersionCreateRequest([
    void Function(SingleEntityVersionCreateRequestBuilder)? updates,
  ]) => (SingleEntityVersionCreateRequestBuilder()..update(updates))._build();

  _$SingleEntityVersionCreateRequest._({
    this.entityId,
    this.config,
    this.versionName,
    this.branch,
    required this.type,
  }) : super._();
  @override
  SingleEntityVersionCreateRequest rebuild(
    void Function(SingleEntityVersionCreateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SingleEntityVersionCreateRequestBuilder toBuilder() =>
      SingleEntityVersionCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SingleEntityVersionCreateRequest &&
        entityId == other.entityId &&
        config == other.config &&
        versionName == other.versionName &&
        branch == other.branch &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, versionName.hashCode);
    _$hash = $jc(_$hash, branch.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SingleEntityVersionCreateRequest')
          ..add('entityId', entityId)
          ..add('config', config)
          ..add('versionName', versionName)
          ..add('branch', branch)
          ..add('type', type))
        .toString();
  }
}

class SingleEntityVersionCreateRequestBuilder
    implements
        Builder<
          SingleEntityVersionCreateRequest,
          SingleEntityVersionCreateRequestBuilder
        >,
        VersionCreateRequestBuilder {
  _$SingleEntityVersionCreateRequest? _$v;

  EntityId? _entityId;
  EntityId? get entityId => _$this._entityId;
  set entityId(covariant EntityId? entityId) => _$this._entityId = entityId;

  VersionCreateConfigBuilder? _config;
  VersionCreateConfigBuilder get config =>
      _$this._config ??= VersionCreateConfigBuilder();
  set config(covariant VersionCreateConfigBuilder? config) =>
      _$this._config = config;

  String? _versionName;
  String? get versionName => _$this._versionName;
  set versionName(covariant String? versionName) =>
      _$this._versionName = versionName;

  String? _branch;
  String? get branch => _$this._branch;
  set branch(covariant String? branch) => _$this._branch = branch;

  VersionCreateRequestType? _type;
  VersionCreateRequestType? get type => _$this._type;
  set type(covariant VersionCreateRequestType? type) => _$this._type = type;

  SingleEntityVersionCreateRequestBuilder() {
    SingleEntityVersionCreateRequest._defaults(this);
  }

  SingleEntityVersionCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityId = $v.entityId;
      _config = $v.config?.toBuilder();
      _versionName = $v.versionName;
      _branch = $v.branch;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SingleEntityVersionCreateRequest other) {
    _$v = other as _$SingleEntityVersionCreateRequest;
  }

  @override
  void update(void Function(SingleEntityVersionCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SingleEntityVersionCreateRequest build() => _build();

  _$SingleEntityVersionCreateRequest _build() {
    _$SingleEntityVersionCreateRequest _$result;
    try {
      _$result =
          _$v ??
          _$SingleEntityVersionCreateRequest._(
            entityId: entityId,
            config: _config?.build(),
            versionName: versionName,
            branch: branch,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SingleEntityVersionCreateRequest',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SingleEntityVersionCreateRequest',
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
