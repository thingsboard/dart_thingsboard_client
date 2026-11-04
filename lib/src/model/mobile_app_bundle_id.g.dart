// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_app_bundle_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileAppBundleId extends MobileAppBundleId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$MobileAppBundleId([
    void Function(MobileAppBundleIdBuilder)? updates,
  ]) => (MobileAppBundleIdBuilder()..update(updates))._build();

  _$MobileAppBundleId._({required this.entityType, required this.id})
    : super._();
  @override
  MobileAppBundleId rebuild(void Function(MobileAppBundleIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MobileAppBundleIdBuilder toBuilder() =>
      MobileAppBundleIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileAppBundleId &&
        entityType == other.entityType &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MobileAppBundleId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class MobileAppBundleIdBuilder
    implements
        Builder<MobileAppBundleId, MobileAppBundleIdBuilder>,
        EntityIdBuilder {
  _$MobileAppBundleId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  MobileAppBundleIdBuilder() {
    MobileAppBundleId._defaults(this);
  }

  MobileAppBundleIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MobileAppBundleId other) {
    _$v = other as _$MobileAppBundleId;
  }

  @override
  void update(void Function(MobileAppBundleIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileAppBundleId build() => _build();

  _$MobileAppBundleId _build() {
    final _$result =
        _$v ??
        _$MobileAppBundleId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'MobileAppBundleId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'MobileAppBundleId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
