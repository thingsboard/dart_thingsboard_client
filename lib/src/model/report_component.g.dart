// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class ReportComponentBuilder {
  void replace(ReportComponent other);
  void update(void Function(ReportComponentBuilder) updates);
  ReportComponentSubType? get subType;
  set subType(ReportComponentSubType? subType);

  ReportComponentType? get type;
  set type(ReportComponentType? type);
}

class _$$ReportComponent extends $ReportComponent {
  @override
  final ReportComponentSubType subType;
  @override
  final ReportComponentType type;

  factory _$$ReportComponent([
    void Function($ReportComponentBuilder)? updates,
  ]) => ($ReportComponentBuilder()..update(updates))._build();

  _$$ReportComponent._({required this.subType, required this.type}) : super._();
  @override
  $ReportComponent rebuild(void Function($ReportComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ReportComponentBuilder toBuilder() =>
      $ReportComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ReportComponent &&
        subType == other.subType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ReportComponent')
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class $ReportComponentBuilder
    implements
        Builder<$ReportComponent, $ReportComponentBuilder>,
        ReportComponentBuilder {
  _$$ReportComponent? _$v;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  $ReportComponentBuilder() {
    $ReportComponent._defaults(this);
  }

  $ReportComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ReportComponent other) {
    _$v = other as _$$ReportComponent;
  }

  @override
  void update(void Function($ReportComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ReportComponent build() => _build();

  _$$ReportComponent _build() {
    final _$result =
        _$v ??
        _$$ReportComponent._(
          subType: BuiltValueNullFieldError.checkNotNull(
            subType,
            r'$ReportComponent',
            'subType',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$ReportComponent',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
