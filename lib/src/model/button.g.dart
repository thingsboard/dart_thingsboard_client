// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Button extends Button {
  @override
  final bool? enabled;
  @override
  final String? text;
  @override
  final LinkType? linkType;
  @override
  final String? link;
  @override
  final String? dashboardId;
  @override
  final String? dashboardState;
  @override
  final bool? setEntityIdInState;

  factory _$Button([void Function(ButtonBuilder)? updates]) =>
      (ButtonBuilder()..update(updates))._build();

  _$Button._({
    this.enabled,
    this.text,
    this.linkType,
    this.link,
    this.dashboardId,
    this.dashboardState,
    this.setEntityIdInState,
  }) : super._();
  @override
  Button rebuild(void Function(ButtonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ButtonBuilder toBuilder() => ButtonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Button &&
        enabled == other.enabled &&
        text == other.text &&
        linkType == other.linkType &&
        link == other.link &&
        dashboardId == other.dashboardId &&
        dashboardState == other.dashboardState &&
        setEntityIdInState == other.setEntityIdInState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, linkType.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, dashboardState.hashCode);
    _$hash = $jc(_$hash, setEntityIdInState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Button')
          ..add('enabled', enabled)
          ..add('text', text)
          ..add('linkType', linkType)
          ..add('link', link)
          ..add('dashboardId', dashboardId)
          ..add('dashboardState', dashboardState)
          ..add('setEntityIdInState', setEntityIdInState))
        .toString();
  }
}

class ButtonBuilder implements Builder<Button, ButtonBuilder> {
  _$Button? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  LinkType? _linkType;
  LinkType? get linkType => _$this._linkType;
  set linkType(LinkType? linkType) => _$this._linkType = linkType;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _dashboardId;
  String? get dashboardId => _$this._dashboardId;
  set dashboardId(String? dashboardId) => _$this._dashboardId = dashboardId;

  String? _dashboardState;
  String? get dashboardState => _$this._dashboardState;
  set dashboardState(String? dashboardState) =>
      _$this._dashboardState = dashboardState;

  bool? _setEntityIdInState;
  bool? get setEntityIdInState => _$this._setEntityIdInState;
  set setEntityIdInState(bool? setEntityIdInState) =>
      _$this._setEntityIdInState = setEntityIdInState;

  ButtonBuilder() {
    Button._defaults(this);
  }

  ButtonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _text = $v.text;
      _linkType = $v.linkType;
      _link = $v.link;
      _dashboardId = $v.dashboardId;
      _dashboardState = $v.dashboardState;
      _setEntityIdInState = $v.setEntityIdInState;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Button other) {
    _$v = other as _$Button;
  }

  @override
  void update(void Function(ButtonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Button build() => _build();

  _$Button _build() {
    final _$result =
        _$v ??
        _$Button._(
          enabled: enabled,
          text: text,
          linkType: linkType,
          link: link,
          dashboardId: dashboardId,
          dashboardState: dashboardState,
          setEntityIdInState: setEntityIdInState,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
