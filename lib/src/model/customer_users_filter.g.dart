// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_users_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerUsersFilter extends CustomerUsersFilter {
  @override
  final String customerId;
  @override
  final String type;

  factory _$CustomerUsersFilter([
    void Function(CustomerUsersFilterBuilder)? updates,
  ]) => (CustomerUsersFilterBuilder()..update(updates))._build();

  _$CustomerUsersFilter._({required this.customerId, required this.type})
    : super._();
  @override
  CustomerUsersFilter rebuild(
    void Function(CustomerUsersFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomerUsersFilterBuilder toBuilder() =>
      CustomerUsersFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerUsersFilter &&
        customerId == other.customerId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerUsersFilter')
          ..add('customerId', customerId)
          ..add('type', type))
        .toString();
  }
}

class CustomerUsersFilterBuilder
    implements
        Builder<CustomerUsersFilter, CustomerUsersFilterBuilder>,
        UsersFilterBuilder {
  _$CustomerUsersFilter? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(covariant String? customerId) =>
      _$this._customerId = customerId;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  CustomerUsersFilterBuilder() {
    CustomerUsersFilter._defaults(this);
  }

  CustomerUsersFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CustomerUsersFilter other) {
    _$v = other as _$CustomerUsersFilter;
  }

  @override
  void update(void Function(CustomerUsersFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerUsersFilter build() => _build();

  _$CustomerUsersFilter _build() {
    final _$result =
        _$v ??
        _$CustomerUsersFilter._(
          customerId: BuiltValueNullFieldError.checkNotNull(
            customerId,
            r'CustomerUsersFilter',
            'customerId',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'CustomerUsersFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
