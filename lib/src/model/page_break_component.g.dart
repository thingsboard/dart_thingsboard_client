// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_break_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageBreakComponent extends PageBreakComponent {
  @override
  final ReportComponentSubType? subType;
  @override
  final ReportComponentType type;

  factory _$PageBreakComponent([
    void Function(PageBreakComponentBuilder)? updates,
  ]) => (PageBreakComponentBuilder()..update(updates))._build();

  _$PageBreakComponent._({this.subType, required this.type}) : super._();
  @override
  PageBreakComponent rebuild(
    void Function(PageBreakComponentBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PageBreakComponentBuilder toBuilder() =>
      PageBreakComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageBreakComponent &&
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
    return (newBuiltValueToStringHelper(r'PageBreakComponent')
          ..add('subType', subType)
          ..add('type', type))
        .toString();
  }
}

class PageBreakComponentBuilder
    implements
        Builder<PageBreakComponent, PageBreakComponentBuilder>,
        ReportComponentBuilder {
  _$PageBreakComponent? _$v;

  ReportComponentSubType? _subType;
  ReportComponentSubType? get subType => _$this._subType;
  set subType(covariant ReportComponentSubType? subType) =>
      _$this._subType = subType;

  ReportComponentType? _type;
  ReportComponentType? get type => _$this._type;
  set type(covariant ReportComponentType? type) => _$this._type = type;

  PageBreakComponentBuilder() {
    PageBreakComponent._defaults(this);
  }

  PageBreakComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subType = $v.subType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PageBreakComponent other) {
    _$v = other as _$PageBreakComponent;
  }

  @override
  void update(void Function(PageBreakComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageBreakComponent build() => _build();

  _$PageBreakComponent _build() {
    final _$result =
        _$v ??
        _$PageBreakComponent._(
          subType: subType,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'PageBreakComponent',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
