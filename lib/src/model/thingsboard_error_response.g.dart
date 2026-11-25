// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thingsboard_error_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ThingsboardErrorResponse extends ThingsboardErrorResponse {
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

  factory _$ThingsboardErrorResponse([
    void Function(ThingsboardErrorResponseBuilder)? updates,
  ]) => (ThingsboardErrorResponseBuilder()..update(updates))._build();

  _$ThingsboardErrorResponse._({
    this.status,
    this.message,
    this.errorCode,
    this.timestamp,
    this.subscriptionErrorCode,
    this.subscriptionEntry,
    this.subscriptionValue,
  }) : super._();
  @override
  ThingsboardErrorResponse rebuild(
    void Function(ThingsboardErrorResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ThingsboardErrorResponseBuilder toBuilder() =>
      ThingsboardErrorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThingsboardErrorResponse &&
        status == other.status &&
        message == other.message &&
        errorCode == other.errorCode &&
        timestamp == other.timestamp &&
        subscriptionErrorCode == other.subscriptionErrorCode &&
        subscriptionEntry == other.subscriptionEntry &&
        subscriptionValue == other.subscriptionValue;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ThingsboardErrorResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('errorCode', errorCode)
          ..add('timestamp', timestamp)
          ..add('subscriptionErrorCode', subscriptionErrorCode)
          ..add('subscriptionEntry', subscriptionEntry)
          ..add('subscriptionValue', subscriptionValue))
        .toString();
  }
}

class ThingsboardErrorResponseBuilder
    implements
        Builder<ThingsboardErrorResponse, ThingsboardErrorResponseBuilder> {
  _$ThingsboardErrorResponse? _$v;

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

  ThingsboardErrorResponseBuilder() {
    ThingsboardErrorResponse._defaults(this);
  }

  ThingsboardErrorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _errorCode = $v.errorCode;
      _timestamp = $v.timestamp;
      _subscriptionErrorCode = $v.subscriptionErrorCode;
      _subscriptionEntry = $v.subscriptionEntry;
      _subscriptionValue = $v.subscriptionValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThingsboardErrorResponse other) {
    _$v = other as _$ThingsboardErrorResponse;
  }

  @override
  void update(void Function(ThingsboardErrorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThingsboardErrorResponse build() => _build();

  _$ThingsboardErrorResponse _build() {
    final _$result =
        _$v ??
        _$ThingsboardErrorResponse._(
          status: status,
          message: message,
          errorCode: errorCode,
          timestamp: timestamp,
          subscriptionErrorCode: subscriptionErrorCode,
          subscriptionEntry: subscriptionEntry,
          subscriptionValue: subscriptionValue,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
