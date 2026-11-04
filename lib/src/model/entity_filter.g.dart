// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class EntityFilterBuilder {
  void replace(EntityFilter other);
  void update(void Function(EntityFilterBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$EntityFilter extends $EntityFilter {
  @override
  final String type;

  factory _$$EntityFilter([void Function($EntityFilterBuilder)? updates]) =>
      ($EntityFilterBuilder()..update(updates))._build();

  _$$EntityFilter._({required this.type}) : super._();
  @override
  $EntityFilter rebuild(void Function($EntityFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $EntityFilterBuilder toBuilder() => $EntityFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $EntityFilter && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$EntityFilter',
    )..add('type', type)).toString();
  }
}

class $EntityFilterBuilder
    implements
        Builder<$EntityFilter, $EntityFilterBuilder>,
        EntityFilterBuilder {
  _$$EntityFilter? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $EntityFilterBuilder() {
    $EntityFilter._defaults(this);
  }

  $EntityFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $EntityFilter other) {
    _$v = other as _$$EntityFilter;
  }

  @override
  void update(void Function($EntityFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $EntityFilter build() => _build();

  _$$EntityFilter _build() {
    final _$result =
        _$v ??
        _$$EntityFilter._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$EntityFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
