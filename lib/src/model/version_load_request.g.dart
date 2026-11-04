// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_load_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class VersionLoadRequestBuilder {
  void replace(VersionLoadRequest other);
  void update(void Function(VersionLoadRequestBuilder) updates);
  String? get versionId;
  set versionId(String? versionId);

  VersionLoadRequestType? get type;
  set type(VersionLoadRequestType? type);
}

class _$$VersionLoadRequest extends $VersionLoadRequest {
  @override
  final String? versionId;
  @override
  final VersionLoadRequestType type;

  factory _$$VersionLoadRequest([
    void Function($VersionLoadRequestBuilder)? updates,
  ]) => ($VersionLoadRequestBuilder()..update(updates))._build();

  _$$VersionLoadRequest._({this.versionId, required this.type}) : super._();
  @override
  $VersionLoadRequest rebuild(
    void Function($VersionLoadRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $VersionLoadRequestBuilder toBuilder() =>
      $VersionLoadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $VersionLoadRequest &&
        versionId == other.versionId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$VersionLoadRequest')
          ..add('versionId', versionId)
          ..add('type', type))
        .toString();
  }
}

class $VersionLoadRequestBuilder
    implements
        Builder<$VersionLoadRequest, $VersionLoadRequestBuilder>,
        VersionLoadRequestBuilder {
  _$$VersionLoadRequest? _$v;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(covariant String? versionId) => _$this._versionId = versionId;

  VersionLoadRequestType? _type;
  VersionLoadRequestType? get type => _$this._type;
  set type(covariant VersionLoadRequestType? type) => _$this._type = type;

  $VersionLoadRequestBuilder() {
    $VersionLoadRequest._defaults(this);
  }

  $VersionLoadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _versionId = $v.versionId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $VersionLoadRequest other) {
    _$v = other as _$$VersionLoadRequest;
  }

  @override
  void update(void Function($VersionLoadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $VersionLoadRequest build() => _build();

  _$$VersionLoadRequest _build() {
    final _$result =
        _$v ??
        _$$VersionLoadRequest._(
          versionId: versionId,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$VersionLoadRequest',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
