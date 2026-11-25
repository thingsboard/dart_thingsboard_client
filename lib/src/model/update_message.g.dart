// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateMessage extends UpdateMessage {
  @override
  final bool? updateAvailable;
  @override
  final String? currentVersion;
  @override
  final String? latestVersion;
  @override
  final String? upgradeInstructionsUrl;
  @override
  final String? currentVersionReleaseNotesUrl;
  @override
  final String? latestVersionReleaseNotesUrl;

  factory _$UpdateMessage([void Function(UpdateMessageBuilder)? updates]) =>
      (UpdateMessageBuilder()..update(updates))._build();

  _$UpdateMessage._({
    this.updateAvailable,
    this.currentVersion,
    this.latestVersion,
    this.upgradeInstructionsUrl,
    this.currentVersionReleaseNotesUrl,
    this.latestVersionReleaseNotesUrl,
  }) : super._();
  @override
  UpdateMessage rebuild(void Function(UpdateMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateMessageBuilder toBuilder() => UpdateMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateMessage &&
        updateAvailable == other.updateAvailable &&
        currentVersion == other.currentVersion &&
        latestVersion == other.latestVersion &&
        upgradeInstructionsUrl == other.upgradeInstructionsUrl &&
        currentVersionReleaseNotesUrl == other.currentVersionReleaseNotesUrl &&
        latestVersionReleaseNotesUrl == other.latestVersionReleaseNotesUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, updateAvailable.hashCode);
    _$hash = $jc(_$hash, currentVersion.hashCode);
    _$hash = $jc(_$hash, latestVersion.hashCode);
    _$hash = $jc(_$hash, upgradeInstructionsUrl.hashCode);
    _$hash = $jc(_$hash, currentVersionReleaseNotesUrl.hashCode);
    _$hash = $jc(_$hash, latestVersionReleaseNotesUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateMessage')
          ..add('updateAvailable', updateAvailable)
          ..add('currentVersion', currentVersion)
          ..add('latestVersion', latestVersion)
          ..add('upgradeInstructionsUrl', upgradeInstructionsUrl)
          ..add('currentVersionReleaseNotesUrl', currentVersionReleaseNotesUrl)
          ..add('latestVersionReleaseNotesUrl', latestVersionReleaseNotesUrl))
        .toString();
  }
}

class UpdateMessageBuilder
    implements Builder<UpdateMessage, UpdateMessageBuilder> {
  _$UpdateMessage? _$v;

  bool? _updateAvailable;
  bool? get updateAvailable => _$this._updateAvailable;
  set updateAvailable(bool? updateAvailable) =>
      _$this._updateAvailable = updateAvailable;

  String? _currentVersion;
  String? get currentVersion => _$this._currentVersion;
  set currentVersion(String? currentVersion) =>
      _$this._currentVersion = currentVersion;

  String? _latestVersion;
  String? get latestVersion => _$this._latestVersion;
  set latestVersion(String? latestVersion) =>
      _$this._latestVersion = latestVersion;

  String? _upgradeInstructionsUrl;
  String? get upgradeInstructionsUrl => _$this._upgradeInstructionsUrl;
  set upgradeInstructionsUrl(String? upgradeInstructionsUrl) =>
      _$this._upgradeInstructionsUrl = upgradeInstructionsUrl;

  String? _currentVersionReleaseNotesUrl;
  String? get currentVersionReleaseNotesUrl =>
      _$this._currentVersionReleaseNotesUrl;
  set currentVersionReleaseNotesUrl(String? currentVersionReleaseNotesUrl) =>
      _$this._currentVersionReleaseNotesUrl = currentVersionReleaseNotesUrl;

  String? _latestVersionReleaseNotesUrl;
  String? get latestVersionReleaseNotesUrl =>
      _$this._latestVersionReleaseNotesUrl;
  set latestVersionReleaseNotesUrl(String? latestVersionReleaseNotesUrl) =>
      _$this._latestVersionReleaseNotesUrl = latestVersionReleaseNotesUrl;

  UpdateMessageBuilder() {
    UpdateMessage._defaults(this);
  }

  UpdateMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _updateAvailable = $v.updateAvailable;
      _currentVersion = $v.currentVersion;
      _latestVersion = $v.latestVersion;
      _upgradeInstructionsUrl = $v.upgradeInstructionsUrl;
      _currentVersionReleaseNotesUrl = $v.currentVersionReleaseNotesUrl;
      _latestVersionReleaseNotesUrl = $v.latestVersionReleaseNotesUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateMessage other) {
    _$v = other as _$UpdateMessage;
  }

  @override
  void update(void Function(UpdateMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateMessage build() => _build();

  _$UpdateMessage _build() {
    final _$result =
        _$v ??
        _$UpdateMessage._(
          updateAvailable: updateAvailable,
          currentVersion: currentVersion,
          latestVersion: latestVersion,
          upgradeInstructionsUrl: upgradeInstructionsUrl,
          currentVersionReleaseNotesUrl: currentVersionReleaseNotesUrl,
          latestVersionReleaseNotesUrl: latestVersionReleaseNotesUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
