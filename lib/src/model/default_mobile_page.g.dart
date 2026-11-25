// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_mobile_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultMobilePage extends DefaultMobilePage {
  @override
  final String? icon;
  @override
  final String? label;
  @override
  final DefaultPageId? id;
  @override
  final MobilePageType type;
  @override
  final bool? visible;

  factory _$DefaultMobilePage([
    void Function(DefaultMobilePageBuilder)? updates,
  ]) => (DefaultMobilePageBuilder()..update(updates))._build();

  _$DefaultMobilePage._({
    this.icon,
    this.label,
    this.id,
    required this.type,
    this.visible,
  }) : super._();
  @override
  DefaultMobilePage rebuild(void Function(DefaultMobilePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DefaultMobilePageBuilder toBuilder() =>
      DefaultMobilePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultMobilePage &&
        icon == other.icon &&
        label == other.label &&
        id == other.id &&
        type == other.type &&
        visible == other.visible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DefaultMobilePage')
          ..add('icon', icon)
          ..add('label', label)
          ..add('id', id)
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class DefaultMobilePageBuilder
    implements
        Builder<DefaultMobilePage, DefaultMobilePageBuilder>,
        MobilePageBuilder {
  _$DefaultMobilePage? _$v;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(covariant String? icon) => _$this._icon = icon;

  String? _label;
  String? get label => _$this._label;
  set label(covariant String? label) => _$this._label = label;

  DefaultPageId? _id;
  DefaultPageId? get id => _$this._id;
  set id(covariant DefaultPageId? id) => _$this._id = id;

  MobilePageType? _type;
  MobilePageType? get type => _$this._type;
  set type(covariant MobilePageType? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  DefaultMobilePageBuilder() {
    DefaultMobilePage._defaults(this);
  }

  DefaultMobilePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _icon = $v.icon;
      _label = $v.label;
      _id = $v.id;
      _type = $v.type;
      _visible = $v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DefaultMobilePage other) {
    _$v = other as _$DefaultMobilePage;
  }

  @override
  void update(void Function(DefaultMobilePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefaultMobilePage build() => _build();

  _$DefaultMobilePage _build() {
    final _$result =
        _$v ??
        _$DefaultMobilePage._(
          icon: icon,
          label: label,
          id: id,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DefaultMobilePage',
            'type',
          ),
          visible: visible,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
