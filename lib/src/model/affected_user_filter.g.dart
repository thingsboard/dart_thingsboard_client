// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affected_user_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AffectedUserFilter extends AffectedUserFilter {
  @override
  final String type;

  factory _$AffectedUserFilter([
    void Function(AffectedUserFilterBuilder)? updates,
  ]) => (AffectedUserFilterBuilder()..update(updates))._build();

  _$AffectedUserFilter._({required this.type}) : super._();
  @override
  AffectedUserFilter rebuild(
    void Function(AffectedUserFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AffectedUserFilterBuilder toBuilder() =>
      AffectedUserFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AffectedUserFilter && type == other.type;
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
      r'AffectedUserFilter',
    )..add('type', type)).toString();
  }
}

class AffectedUserFilterBuilder
    implements
        Builder<AffectedUserFilter, AffectedUserFilterBuilder>,
        UsersFilterBuilder {
  _$AffectedUserFilter? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AffectedUserFilterBuilder() {
    AffectedUserFilter._defaults(this);
  }

  AffectedUserFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AffectedUserFilter other) {
    _$v = other as _$AffectedUserFilter;
  }

  @override
  void update(void Function(AffectedUserFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AffectedUserFilter build() => _build();

  _$AffectedUserFilter _build() {
    final _$result =
        _$v ??
        _$AffectedUserFilter._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AffectedUserFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
