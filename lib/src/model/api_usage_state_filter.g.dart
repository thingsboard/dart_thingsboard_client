// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_usage_state_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiUsageStateFilter extends ApiUsageStateFilter {
  @override
  final CustomerId? customerId;
  @override
  final String type;

  factory _$ApiUsageStateFilter([
    void Function(ApiUsageStateFilterBuilder)? updates,
  ]) => (ApiUsageStateFilterBuilder()..update(updates))._build();

  _$ApiUsageStateFilter._({this.customerId, required this.type}) : super._();
  @override
  ApiUsageStateFilter rebuild(
    void Function(ApiUsageStateFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiUsageStateFilterBuilder toBuilder() =>
      ApiUsageStateFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiUsageStateFilter &&
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
    return (newBuiltValueToStringHelper(r'ApiUsageStateFilter')
          ..add('customerId', customerId)
          ..add('type', type))
        .toString();
  }
}

class ApiUsageStateFilterBuilder
    implements
        Builder<ApiUsageStateFilter, ApiUsageStateFilterBuilder>,
        EntityFilterBuilder {
  _$ApiUsageStateFilter? _$v;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(covariant CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  ApiUsageStateFilterBuilder() {
    ApiUsageStateFilter._defaults(this);
  }

  ApiUsageStateFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ApiUsageStateFilter other) {
    _$v = other as _$ApiUsageStateFilter;
  }

  @override
  void update(void Function(ApiUsageStateFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiUsageStateFilter build() => _build();

  _$ApiUsageStateFilter _build() {
    _$ApiUsageStateFilter _$result;
    try {
      _$result =
          _$v ??
          _$ApiUsageStateFilter._(
            customerId: _customerId?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ApiUsageStateFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customerId';
        _customerId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ApiUsageStateFilter',
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
