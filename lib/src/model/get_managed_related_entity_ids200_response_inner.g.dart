// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_managed_related_entity_ids200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetManagedRelatedEntityIds200ResponseInner
    extends GetManagedRelatedEntityIds200ResponseInner {
  @override
  final OneOf oneOf;

  factory _$GetManagedRelatedEntityIds200ResponseInner([
    void Function(GetManagedRelatedEntityIds200ResponseInnerBuilder)? updates,
  ]) => (GetManagedRelatedEntityIds200ResponseInnerBuilder()..update(updates))
      ._build();

  _$GetManagedRelatedEntityIds200ResponseInner._({required this.oneOf})
    : super._();
  @override
  GetManagedRelatedEntityIds200ResponseInner rebuild(
    void Function(GetManagedRelatedEntityIds200ResponseInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetManagedRelatedEntityIds200ResponseInnerBuilder toBuilder() =>
      GetManagedRelatedEntityIds200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetManagedRelatedEntityIds200ResponseInner &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GetManagedRelatedEntityIds200ResponseInner',
    )..add('oneOf', oneOf)).toString();
  }
}

class GetManagedRelatedEntityIds200ResponseInnerBuilder
    implements
        Builder<
          GetManagedRelatedEntityIds200ResponseInner,
          GetManagedRelatedEntityIds200ResponseInnerBuilder
        > {
  _$GetManagedRelatedEntityIds200ResponseInner? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  GetManagedRelatedEntityIds200ResponseInnerBuilder() {
    GetManagedRelatedEntityIds200ResponseInner._defaults(this);
  }

  GetManagedRelatedEntityIds200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetManagedRelatedEntityIds200ResponseInner other) {
    _$v = other as _$GetManagedRelatedEntityIds200ResponseInner;
  }

  @override
  void update(
    void Function(GetManagedRelatedEntityIds200ResponseInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetManagedRelatedEntityIds200ResponseInner build() => _build();

  _$GetManagedRelatedEntityIds200ResponseInner _build() {
    final _$result =
        _$v ??
        _$GetManagedRelatedEntityIds200ResponseInner._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'GetManagedRelatedEntityIds200ResponseInner',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
