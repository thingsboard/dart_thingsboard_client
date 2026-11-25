// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_device_with_credentials_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SaveDeviceWithCredentialsRequest
    extends SaveDeviceWithCredentialsRequest {
  @override
  final Device device;
  @override
  final DeviceCredentials credentials;

  factory _$SaveDeviceWithCredentialsRequest([
    void Function(SaveDeviceWithCredentialsRequestBuilder)? updates,
  ]) => (SaveDeviceWithCredentialsRequestBuilder()..update(updates))._build();

  _$SaveDeviceWithCredentialsRequest._({
    required this.device,
    required this.credentials,
  }) : super._();
  @override
  SaveDeviceWithCredentialsRequest rebuild(
    void Function(SaveDeviceWithCredentialsRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SaveDeviceWithCredentialsRequestBuilder toBuilder() =>
      SaveDeviceWithCredentialsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SaveDeviceWithCredentialsRequest &&
        device == other.device &&
        credentials == other.credentials;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, device.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SaveDeviceWithCredentialsRequest')
          ..add('device', device)
          ..add('credentials', credentials))
        .toString();
  }
}

class SaveDeviceWithCredentialsRequestBuilder
    implements
        Builder<
          SaveDeviceWithCredentialsRequest,
          SaveDeviceWithCredentialsRequestBuilder
        > {
  _$SaveDeviceWithCredentialsRequest? _$v;

  DeviceBuilder? _device;
  DeviceBuilder get device => _$this._device ??= DeviceBuilder();
  set device(DeviceBuilder? device) => _$this._device = device;

  DeviceCredentialsBuilder? _credentials;
  DeviceCredentialsBuilder get credentials =>
      _$this._credentials ??= DeviceCredentialsBuilder();
  set credentials(DeviceCredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  SaveDeviceWithCredentialsRequestBuilder() {
    SaveDeviceWithCredentialsRequest._defaults(this);
  }

  SaveDeviceWithCredentialsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _device = $v.device.toBuilder();
      _credentials = $v.credentials.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SaveDeviceWithCredentialsRequest other) {
    _$v = other as _$SaveDeviceWithCredentialsRequest;
  }

  @override
  void update(void Function(SaveDeviceWithCredentialsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SaveDeviceWithCredentialsRequest build() => _build();

  _$SaveDeviceWithCredentialsRequest _build() {
    _$SaveDeviceWithCredentialsRequest _$result;
    try {
      _$result =
          _$v ??
          _$SaveDeviceWithCredentialsRequest._(
            device: device.build(),
            credentials: credentials.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'device';
        device.build();
        _$failedField = 'credentials';
        credentials.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SaveDeviceWithCredentialsRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
