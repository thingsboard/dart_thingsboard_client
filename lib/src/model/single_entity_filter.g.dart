// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_entity_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SingleEntityFilter extends SingleEntityFilter {
  @override
  final AliasEntityId? singleEntity;
  @override
  final String type;

  factory _$SingleEntityFilter([
    void Function(SingleEntityFilterBuilder)? updates,
  ]) => (SingleEntityFilterBuilder()..update(updates))._build();

  _$SingleEntityFilter._({this.singleEntity, required this.type}) : super._();
  @override
  SingleEntityFilter rebuild(
    void Function(SingleEntityFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SingleEntityFilterBuilder toBuilder() =>
      SingleEntityFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SingleEntityFilter &&
        singleEntity == other.singleEntity &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, singleEntity.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SingleEntityFilter')
          ..add('singleEntity', singleEntity)
          ..add('type', type))
        .toString();
  }
}

class SingleEntityFilterBuilder
    implements
        Builder<SingleEntityFilter, SingleEntityFilterBuilder>,
        EntityFilterBuilder {
  _$SingleEntityFilter? _$v;

  AliasEntityIdBuilder? _singleEntity;
  AliasEntityIdBuilder get singleEntity =>
      _$this._singleEntity ??= AliasEntityIdBuilder();
  set singleEntity(covariant AliasEntityIdBuilder? singleEntity) =>
      _$this._singleEntity = singleEntity;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  SingleEntityFilterBuilder() {
    SingleEntityFilter._defaults(this);
  }

  SingleEntityFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _singleEntity = $v.singleEntity?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SingleEntityFilter other) {
    _$v = other as _$SingleEntityFilter;
  }

  @override
  void update(void Function(SingleEntityFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SingleEntityFilter build() => _build();

  _$SingleEntityFilter _build() {
    _$SingleEntityFilter _$result;
    try {
      _$result =
          _$v ??
          _$SingleEntityFilter._(
            singleEntity: _singleEntity?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SingleEntityFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'singleEntity';
        _singleEntity?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SingleEntityFilter',
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
