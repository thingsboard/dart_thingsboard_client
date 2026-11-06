// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Rpc extends Rpc {
  @override
  final RpcId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final DeviceId? deviceId;
  @override
  final int? expirationTime;
  @override
  final JsonObject? request;
  @override
  final JsonObject? response;
  @override
  final RpcStatus? status;
  @override
  final JsonObject? additionalInfo;

  factory _$Rpc([void Function(RpcBuilder)? updates]) =>
      (RpcBuilder()..update(updates))._build();

  _$Rpc._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.deviceId,
    this.expirationTime,
    this.request,
    this.response,
    this.status,
    this.additionalInfo,
  }) : super._();
  @override
  Rpc rebuild(void Function(RpcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RpcBuilder toBuilder() => RpcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rpc &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        deviceId == other.deviceId &&
        expirationTime == other.expirationTime &&
        request == other.request &&
        response == other.response &&
        status == other.status &&
        additionalInfo == other.additionalInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, expirationTime.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rpc')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('deviceId', deviceId)
          ..add('expirationTime', expirationTime)
          ..add('request', request)
          ..add('response', response)
          ..add('status', status)
          ..add('additionalInfo', additionalInfo))
        .toString();
  }
}

class RpcBuilder implements Builder<Rpc, RpcBuilder> {
  _$Rpc? _$v;

  RpcIdBuilder? _id;
  RpcIdBuilder get id => _$this._id ??= RpcIdBuilder();
  set id(RpcIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  DeviceIdBuilder? _deviceId;
  DeviceIdBuilder get deviceId => _$this._deviceId ??= DeviceIdBuilder();
  set deviceId(DeviceIdBuilder? deviceId) => _$this._deviceId = deviceId;

  int? _expirationTime;
  int? get expirationTime => _$this._expirationTime;
  set expirationTime(int? expirationTime) =>
      _$this._expirationTime = expirationTime;

  JsonObject? _request;
  JsonObject? get request => _$this._request;
  set request(JsonObject? request) => _$this._request = request;

  JsonObject? _response;
  JsonObject? get response => _$this._response;
  set response(JsonObject? response) => _$this._response = response;

  RpcStatus? _status;
  RpcStatus? get status => _$this._status;
  set status(RpcStatus? status) => _$this._status = status;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  RpcBuilder() {
    Rpc._defaults(this);
  }

  RpcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _deviceId = $v.deviceId?.toBuilder();
      _expirationTime = $v.expirationTime;
      _request = $v.request;
      _response = $v.response;
      _status = $v.status;
      _additionalInfo = $v.additionalInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rpc other) {
    _$v = other as _$Rpc;
  }

  @override
  void update(void Function(RpcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rpc build() => _build();

  _$Rpc _build() {
    _$Rpc _$result;
    try {
      _$result =
          _$v ??
          _$Rpc._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            deviceId: _deviceId?.build(),
            expirationTime: expirationTime,
            request: request,
            response: response,
            status: status,
            additionalInfo: additionalInfo,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'deviceId';
        _deviceId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Rpc', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
