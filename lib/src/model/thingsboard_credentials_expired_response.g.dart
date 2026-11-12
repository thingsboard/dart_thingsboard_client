// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thingsboard_credentials_expired_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ThingsboardCredentialsExpiredResponse
    extends ThingsboardCredentialsExpiredResponse {
  @override
  final int? status;
  @override
  final String? message;
  @override
  final ThingsboardErrorCode? errorCode;
  @override
  final int? timestamp;
  @override
  final SubscriptionErrorCode? subscriptionErrorCode;
  @override
  final SubscriptionEntry? subscriptionEntry;
  @override
  final JsonObject? subscriptionValue;
  @override
  final String? resetToken;

  factory _$ThingsboardCredentialsExpiredResponse([
    void Function(ThingsboardCredentialsExpiredResponseBuilder)? updates,
  ]) => (ThingsboardCredentialsExpiredResponseBuilder()..update(updates))
      ._build();

  _$ThingsboardCredentialsExpiredResponse._({
    this.status,
    this.message,
    this.errorCode,
    this.timestamp,
    this.subscriptionErrorCode,
    this.subscriptionEntry,
    this.subscriptionValue,
    this.resetToken,
  }) : super._();
  @override
  ThingsboardCredentialsExpiredResponse rebuild(
    void Function(ThingsboardCredentialsExpiredResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ThingsboardCredentialsExpiredResponseBuilder toBuilder() =>
      ThingsboardCredentialsExpiredResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThingsboardCredentialsExpiredResponse &&
        status == other.status &&
        message == other.message &&
        errorCode == other.errorCode &&
        timestamp == other.timestamp &&
        subscriptionErrorCode == other.subscriptionErrorCode &&
        subscriptionEntry == other.subscriptionEntry &&
        subscriptionValue == other.subscriptionValue &&
        resetToken == other.resetToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, subscriptionErrorCode.hashCode);
    _$hash = $jc(_$hash, subscriptionEntry.hashCode);
    _$hash = $jc(_$hash, subscriptionValue.hashCode);
    _$hash = $jc(_$hash, resetToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ThingsboardCredentialsExpiredResponse',
          )
          ..add('status', status)
          ..add('message', message)
          ..add('errorCode', errorCode)
          ..add('timestamp', timestamp)
          ..add('subscriptionErrorCode', subscriptionErrorCode)
          ..add('subscriptionEntry', subscriptionEntry)
          ..add('subscriptionValue', subscriptionValue)
          ..add('resetToken', resetToken))
        .toString();
  }
}

class ThingsboardCredentialsExpiredResponseBuilder
    implements
        Builder<
          ThingsboardCredentialsExpiredResponse,
          ThingsboardCredentialsExpiredResponseBuilder
        > {
  _$ThingsboardCredentialsExpiredResponse? _$v;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ThingsboardErrorCode? _errorCode;
  ThingsboardErrorCode? get errorCode => _$this._errorCode;
  set errorCode(ThingsboardErrorCode? errorCode) =>
      _$this._errorCode = errorCode;

  int? _timestamp;
  int? get timestamp => _$this._timestamp;
  set timestamp(int? timestamp) => _$this._timestamp = timestamp;

  SubscriptionErrorCode? _subscriptionErrorCode;
  SubscriptionErrorCode? get subscriptionErrorCode =>
      _$this._subscriptionErrorCode;
  set subscriptionErrorCode(SubscriptionErrorCode? subscriptionErrorCode) =>
      _$this._subscriptionErrorCode = subscriptionErrorCode;

  SubscriptionEntry? _subscriptionEntry;
  SubscriptionEntry? get subscriptionEntry => _$this._subscriptionEntry;
  set subscriptionEntry(SubscriptionEntry? subscriptionEntry) =>
      _$this._subscriptionEntry = subscriptionEntry;

  JsonObject? _subscriptionValue;
  JsonObject? get subscriptionValue => _$this._subscriptionValue;
  set subscriptionValue(JsonObject? subscriptionValue) =>
      _$this._subscriptionValue = subscriptionValue;

  String? _resetToken;
  String? get resetToken => _$this._resetToken;
  set resetToken(String? resetToken) => _$this._resetToken = resetToken;

  ThingsboardCredentialsExpiredResponseBuilder() {
    ThingsboardCredentialsExpiredResponse._defaults(this);
  }

  ThingsboardCredentialsExpiredResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _errorCode = $v.errorCode;
      _timestamp = $v.timestamp;
      _subscriptionErrorCode = $v.subscriptionErrorCode;
      _subscriptionEntry = $v.subscriptionEntry;
      _subscriptionValue = $v.subscriptionValue;
      _resetToken = $v.resetToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThingsboardCredentialsExpiredResponse other) {
    _$v = other as _$ThingsboardCredentialsExpiredResponse;
  }

  @override
  void update(
    void Function(ThingsboardCredentialsExpiredResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ThingsboardCredentialsExpiredResponse build() => _build();

  _$ThingsboardCredentialsExpiredResponse _build() {
    final _$result =
        _$v ??
        _$ThingsboardCredentialsExpiredResponse._(
          status: status,
          message: message,
          errorCode: errorCode,
          timestamp: timestamp,
          subscriptionErrorCode: subscriptionErrorCode,
          subscriptionEntry: subscriptionEntry,
          subscriptionValue: subscriptionValue,
          resetToken: resetToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
