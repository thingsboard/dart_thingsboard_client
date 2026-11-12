// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edqs_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdqsState extends EdqsState {
  @override
  final bool? edqsReady;
  @override
  final EdqsSyncStatus? syncStatus;
  @override
  final EdqsApiMode? apiMode;

  factory _$EdqsState([void Function(EdqsStateBuilder)? updates]) =>
      (EdqsStateBuilder()..update(updates))._build();

  _$EdqsState._({this.edqsReady, this.syncStatus, this.apiMode}) : super._();
  @override
  EdqsState rebuild(void Function(EdqsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdqsStateBuilder toBuilder() => EdqsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdqsState &&
        edqsReady == other.edqsReady &&
        syncStatus == other.syncStatus &&
        apiMode == other.apiMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, edqsReady.hashCode);
    _$hash = $jc(_$hash, syncStatus.hashCode);
    _$hash = $jc(_$hash, apiMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdqsState')
          ..add('edqsReady', edqsReady)
          ..add('syncStatus', syncStatus)
          ..add('apiMode', apiMode))
        .toString();
  }
}

class EdqsStateBuilder implements Builder<EdqsState, EdqsStateBuilder> {
  _$EdqsState? _$v;

  bool? _edqsReady;
  bool? get edqsReady => _$this._edqsReady;
  set edqsReady(bool? edqsReady) => _$this._edqsReady = edqsReady;

  EdqsSyncStatus? _syncStatus;
  EdqsSyncStatus? get syncStatus => _$this._syncStatus;
  set syncStatus(EdqsSyncStatus? syncStatus) => _$this._syncStatus = syncStatus;

  EdqsApiMode? _apiMode;
  EdqsApiMode? get apiMode => _$this._apiMode;
  set apiMode(EdqsApiMode? apiMode) => _$this._apiMode = apiMode;

  EdqsStateBuilder() {
    EdqsState._defaults(this);
  }

  EdqsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _edqsReady = $v.edqsReady;
      _syncStatus = $v.syncStatus;
      _apiMode = $v.apiMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdqsState other) {
    _$v = other as _$EdqsState;
  }

  @override
  void update(void Function(EdqsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdqsState build() => _build();

  _$EdqsState _build() {
    final _$result =
        _$v ??
        _$EdqsState._(
          edqsReady: edqsReady,
          syncStatus: syncStatus,
          apiMode: apiMode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
