// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complex_version_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplexVersionCreateRequest extends ComplexVersionCreateRequest {
  @override
  final BuiltMap<String, EntityTypeVersionCreateConfig>? entityTypes;
  @override
  final SyncStrategy? syncStrategy;
  @override
  final String? versionName;
  @override
  final String? branch;
  @override
  final VersionCreateRequestType type;

  factory _$ComplexVersionCreateRequest([
    void Function(ComplexVersionCreateRequestBuilder)? updates,
  ]) => (ComplexVersionCreateRequestBuilder()..update(updates))._build();

  _$ComplexVersionCreateRequest._({
    this.entityTypes,
    this.syncStrategy,
    this.versionName,
    this.branch,
    required this.type,
  }) : super._();
  @override
  ComplexVersionCreateRequest rebuild(
    void Function(ComplexVersionCreateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ComplexVersionCreateRequestBuilder toBuilder() =>
      ComplexVersionCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplexVersionCreateRequest &&
        entityTypes == other.entityTypes &&
        syncStrategy == other.syncStrategy &&
        versionName == other.versionName &&
        branch == other.branch &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityTypes.hashCode);
    _$hash = $jc(_$hash, syncStrategy.hashCode);
    _$hash = $jc(_$hash, versionName.hashCode);
    _$hash = $jc(_$hash, branch.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComplexVersionCreateRequest')
          ..add('entityTypes', entityTypes)
          ..add('syncStrategy', syncStrategy)
          ..add('versionName', versionName)
          ..add('branch', branch)
          ..add('type', type))
        .toString();
  }
}

class ComplexVersionCreateRequestBuilder
    implements
        Builder<
          ComplexVersionCreateRequest,
          ComplexVersionCreateRequestBuilder
        >,
        VersionCreateRequestBuilder {
  _$ComplexVersionCreateRequest? _$v;

  MapBuilder<String, EntityTypeVersionCreateConfig>? _entityTypes;
  MapBuilder<String, EntityTypeVersionCreateConfig> get entityTypes =>
      _$this._entityTypes ??=
          MapBuilder<String, EntityTypeVersionCreateConfig>();
  set entityTypes(
    covariant MapBuilder<String, EntityTypeVersionCreateConfig>? entityTypes,
  ) => _$this._entityTypes = entityTypes;

  SyncStrategy? _syncStrategy;
  SyncStrategy? get syncStrategy => _$this._syncStrategy;
  set syncStrategy(covariant SyncStrategy? syncStrategy) =>
      _$this._syncStrategy = syncStrategy;

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

  ComplexVersionCreateRequestBuilder() {
    ComplexVersionCreateRequest._defaults(this);
  }

  ComplexVersionCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityTypes = $v.entityTypes?.toBuilder();
      _syncStrategy = $v.syncStrategy;
      _versionName = $v.versionName;
      _branch = $v.branch;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ComplexVersionCreateRequest other) {
    _$v = other as _$ComplexVersionCreateRequest;
  }

  @override
  void update(void Function(ComplexVersionCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplexVersionCreateRequest build() => _build();

  _$ComplexVersionCreateRequest _build() {
    _$ComplexVersionCreateRequest _$result;
    try {
      _$result =
          _$v ??
          _$ComplexVersionCreateRequest._(
            entityTypes: _entityTypes?.build(),
            syncStrategy: syncStrategy,
            versionName: versionName,
            branch: branch,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ComplexVersionCreateRequest',
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
          r'ComplexVersionCreateRequest',
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
