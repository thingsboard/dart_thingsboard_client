// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_entity_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StateEntityFilter extends StateEntityFilter {
  @override
  final AliasEntityId? defaultStateEntity;
  @override
  final String type;

  factory _$StateEntityFilter([
    void Function(StateEntityFilterBuilder)? updates,
  ]) => (StateEntityFilterBuilder()..update(updates))._build();

  _$StateEntityFilter._({this.defaultStateEntity, required this.type})
    : super._();
  @override
  StateEntityFilter rebuild(void Function(StateEntityFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StateEntityFilterBuilder toBuilder() =>
      StateEntityFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StateEntityFilter &&
        defaultStateEntity == other.defaultStateEntity &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultStateEntity.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StateEntityFilter')
          ..add('defaultStateEntity', defaultStateEntity)
          ..add('type', type))
        .toString();
  }
}

class StateEntityFilterBuilder
    implements
        Builder<StateEntityFilter, StateEntityFilterBuilder>,
        EntityFilterBuilder {
  _$StateEntityFilter? _$v;

  AliasEntityIdBuilder? _defaultStateEntity;
  AliasEntityIdBuilder get defaultStateEntity =>
      _$this._defaultStateEntity ??= AliasEntityIdBuilder();
  set defaultStateEntity(covariant AliasEntityIdBuilder? defaultStateEntity) =>
      _$this._defaultStateEntity = defaultStateEntity;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  StateEntityFilterBuilder() {
    StateEntityFilter._defaults(this);
  }

  StateEntityFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultStateEntity = $v.defaultStateEntity?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant StateEntityFilter other) {
    _$v = other as _$StateEntityFilter;
  }

  @override
  void update(void Function(StateEntityFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StateEntityFilter build() => _build();

  _$StateEntityFilter _build() {
    _$StateEntityFilter _$result;
    try {
      _$result =
          _$v ??
          _$StateEntityFilter._(
            defaultStateEntity: _defaultStateEntity?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'StateEntityFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'defaultStateEntity';
        _defaultStateEntity?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StateEntityFilter',
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
