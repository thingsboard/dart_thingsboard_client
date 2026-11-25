// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_filter_predicate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class KeyFilterPredicateBuilder {
  void replace(KeyFilterPredicate other);
  void update(void Function(KeyFilterPredicateBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$KeyFilterPredicate extends $KeyFilterPredicate {
  @override
  final String type;

  factory _$$KeyFilterPredicate([
    void Function($KeyFilterPredicateBuilder)? updates,
  ]) => ($KeyFilterPredicateBuilder()..update(updates))._build();

  _$$KeyFilterPredicate._({required this.type}) : super._();
  @override
  $KeyFilterPredicate rebuild(
    void Function($KeyFilterPredicateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $KeyFilterPredicateBuilder toBuilder() =>
      $KeyFilterPredicateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $KeyFilterPredicate && type == other.type;
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
      r'$KeyFilterPredicate',
    )..add('type', type)).toString();
  }
}

class $KeyFilterPredicateBuilder
    implements
        Builder<$KeyFilterPredicate, $KeyFilterPredicateBuilder>,
        KeyFilterPredicateBuilder {
  _$$KeyFilterPredicate? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $KeyFilterPredicateBuilder() {
    $KeyFilterPredicate._defaults(this);
  }

  $KeyFilterPredicateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $KeyFilterPredicate other) {
    _$v = other as _$$KeyFilterPredicate;
  }

  @override
  void update(void Function($KeyFilterPredicateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $KeyFilterPredicate build() => _build();

  _$$KeyFilterPredicate _build() {
    final _$result =
        _$v ??
        _$$KeyFilterPredicate._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$KeyFilterPredicate',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
