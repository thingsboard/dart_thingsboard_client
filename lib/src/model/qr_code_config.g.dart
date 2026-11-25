// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QRCodeConfig extends QRCodeConfig {
  @override
  final bool? showOnHomePage;
  @override
  final bool? badgeEnabled;
  @override
  final bool? qrCodeLabelEnabled;
  @override
  final BadgePosition? badgePosition;
  @override
  final String? qrCodeLabel;

  factory _$QRCodeConfig([void Function(QRCodeConfigBuilder)? updates]) =>
      (QRCodeConfigBuilder()..update(updates))._build();

  _$QRCodeConfig._({
    this.showOnHomePage,
    this.badgeEnabled,
    this.qrCodeLabelEnabled,
    this.badgePosition,
    this.qrCodeLabel,
  }) : super._();
  @override
  QRCodeConfig rebuild(void Function(QRCodeConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QRCodeConfigBuilder toBuilder() => QRCodeConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QRCodeConfig &&
        showOnHomePage == other.showOnHomePage &&
        badgeEnabled == other.badgeEnabled &&
        qrCodeLabelEnabled == other.qrCodeLabelEnabled &&
        badgePosition == other.badgePosition &&
        qrCodeLabel == other.qrCodeLabel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showOnHomePage.hashCode);
    _$hash = $jc(_$hash, badgeEnabled.hashCode);
    _$hash = $jc(_$hash, qrCodeLabelEnabled.hashCode);
    _$hash = $jc(_$hash, badgePosition.hashCode);
    _$hash = $jc(_$hash, qrCodeLabel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QRCodeConfig')
          ..add('showOnHomePage', showOnHomePage)
          ..add('badgeEnabled', badgeEnabled)
          ..add('qrCodeLabelEnabled', qrCodeLabelEnabled)
          ..add('badgePosition', badgePosition)
          ..add('qrCodeLabel', qrCodeLabel))
        .toString();
  }
}

class QRCodeConfigBuilder
    implements Builder<QRCodeConfig, QRCodeConfigBuilder> {
  _$QRCodeConfig? _$v;

  bool? _showOnHomePage;
  bool? get showOnHomePage => _$this._showOnHomePage;
  set showOnHomePage(bool? showOnHomePage) =>
      _$this._showOnHomePage = showOnHomePage;

  bool? _badgeEnabled;
  bool? get badgeEnabled => _$this._badgeEnabled;
  set badgeEnabled(bool? badgeEnabled) => _$this._badgeEnabled = badgeEnabled;

  bool? _qrCodeLabelEnabled;
  bool? get qrCodeLabelEnabled => _$this._qrCodeLabelEnabled;
  set qrCodeLabelEnabled(bool? qrCodeLabelEnabled) =>
      _$this._qrCodeLabelEnabled = qrCodeLabelEnabled;

  BadgePosition? _badgePosition;
  BadgePosition? get badgePosition => _$this._badgePosition;
  set badgePosition(BadgePosition? badgePosition) =>
      _$this._badgePosition = badgePosition;

  String? _qrCodeLabel;
  String? get qrCodeLabel => _$this._qrCodeLabel;
  set qrCodeLabel(String? qrCodeLabel) => _$this._qrCodeLabel = qrCodeLabel;

  QRCodeConfigBuilder() {
    QRCodeConfig._defaults(this);
  }

  QRCodeConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showOnHomePage = $v.showOnHomePage;
      _badgeEnabled = $v.badgeEnabled;
      _qrCodeLabelEnabled = $v.qrCodeLabelEnabled;
      _badgePosition = $v.badgePosition;
      _qrCodeLabel = $v.qrCodeLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QRCodeConfig other) {
    _$v = other as _$QRCodeConfig;
  }

  @override
  void update(void Function(QRCodeConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QRCodeConfig build() => _build();

  _$QRCodeConfig _build() {
    final _$result =
        _$v ??
        _$QRCodeConfig._(
          showOnHomePage: showOnHomePage,
          badgeEnabled: badgeEnabled,
          qrCodeLabelEnabled: qrCodeLabelEnabled,
          badgePosition: badgePosition,
          qrCodeLabel: qrCodeLabel,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
