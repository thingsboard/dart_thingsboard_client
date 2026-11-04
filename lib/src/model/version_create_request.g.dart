// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class VersionCreateRequestBuilder {
  void replace(VersionCreateRequest other);
  void update(void Function(VersionCreateRequestBuilder) updates);
  String? get versionName;
  set versionName(String? versionName);

  String? get branch;
  set branch(String? branch);

  VersionCreateRequestType? get type;
  set type(VersionCreateRequestType? type);
}

class _$$VersionCreateRequest extends $VersionCreateRequest {
  @override
  final String? versionName;
  @override
  final String? branch;
  @override
  final VersionCreateRequestType type;

  factory _$$VersionCreateRequest([
    void Function($VersionCreateRequestBuilder)? updates,
  ]) => ($VersionCreateRequestBuilder()..update(updates))._build();

  _$$VersionCreateRequest._({this.versionName, this.branch, required this.type})
    : super._();
  @override
  $VersionCreateRequest rebuild(
    void Function($VersionCreateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $VersionCreateRequestBuilder toBuilder() =>
      $VersionCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $VersionCreateRequest &&
        versionName == other.versionName &&
        branch == other.branch &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, versionName.hashCode);
    _$hash = $jc(_$hash, branch.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$VersionCreateRequest')
          ..add('versionName', versionName)
          ..add('branch', branch)
          ..add('type', type))
        .toString();
  }
}

class $VersionCreateRequestBuilder
    implements
        Builder<$VersionCreateRequest, $VersionCreateRequestBuilder>,
        VersionCreateRequestBuilder {
  _$$VersionCreateRequest? _$v;

  String? _versionName;
  String? get versionName => _$this._versionName;
  set versionName(covariant String? versionName) =>
      _$this._versionName = versionName;

  String? _branch;
  String? get branch => _$this._branch;
  set branch(covariant String? branch) => _$this._branch = branch;

  VersionCreateRequestType? _type;
  VersionCreateRequestType? get type => _$this._type;
  set type(covariant VersionCreateRequestType? type) => _$this._type = type;

  $VersionCreateRequestBuilder() {
    $VersionCreateRequest._defaults(this);
  }

  $VersionCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _versionName = $v.versionName;
      _branch = $v.branch;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $VersionCreateRequest other) {
    _$v = other as _$$VersionCreateRequest;
  }

  @override
  void update(void Function($VersionCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $VersionCreateRequest build() => _build();

  _$$VersionCreateRequest _build() {
    final _$result =
        _$v ??
        _$$VersionCreateRequest._(
          versionName: versionName,
          branch: branch,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$VersionCreateRequest',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
