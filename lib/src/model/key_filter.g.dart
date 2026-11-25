// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeyFilter extends KeyFilter {
  @override
  final EntityKey? key;
  @override
  final EntityKeyValueType? valueType;
  @override
  final KeyFilterPredicate? predicate;

  factory _$KeyFilter([void Function(KeyFilterBuilder)? updates]) =>
      (KeyFilterBuilder()..update(updates))._build();

  _$KeyFilter._({this.key, this.valueType, this.predicate}) : super._();
  @override
  KeyFilter rebuild(void Function(KeyFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyFilterBuilder toBuilder() => KeyFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyFilter &&
        key == other.key &&
        valueType == other.valueType &&
        predicate == other.predicate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, valueType.hashCode);
    _$hash = $jc(_$hash, predicate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeyFilter')
          ..add('key', key)
          ..add('valueType', valueType)
          ..add('predicate', predicate))
        .toString();
  }
}

class KeyFilterBuilder implements Builder<KeyFilter, KeyFilterBuilder> {
  _$KeyFilter? _$v;

  EntityKeyBuilder? _key;
  EntityKeyBuilder get key => _$this._key ??= EntityKeyBuilder();
  set key(EntityKeyBuilder? key) => _$this._key = key;

  EntityKeyValueType? _valueType;
  EntityKeyValueType? get valueType => _$this._valueType;
  set valueType(EntityKeyValueType? valueType) => _$this._valueType = valueType;

  KeyFilterPredicate? _predicate;
  KeyFilterPredicate? get predicate => _$this._predicate;
  set predicate(KeyFilterPredicate? predicate) => _$this._predicate = predicate;

  KeyFilterBuilder() {
    KeyFilter._defaults(this);
  }

  KeyFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key?.toBuilder();
      _valueType = $v.valueType;
      _predicate = $v.predicate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeyFilter other) {
    _$v = other as _$KeyFilter;
  }

  @override
  void update(void Function(KeyFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyFilter build() => _build();

  _$KeyFilter _build() {
    _$KeyFilter _$result;
    try {
      _$result =
          _$v ??
          _$KeyFilter._(
            key: _key?.build(),
            valueType: valueType,
            predicate: predicate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        _key?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'KeyFilter',
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
