// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_version_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemVersionInfo extends SystemVersionInfo {
  @override
  final String version;
  @override
  final String? artifact;
  @override
  final String? name;
  @override
  final String type;

  factory _$SystemVersionInfo([
    void Function(SystemVersionInfoBuilder)? updates,
  ]) => (SystemVersionInfoBuilder()..update(updates))._build();

  _$SystemVersionInfo._({
    required this.version,
    this.artifact,
    this.name,
    required this.type,
  }) : super._();
  @override
  SystemVersionInfo rebuild(void Function(SystemVersionInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemVersionInfoBuilder toBuilder() =>
      SystemVersionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemVersionInfo &&
        version == other.version &&
        artifact == other.artifact &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, artifact.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemVersionInfo')
          ..add('version', version)
          ..add('artifact', artifact)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class SystemVersionInfoBuilder
    implements Builder<SystemVersionInfo, SystemVersionInfoBuilder> {
  _$SystemVersionInfo? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _artifact;
  String? get artifact => _$this._artifact;
  set artifact(String? artifact) => _$this._artifact = artifact;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  SystemVersionInfoBuilder() {
    SystemVersionInfo._defaults(this);
  }

  SystemVersionInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _artifact = $v.artifact;
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemVersionInfo other) {
    _$v = other as _$SystemVersionInfo;
  }

  @override
  void update(void Function(SystemVersionInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemVersionInfo build() => _build();

  _$SystemVersionInfo _build() {
    final _$result =
        _$v ??
        _$SystemVersionInfo._(
          version: BuiltValueNullFieldError.checkNotNull(
            version,
            r'SystemVersionInfo',
            'version',
          ),
          artifact: artifact,
          name: name,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'SystemVersionInfo',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
