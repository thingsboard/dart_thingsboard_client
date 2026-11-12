// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_view_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebViewPage extends WebViewPage {
  @override
  final String? icon;
  @override
  final String? label;
  @override
  final String? url;
  @override
  final MobilePageType type;
  @override
  final bool? visible;

  factory _$WebViewPage([void Function(WebViewPageBuilder)? updates]) =>
      (WebViewPageBuilder()..update(updates))._build();

  _$WebViewPage._({
    this.icon,
    this.label,
    this.url,
    required this.type,
    this.visible,
  }) : super._();
  @override
  WebViewPage rebuild(void Function(WebViewPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebViewPageBuilder toBuilder() => WebViewPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebViewPage &&
        icon == other.icon &&
        label == other.label &&
        url == other.url &&
        type == other.type &&
        visible == other.visible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebViewPage')
          ..add('icon', icon)
          ..add('label', label)
          ..add('url', url)
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class WebViewPageBuilder
    implements Builder<WebViewPage, WebViewPageBuilder>, MobilePageBuilder {
  _$WebViewPage? _$v;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(covariant String? icon) => _$this._icon = icon;

  String? _label;
  String? get label => _$this._label;
  set label(covariant String? label) => _$this._label = label;

  String? _url;
  String? get url => _$this._url;
  set url(covariant String? url) => _$this._url = url;

  MobilePageType? _type;
  MobilePageType? get type => _$this._type;
  set type(covariant MobilePageType? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  WebViewPageBuilder() {
    WebViewPage._defaults(this);
  }

  WebViewPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _icon = $v.icon;
      _label = $v.label;
      _url = $v.url;
      _type = $v.type;
      _visible = $v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant WebViewPage other) {
    _$v = other as _$WebViewPage;
  }

  @override
  void update(void Function(WebViewPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebViewPage build() => _build();

  _$WebViewPage _build() {
    final _$result =
        _$v ??
        _$WebViewPage._(
          icon: icon,
          label: label,
          url: url,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'WebViewPage',
            'type',
          ),
          visible: visible,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
