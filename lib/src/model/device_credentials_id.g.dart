// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_credentials_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceCredentialsId extends DeviceCredentialsId {
  @override
  final String id;

  factory _$DeviceCredentialsId([
    void Function(DeviceCredentialsIdBuilder)? updates,
  ]) => (DeviceCredentialsIdBuilder()..update(updates))._build();

  _$DeviceCredentialsId._({required this.id}) : super._();
  @override
  DeviceCredentialsId rebuild(
    void Function(DeviceCredentialsIdBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeviceCredentialsIdBuilder toBuilder() =>
      DeviceCredentialsIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceCredentialsId && id == other.id;
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
      r'DeviceCredentialsId',
    )..add('id', id)).toString();
  }
}

class DeviceCredentialsIdBuilder
    implements Builder<DeviceCredentialsId, DeviceCredentialsIdBuilder> {
  _$DeviceCredentialsId? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DeviceCredentialsIdBuilder() {
    DeviceCredentialsId._defaults(this);
  }

  DeviceCredentialsIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceCredentialsId other) {
    _$v = other as _$DeviceCredentialsId;
  }

  @override
  void update(void Function(DeviceCredentialsIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceCredentialsId build() => _build();

  _$DeviceCredentialsId _build() {
    final _$result =
        _$v ??
        _$DeviceCredentialsId._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'DeviceCredentialsId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
