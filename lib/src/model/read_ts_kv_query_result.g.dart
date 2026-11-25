// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_ts_kv_query_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReadTsKvQueryResult extends ReadTsKvQueryResult {
  @override
  final int? queryId;
  @override
  final BuiltList<TsKvEntry>? data;
  @override
  final int? lastEntryTs;

  factory _$ReadTsKvQueryResult([
    void Function(ReadTsKvQueryResultBuilder)? updates,
  ]) => (ReadTsKvQueryResultBuilder()..update(updates))._build();

  _$ReadTsKvQueryResult._({this.queryId, this.data, this.lastEntryTs})
    : super._();
  @override
  ReadTsKvQueryResult rebuild(
    void Function(ReadTsKvQueryResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReadTsKvQueryResultBuilder toBuilder() =>
      ReadTsKvQueryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReadTsKvQueryResult &&
        queryId == other.queryId &&
        data == other.data &&
        lastEntryTs == other.lastEntryTs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, lastEntryTs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReadTsKvQueryResult')
          ..add('queryId', queryId)
          ..add('data', data)
          ..add('lastEntryTs', lastEntryTs))
        .toString();
  }
}

class ReadTsKvQueryResultBuilder
    implements Builder<ReadTsKvQueryResult, ReadTsKvQueryResultBuilder> {
  _$ReadTsKvQueryResult? _$v;

  int? _queryId;
  int? get queryId => _$this._queryId;
  set queryId(int? queryId) => _$this._queryId = queryId;

  ListBuilder<TsKvEntry>? _data;
  ListBuilder<TsKvEntry> get data => _$this._data ??= ListBuilder<TsKvEntry>();
  set data(ListBuilder<TsKvEntry>? data) => _$this._data = data;

  int? _lastEntryTs;
  int? get lastEntryTs => _$this._lastEntryTs;
  set lastEntryTs(int? lastEntryTs) => _$this._lastEntryTs = lastEntryTs;

  ReadTsKvQueryResultBuilder() {
    ReadTsKvQueryResult._defaults(this);
  }

  ReadTsKvQueryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryId = $v.queryId;
      _data = $v.data?.toBuilder();
      _lastEntryTs = $v.lastEntryTs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReadTsKvQueryResult other) {
    _$v = other as _$ReadTsKvQueryResult;
  }

  @override
  void update(void Function(ReadTsKvQueryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReadTsKvQueryResult build() => _build();

  _$ReadTsKvQueryResult _build() {
    _$ReadTsKvQueryResult _$result;
    try {
      _$result =
          _$v ??
          _$ReadTsKvQueryResult._(
            queryId: queryId,
            data: _data?.build(),
            lastEntryTs: lastEntryTs,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReadTsKvQueryResult',
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
