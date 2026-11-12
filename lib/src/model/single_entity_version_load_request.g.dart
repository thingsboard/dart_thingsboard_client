// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_entity_version_load_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SingleEntityVersionLoadRequest extends SingleEntityVersionLoadRequest {
  @override
  final EntityId? externalEntityId;
  @override
  final EntityId? internalEntityId;
  @override
  final VersionLoadConfig? config;
  @override
  final String? versionId;
  @override
  final VersionLoadRequestType type;

  factory _$SingleEntityVersionLoadRequest([
    void Function(SingleEntityVersionLoadRequestBuilder)? updates,
  ]) => (SingleEntityVersionLoadRequestBuilder()..update(updates))._build();

  _$SingleEntityVersionLoadRequest._({
    this.externalEntityId,
    this.internalEntityId,
    this.config,
    this.versionId,
    required this.type,
  }) : super._();
  @override
  SingleEntityVersionLoadRequest rebuild(
    void Function(SingleEntityVersionLoadRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SingleEntityVersionLoadRequestBuilder toBuilder() =>
      SingleEntityVersionLoadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SingleEntityVersionLoadRequest &&
        externalEntityId == other.externalEntityId &&
        internalEntityId == other.internalEntityId &&
        config == other.config &&
        versionId == other.versionId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, externalEntityId.hashCode);
    _$hash = $jc(_$hash, internalEntityId.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SingleEntityVersionLoadRequest')
          ..add('externalEntityId', externalEntityId)
          ..add('internalEntityId', internalEntityId)
          ..add('config', config)
          ..add('versionId', versionId)
          ..add('type', type))
        .toString();
  }
}

class SingleEntityVersionLoadRequestBuilder
    implements
        Builder<
          SingleEntityVersionLoadRequest,
          SingleEntityVersionLoadRequestBuilder
        >,
        VersionLoadRequestBuilder {
  _$SingleEntityVersionLoadRequest? _$v;

  EntityId? _externalEntityId;
  EntityId? get externalEntityId => _$this._externalEntityId;
  set externalEntityId(covariant EntityId? externalEntityId) =>
      _$this._externalEntityId = externalEntityId;

  EntityId? _internalEntityId;
  EntityId? get internalEntityId => _$this._internalEntityId;
  set internalEntityId(covariant EntityId? internalEntityId) =>
      _$this._internalEntityId = internalEntityId;

  VersionLoadConfigBuilder? _config;
  VersionLoadConfigBuilder get config =>
      _$this._config ??= VersionLoadConfigBuilder();
  set config(covariant VersionLoadConfigBuilder? config) =>
      _$this._config = config;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(covariant String? versionId) => _$this._versionId = versionId;

  VersionLoadRequestType? _type;
  VersionLoadRequestType? get type => _$this._type;
  set type(covariant VersionLoadRequestType? type) => _$this._type = type;

  SingleEntityVersionLoadRequestBuilder() {
    SingleEntityVersionLoadRequest._defaults(this);
  }

  SingleEntityVersionLoadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _externalEntityId = $v.externalEntityId;
      _internalEntityId = $v.internalEntityId;
      _config = $v.config?.toBuilder();
      _versionId = $v.versionId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SingleEntityVersionLoadRequest other) {
    _$v = other as _$SingleEntityVersionLoadRequest;
  }

  @override
  void update(void Function(SingleEntityVersionLoadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SingleEntityVersionLoadRequest build() => _build();

  _$SingleEntityVersionLoadRequest _build() {
    _$SingleEntityVersionLoadRequest _$result;
    try {
      _$result =
          _$v ??
          _$SingleEntityVersionLoadRequest._(
            externalEntityId: externalEntityId,
            internalEntityId: internalEntityId,
            config: _config?.build(),
            versionId: versionId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SingleEntityVersionLoadRequest',
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
          r'SingleEntityVersionLoadRequest',
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
