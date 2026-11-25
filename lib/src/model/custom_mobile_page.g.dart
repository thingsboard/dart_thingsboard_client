// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_mobile_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomMobilePage extends CustomMobilePage {
  @override
  final String? path;
  @override
  final String? icon;
  @override
  final String? label;
  @override
  final MobilePageType type;
  @override
  final bool? visible;

  factory _$CustomMobilePage([
    void Function(CustomMobilePageBuilder)? updates,
  ]) => (CustomMobilePageBuilder()..update(updates))._build();

  _$CustomMobilePage._({
    this.path,
    this.icon,
    this.label,
    required this.type,
    this.visible,
  }) : super._();
  @override
  CustomMobilePage rebuild(void Function(CustomMobilePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomMobilePageBuilder toBuilder() =>
      CustomMobilePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomMobilePage &&
        path == other.path &&
        icon == other.icon &&
        label == other.label &&
        type == other.type &&
        visible == other.visible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomMobilePage')
          ..add('path', path)
          ..add('icon', icon)
          ..add('label', label)
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class CustomMobilePageBuilder
    implements
        Builder<CustomMobilePage, CustomMobilePageBuilder>,
        MobilePageBuilder {
  _$CustomMobilePage? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(covariant String? path) => _$this._path = path;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(covariant String? icon) => _$this._icon = icon;

  String? _label;
  String? get label => _$this._label;
  set label(covariant String? label) => _$this._label = label;

  MobilePageType? _type;
  MobilePageType? get type => _$this._type;
  set type(covariant MobilePageType? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  CustomMobilePageBuilder() {
    CustomMobilePage._defaults(this);
  }

  CustomMobilePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _icon = $v.icon;
      _label = $v.label;
      _type = $v.type;
      _visible = $v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CustomMobilePage other) {
    _$v = other as _$CustomMobilePage;
  }

  @override
  void update(void Function(CustomMobilePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomMobilePage build() => _build();

  _$CustomMobilePage _build() {
    final _$result =
        _$v ??
        _$CustomMobilePage._(
          path: path,
          icon: icon,
          label: label,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'CustomMobilePage',
            'type',
          ),
          visible: visible,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
