// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation_path_query_dynamic_source_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RelationPathQueryDynamicSourceConfiguration
    extends RelationPathQueryDynamicSourceConfiguration {
  @override
  final BuiltList<RelationPathLevel>? levels;
  @override
  final String type;

  factory _$RelationPathQueryDynamicSourceConfiguration([
    void Function(RelationPathQueryDynamicSourceConfigurationBuilder)? updates,
  ]) => (RelationPathQueryDynamicSourceConfigurationBuilder()..update(updates))
      ._build();

  _$RelationPathQueryDynamicSourceConfiguration._({
    this.levels,
    required this.type,
  }) : super._();
  @override
  RelationPathQueryDynamicSourceConfiguration rebuild(
    void Function(RelationPathQueryDynamicSourceConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RelationPathQueryDynamicSourceConfigurationBuilder toBuilder() =>
      RelationPathQueryDynamicSourceConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationPathQueryDynamicSourceConfiguration &&
        levels == other.levels &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, levels.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RelationPathQueryDynamicSourceConfiguration',
          )
          ..add('levels', levels)
          ..add('type', type))
        .toString();
  }
}

class RelationPathQueryDynamicSourceConfigurationBuilder
    implements
        Builder<
          RelationPathQueryDynamicSourceConfiguration,
          RelationPathQueryDynamicSourceConfigurationBuilder
        >,
        CfArgumentDynamicSourceConfigurationBuilder {
  _$RelationPathQueryDynamicSourceConfiguration? _$v;

  ListBuilder<RelationPathLevel>? _levels;
  ListBuilder<RelationPathLevel> get levels =>
      _$this._levels ??= ListBuilder<RelationPathLevel>();
  set levels(covariant ListBuilder<RelationPathLevel>? levels) =>
      _$this._levels = levels;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  RelationPathQueryDynamicSourceConfigurationBuilder() {
    RelationPathQueryDynamicSourceConfiguration._defaults(this);
  }

  RelationPathQueryDynamicSourceConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _levels = $v.levels?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RelationPathQueryDynamicSourceConfiguration other) {
    _$v = other as _$RelationPathQueryDynamicSourceConfiguration;
  }

  @override
  void update(
    void Function(RelationPathQueryDynamicSourceConfigurationBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RelationPathQueryDynamicSourceConfiguration build() => _build();

  _$RelationPathQueryDynamicSourceConfiguration _build() {
    _$RelationPathQueryDynamicSourceConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$RelationPathQueryDynamicSourceConfiguration._(
            levels: _levels?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'RelationPathQueryDynamicSourceConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'levels';
        _levels?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RelationPathQueryDynamicSourceConfiguration',
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
