// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_bulk_action_event_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentBulkActionEventStats extends AgentBulkActionEventStats {
  @override
  final BuiltMap<String, int>? countsByStatus;
  @override
  final int? total;

  factory _$AgentBulkActionEventStats([
    void Function(AgentBulkActionEventStatsBuilder)? updates,
  ]) => (AgentBulkActionEventStatsBuilder()..update(updates))._build();

  _$AgentBulkActionEventStats._({this.countsByStatus, this.total}) : super._();
  @override
  AgentBulkActionEventStats rebuild(
    void Function(AgentBulkActionEventStatsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AgentBulkActionEventStatsBuilder toBuilder() =>
      AgentBulkActionEventStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentBulkActionEventStats &&
        countsByStatus == other.countsByStatus &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, countsByStatus.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentBulkActionEventStats')
          ..add('countsByStatus', countsByStatus)
          ..add('total', total))
        .toString();
  }
}

class AgentBulkActionEventStatsBuilder
    implements
        Builder<AgentBulkActionEventStats, AgentBulkActionEventStatsBuilder> {
  _$AgentBulkActionEventStats? _$v;

  MapBuilder<String, int>? _countsByStatus;
  MapBuilder<String, int> get countsByStatus =>
      _$this._countsByStatus ??= MapBuilder<String, int>();
  set countsByStatus(MapBuilder<String, int>? countsByStatus) =>
      _$this._countsByStatus = countsByStatus;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  AgentBulkActionEventStatsBuilder() {
    AgentBulkActionEventStats._defaults(this);
  }

  AgentBulkActionEventStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countsByStatus = $v.countsByStatus?.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentBulkActionEventStats other) {
    _$v = other as _$AgentBulkActionEventStats;
  }

  @override
  void update(void Function(AgentBulkActionEventStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentBulkActionEventStats build() => _build();

  _$AgentBulkActionEventStats _build() {
    _$AgentBulkActionEventStats _$result;
    try {
      _$result =
          _$v ??
          _$AgentBulkActionEventStats._(
            countsByStatus: _countsByStatus?.build(),
            total: total,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countsByStatus';
        _countsByStatus?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentBulkActionEventStats',
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
