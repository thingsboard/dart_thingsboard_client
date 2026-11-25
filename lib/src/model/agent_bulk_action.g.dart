// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_bulk_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentBulkAction extends AgentBulkAction {
  @override
  final AgentBulkActionId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String? agentProfileId;
  @override
  final String? applicationProfileId;
  @override
  final AgentAppEventActionType? actionType;
  @override
  final AgentBulkActionStatus? status;
  @override
  final String? errorMsg;
  @override
  final int? processingStartedTime;
  @override
  final int? total;
  @override
  final int? submitted;
  @override
  final BuiltMap<String, int>? skipCounts;

  factory _$AgentBulkAction([void Function(AgentBulkActionBuilder)? updates]) =>
      (AgentBulkActionBuilder()..update(updates))._build();

  _$AgentBulkAction._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.agentProfileId,
    this.applicationProfileId,
    this.actionType,
    this.status,
    this.errorMsg,
    this.processingStartedTime,
    this.total,
    this.submitted,
    this.skipCounts,
  }) : super._();
  @override
  AgentBulkAction rebuild(void Function(AgentBulkActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentBulkActionBuilder toBuilder() => AgentBulkActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentBulkAction &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        agentProfileId == other.agentProfileId &&
        applicationProfileId == other.applicationProfileId &&
        actionType == other.actionType &&
        status == other.status &&
        errorMsg == other.errorMsg &&
        processingStartedTime == other.processingStartedTime &&
        total == other.total &&
        submitted == other.submitted &&
        skipCounts == other.skipCounts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, agentProfileId.hashCode);
    _$hash = $jc(_$hash, applicationProfileId.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, errorMsg.hashCode);
    _$hash = $jc(_$hash, processingStartedTime.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, submitted.hashCode);
    _$hash = $jc(_$hash, skipCounts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentBulkAction')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('agentProfileId', agentProfileId)
          ..add('applicationProfileId', applicationProfileId)
          ..add('actionType', actionType)
          ..add('status', status)
          ..add('errorMsg', errorMsg)
          ..add('processingStartedTime', processingStartedTime)
          ..add('total', total)
          ..add('submitted', submitted)
          ..add('skipCounts', skipCounts))
        .toString();
  }
}

class AgentBulkActionBuilder
    implements Builder<AgentBulkAction, AgentBulkActionBuilder> {
  _$AgentBulkAction? _$v;

  AgentBulkActionIdBuilder? _id;
  AgentBulkActionIdBuilder get id => _$this._id ??= AgentBulkActionIdBuilder();
  set id(AgentBulkActionIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _agentProfileId;
  String? get agentProfileId => _$this._agentProfileId;
  set agentProfileId(String? agentProfileId) =>
      _$this._agentProfileId = agentProfileId;

  String? _applicationProfileId;
  String? get applicationProfileId => _$this._applicationProfileId;
  set applicationProfileId(String? applicationProfileId) =>
      _$this._applicationProfileId = applicationProfileId;

  AgentAppEventActionType? _actionType;
  AgentAppEventActionType? get actionType => _$this._actionType;
  set actionType(AgentAppEventActionType? actionType) =>
      _$this._actionType = actionType;

  AgentBulkActionStatus? _status;
  AgentBulkActionStatus? get status => _$this._status;
  set status(AgentBulkActionStatus? status) => _$this._status = status;

  String? _errorMsg;
  String? get errorMsg => _$this._errorMsg;
  set errorMsg(String? errorMsg) => _$this._errorMsg = errorMsg;

  int? _processingStartedTime;
  int? get processingStartedTime => _$this._processingStartedTime;
  set processingStartedTime(int? processingStartedTime) =>
      _$this._processingStartedTime = processingStartedTime;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _submitted;
  int? get submitted => _$this._submitted;
  set submitted(int? submitted) => _$this._submitted = submitted;

  MapBuilder<String, int>? _skipCounts;
  MapBuilder<String, int> get skipCounts =>
      _$this._skipCounts ??= MapBuilder<String, int>();
  set skipCounts(MapBuilder<String, int>? skipCounts) =>
      _$this._skipCounts = skipCounts;

  AgentBulkActionBuilder() {
    AgentBulkAction._defaults(this);
  }

  AgentBulkActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _agentProfileId = $v.agentProfileId;
      _applicationProfileId = $v.applicationProfileId;
      _actionType = $v.actionType;
      _status = $v.status;
      _errorMsg = $v.errorMsg;
      _processingStartedTime = $v.processingStartedTime;
      _total = $v.total;
      _submitted = $v.submitted;
      _skipCounts = $v.skipCounts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentBulkAction other) {
    _$v = other as _$AgentBulkAction;
  }

  @override
  void update(void Function(AgentBulkActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentBulkAction build() => _build();

  _$AgentBulkAction _build() {
    _$AgentBulkAction _$result;
    try {
      _$result =
          _$v ??
          _$AgentBulkAction._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            agentProfileId: agentProfileId,
            applicationProfileId: applicationProfileId,
            actionType: actionType,
            status: status,
            errorMsg: errorMsg,
            processingStartedTime: processingStartedTime,
            total: total,
            submitted: submitted,
            skipCounts: _skipCounts?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'skipCounts';
        _skipCounts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentBulkAction',
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
