// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'features_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FeaturesInfo extends FeaturesInfo {
  @override
  final bool? whiteLabelingEnabled;
  @override
  final bool? emailEnabled;
  @override
  final bool? smsEnabled;
  @override
  final bool? notificationEnabled;
  @override
  final bool? oauthEnabled;
  @override
  final bool? twoFaEnabled;

  factory _$FeaturesInfo([void Function(FeaturesInfoBuilder)? updates]) =>
      (FeaturesInfoBuilder()..update(updates))._build();

  _$FeaturesInfo._({
    this.whiteLabelingEnabled,
    this.emailEnabled,
    this.smsEnabled,
    this.notificationEnabled,
    this.oauthEnabled,
    this.twoFaEnabled,
  }) : super._();
  @override
  FeaturesInfo rebuild(void Function(FeaturesInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeaturesInfoBuilder toBuilder() => FeaturesInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeaturesInfo &&
        whiteLabelingEnabled == other.whiteLabelingEnabled &&
        emailEnabled == other.emailEnabled &&
        smsEnabled == other.smsEnabled &&
        notificationEnabled == other.notificationEnabled &&
        oauthEnabled == other.oauthEnabled &&
        twoFaEnabled == other.twoFaEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, whiteLabelingEnabled.hashCode);
    _$hash = $jc(_$hash, emailEnabled.hashCode);
    _$hash = $jc(_$hash, smsEnabled.hashCode);
    _$hash = $jc(_$hash, notificationEnabled.hashCode);
    _$hash = $jc(_$hash, oauthEnabled.hashCode);
    _$hash = $jc(_$hash, twoFaEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeaturesInfo')
          ..add('whiteLabelingEnabled', whiteLabelingEnabled)
          ..add('emailEnabled', emailEnabled)
          ..add('smsEnabled', smsEnabled)
          ..add('notificationEnabled', notificationEnabled)
          ..add('oauthEnabled', oauthEnabled)
          ..add('twoFaEnabled', twoFaEnabled))
        .toString();
  }
}

class FeaturesInfoBuilder
    implements Builder<FeaturesInfo, FeaturesInfoBuilder> {
  _$FeaturesInfo? _$v;

  bool? _whiteLabelingEnabled;
  bool? get whiteLabelingEnabled => _$this._whiteLabelingEnabled;
  set whiteLabelingEnabled(bool? whiteLabelingEnabled) =>
      _$this._whiteLabelingEnabled = whiteLabelingEnabled;

  bool? _emailEnabled;
  bool? get emailEnabled => _$this._emailEnabled;
  set emailEnabled(bool? emailEnabled) => _$this._emailEnabled = emailEnabled;

  bool? _smsEnabled;
  bool? get smsEnabled => _$this._smsEnabled;
  set smsEnabled(bool? smsEnabled) => _$this._smsEnabled = smsEnabled;

  bool? _notificationEnabled;
  bool? get notificationEnabled => _$this._notificationEnabled;
  set notificationEnabled(bool? notificationEnabled) =>
      _$this._notificationEnabled = notificationEnabled;

  bool? _oauthEnabled;
  bool? get oauthEnabled => _$this._oauthEnabled;
  set oauthEnabled(bool? oauthEnabled) => _$this._oauthEnabled = oauthEnabled;

  bool? _twoFaEnabled;
  bool? get twoFaEnabled => _$this._twoFaEnabled;
  set twoFaEnabled(bool? twoFaEnabled) => _$this._twoFaEnabled = twoFaEnabled;

  FeaturesInfoBuilder() {
    FeaturesInfo._defaults(this);
  }

  FeaturesInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _whiteLabelingEnabled = $v.whiteLabelingEnabled;
      _emailEnabled = $v.emailEnabled;
      _smsEnabled = $v.smsEnabled;
      _notificationEnabled = $v.notificationEnabled;
      _oauthEnabled = $v.oauthEnabled;
      _twoFaEnabled = $v.twoFaEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeaturesInfo other) {
    _$v = other as _$FeaturesInfo;
  }

  @override
  void update(void Function(FeaturesInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeaturesInfo build() => _build();

  _$FeaturesInfo _build() {
    final _$result =
        _$v ??
        _$FeaturesInfo._(
          whiteLabelingEnabled: whiteLabelingEnabled,
          emailEnabled: emailEnabled,
          smsEnabled: smsEnabled,
          notificationEnabled: notificationEnabled,
          oauthEnabled: oauthEnabled,
          twoFaEnabled: twoFaEnabled,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
