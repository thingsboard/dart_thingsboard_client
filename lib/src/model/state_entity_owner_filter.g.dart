// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_entity_owner_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StateEntityOwnerFilter extends StateEntityOwnerFilter {
  @override
  final AliasEntityId? defaultStateEntity;
  @override
  final AliasEntityId? singleEntity;
  @override
  final String type;

  factory _$StateEntityOwnerFilter([
    void Function(StateEntityOwnerFilterBuilder)? updates,
  ]) => (StateEntityOwnerFilterBuilder()..update(updates))._build();

  _$StateEntityOwnerFilter._({
    this.defaultStateEntity,
    this.singleEntity,
    required this.type,
  }) : super._();
  @override
  StateEntityOwnerFilter rebuild(
    void Function(StateEntityOwnerFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StateEntityOwnerFilterBuilder toBuilder() =>
      StateEntityOwnerFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StateEntityOwnerFilter &&
        defaultStateEntity == other.defaultStateEntity &&
        singleEntity == other.singleEntity &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultStateEntity.hashCode);
    _$hash = $jc(_$hash, singleEntity.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StateEntityOwnerFilter')
          ..add('defaultStateEntity', defaultStateEntity)
          ..add('singleEntity', singleEntity)
          ..add('type', type))
        .toString();
  }
}

class StateEntityOwnerFilterBuilder
    implements
        Builder<StateEntityOwnerFilter, StateEntityOwnerFilterBuilder>,
        EntityFilterBuilder {
  _$StateEntityOwnerFilter? _$v;

  AliasEntityIdBuilder? _defaultStateEntity;
  AliasEntityIdBuilder get defaultStateEntity =>
      _$this._defaultStateEntity ??= AliasEntityIdBuilder();
  set defaultStateEntity(covariant AliasEntityIdBuilder? defaultStateEntity) =>
      _$this._defaultStateEntity = defaultStateEntity;

  AliasEntityIdBuilder? _singleEntity;
  AliasEntityIdBuilder get singleEntity =>
      _$this._singleEntity ??= AliasEntityIdBuilder();
  set singleEntity(covariant AliasEntityIdBuilder? singleEntity) =>
      _$this._singleEntity = singleEntity;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  StateEntityOwnerFilterBuilder() {
    StateEntityOwnerFilter._defaults(this);
  }

  StateEntityOwnerFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultStateEntity = $v.defaultStateEntity?.toBuilder();
      _singleEntity = $v.singleEntity?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant StateEntityOwnerFilter other) {
    _$v = other as _$StateEntityOwnerFilter;
  }

  @override
  void update(void Function(StateEntityOwnerFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StateEntityOwnerFilter build() => _build();

  _$StateEntityOwnerFilter _build() {
    _$StateEntityOwnerFilter _$result;
    try {
      _$result =
          _$v ??
          _$StateEntityOwnerFilter._(
            defaultStateEntity: _defaultStateEntity?.build(),
            singleEntity: _singleEntity?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'StateEntityOwnerFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'defaultStateEntity';
        _defaultStateEntity?.build();
        _$failedField = 'singleEntity';
        _singleEntity?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StateEntityOwnerFilter',
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
