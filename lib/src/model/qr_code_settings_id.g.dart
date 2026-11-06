// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_settings_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QrCodeSettingsId extends QrCodeSettingsId {
  @override
  final String id;

  factory _$QrCodeSettingsId([
    void Function(QrCodeSettingsIdBuilder)? updates,
  ]) => (QrCodeSettingsIdBuilder()..update(updates))._build();

  _$QrCodeSettingsId._({required this.id}) : super._();
  @override
  QrCodeSettingsId rebuild(void Function(QrCodeSettingsIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QrCodeSettingsIdBuilder toBuilder() =>
      QrCodeSettingsIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QrCodeSettingsId && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'QrCodeSettingsId',
    )..add('id', id)).toString();
  }
}

class QrCodeSettingsIdBuilder
    implements Builder<QrCodeSettingsId, QrCodeSettingsIdBuilder> {
  _$QrCodeSettingsId? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  QrCodeSettingsIdBuilder() {
    QrCodeSettingsId._defaults(this);
  }

  QrCodeSettingsIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QrCodeSettingsId other) {
    _$v = other as _$QrCodeSettingsId;
  }

  @override
  void update(void Function(QrCodeSettingsIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QrCodeSettingsId build() => _build();

  _$QrCodeSettingsId _build() {
    final _$result =
        _$v ??
        _$QrCodeSettingsId._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'QrCodeSettingsId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
