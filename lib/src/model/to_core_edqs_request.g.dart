// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_core_edqs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ToCoreEdqsRequest extends ToCoreEdqsRequest {
  @override
  final EdqsSyncRequest? syncRequest;
  @override
  final bool? apiEnabled;

  factory _$ToCoreEdqsRequest([
    void Function(ToCoreEdqsRequestBuilder)? updates,
  ]) => (ToCoreEdqsRequestBuilder()..update(updates))._build();

  _$ToCoreEdqsRequest._({this.syncRequest, this.apiEnabled}) : super._();
  @override
  ToCoreEdqsRequest rebuild(void Function(ToCoreEdqsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ToCoreEdqsRequestBuilder toBuilder() =>
      ToCoreEdqsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ToCoreEdqsRequest &&
        syncRequest == other.syncRequest &&
        apiEnabled == other.apiEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, syncRequest.hashCode);
    _$hash = $jc(_$hash, apiEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ToCoreEdqsRequest')
          ..add('syncRequest', syncRequest)
          ..add('apiEnabled', apiEnabled))
        .toString();
  }
}

class ToCoreEdqsRequestBuilder
    implements Builder<ToCoreEdqsRequest, ToCoreEdqsRequestBuilder> {
  _$ToCoreEdqsRequest? _$v;

  EdqsSyncRequestBuilder? _syncRequest;
  EdqsSyncRequestBuilder get syncRequest =>
      _$this._syncRequest ??= EdqsSyncRequestBuilder();
  set syncRequest(EdqsSyncRequestBuilder? syncRequest) =>
      _$this._syncRequest = syncRequest;

  bool? _apiEnabled;
  bool? get apiEnabled => _$this._apiEnabled;
  set apiEnabled(bool? apiEnabled) => _$this._apiEnabled = apiEnabled;

  ToCoreEdqsRequestBuilder() {
    ToCoreEdqsRequest._defaults(this);
  }

  ToCoreEdqsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _syncRequest = $v.syncRequest?.toBuilder();
      _apiEnabled = $v.apiEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ToCoreEdqsRequest other) {
    _$v = other as _$ToCoreEdqsRequest;
  }

  @override
  void update(void Function(ToCoreEdqsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ToCoreEdqsRequest build() => _build();

  _$ToCoreEdqsRequest _build() {
    _$ToCoreEdqsRequest _$result;
    try {
      _$result =
          _$v ??
          _$ToCoreEdqsRequest._(
            syncRequest: _syncRequest?.build(),
            apiEnabled: apiEnabled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'syncRequest';
        _syncRequest?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ToCoreEdqsRequest',
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
