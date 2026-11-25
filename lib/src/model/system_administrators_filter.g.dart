// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_administrators_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemAdministratorsFilter extends SystemAdministratorsFilter {
  @override
  final String type;

  factory _$SystemAdministratorsFilter([
    void Function(SystemAdministratorsFilterBuilder)? updates,
  ]) => (SystemAdministratorsFilterBuilder()..update(updates))._build();

  _$SystemAdministratorsFilter._({required this.type}) : super._();
  @override
  SystemAdministratorsFilter rebuild(
    void Function(SystemAdministratorsFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SystemAdministratorsFilterBuilder toBuilder() =>
      SystemAdministratorsFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemAdministratorsFilter && type == other.type;
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
      r'SystemAdministratorsFilter',
    )..add('type', type)).toString();
  }
}

class SystemAdministratorsFilterBuilder
    implements
        Builder<SystemAdministratorsFilter, SystemAdministratorsFilterBuilder>,
        UsersFilterBuilder {
  _$SystemAdministratorsFilter? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  SystemAdministratorsFilterBuilder() {
    SystemAdministratorsFilter._defaults(this);
  }

  SystemAdministratorsFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SystemAdministratorsFilter other) {
    _$v = other as _$SystemAdministratorsFilter;
  }

  @override
  void update(void Function(SystemAdministratorsFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemAdministratorsFilter build() => _build();

  _$SystemAdministratorsFilter _build() {
    final _$result =
        _$v ??
        _$SystemAdministratorsFilter._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'SystemAdministratorsFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
