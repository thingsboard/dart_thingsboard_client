// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppEvent extends AgentAppEvent {
  @override
  final AgentAppEventId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final AgentApplicationId? applicationId;
  @override
  final AgentId? agentId;
  @override
  final String? applicationName;
  @override
  final AgentAppEventActionType? actionType;
  @override
  final ProcessingStartStatus? startStatus;
  @override
  final AgentProcessingStatus? processingStatus;
  @override
  final String? currentStepId;
  @override
  final String? currentActivity;
  @override
  final String? errorMessage;
  @override
  final int? updatedTime;
  @override
  final BuiltMap<String, AgentAppEventStepStatesValue>? stepStates;
  @override
  final String? bulkActionId;
  @override
  final BuiltMap<String, String>? resolvedArguments;
  @override
  final String? winnerContainerId;
  @override
  final int? finalizeDeadlineTs;
  @override
  final BuiltMap<String, String>? contextMetadata;

  factory _$AgentAppEvent([void Function(AgentAppEventBuilder)? updates]) =>
      (AgentAppEventBuilder()..update(updates))._build();

  _$AgentAppEvent._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.applicationId,
    this.agentId,
    this.applicationName,
    this.actionType,
    this.startStatus,
    this.processingStatus,
    this.currentStepId,
    this.currentActivity,
    this.errorMessage,
    this.updatedTime,
    this.stepStates,
    this.bulkActionId,
    this.resolvedArguments,
    this.winnerContainerId,
    this.finalizeDeadlineTs,
    this.contextMetadata,
  }) : super._();
  @override
  AgentAppEvent rebuild(void Function(AgentAppEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentAppEventBuilder toBuilder() => AgentAppEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppEvent &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        applicationId == other.applicationId &&
        agentId == other.agentId &&
        applicationName == other.applicationName &&
        actionType == other.actionType &&
        startStatus == other.startStatus &&
        processingStatus == other.processingStatus &&
        currentStepId == other.currentStepId &&
        currentActivity == other.currentActivity &&
        errorMessage == other.errorMessage &&
        updatedTime == other.updatedTime &&
        stepStates == other.stepStates &&
        bulkActionId == other.bulkActionId &&
        resolvedArguments == other.resolvedArguments &&
        winnerContainerId == other.winnerContainerId &&
        finalizeDeadlineTs == other.finalizeDeadlineTs &&
        contextMetadata == other.contextMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, applicationId.hashCode);
    _$hash = $jc(_$hash, agentId.hashCode);
    _$hash = $jc(_$hash, applicationName.hashCode);
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jc(_$hash, startStatus.hashCode);
    _$hash = $jc(_$hash, processingStatus.hashCode);
    _$hash = $jc(_$hash, currentStepId.hashCode);
    _$hash = $jc(_$hash, currentActivity.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, updatedTime.hashCode);
    _$hash = $jc(_$hash, stepStates.hashCode);
    _$hash = $jc(_$hash, bulkActionId.hashCode);
    _$hash = $jc(_$hash, resolvedArguments.hashCode);
    _$hash = $jc(_$hash, winnerContainerId.hashCode);
    _$hash = $jc(_$hash, finalizeDeadlineTs.hashCode);
    _$hash = $jc(_$hash, contextMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentAppEvent')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('applicationId', applicationId)
          ..add('agentId', agentId)
          ..add('applicationName', applicationName)
          ..add('actionType', actionType)
          ..add('startStatus', startStatus)
          ..add('processingStatus', processingStatus)
          ..add('currentStepId', currentStepId)
          ..add('currentActivity', currentActivity)
          ..add('errorMessage', errorMessage)
          ..add('updatedTime', updatedTime)
          ..add('stepStates', stepStates)
          ..add('bulkActionId', bulkActionId)
          ..add('resolvedArguments', resolvedArguments)
          ..add('winnerContainerId', winnerContainerId)
          ..add('finalizeDeadlineTs', finalizeDeadlineTs)
          ..add('contextMetadata', contextMetadata))
        .toString();
  }
}

class AgentAppEventBuilder
    implements Builder<AgentAppEvent, AgentAppEventBuilder> {
  _$AgentAppEvent? _$v;

  AgentAppEventIdBuilder? _id;
  AgentAppEventIdBuilder get id => _$this._id ??= AgentAppEventIdBuilder();
  set id(AgentAppEventIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  AgentApplicationIdBuilder? _applicationId;
  AgentApplicationIdBuilder get applicationId =>
      _$this._applicationId ??= AgentApplicationIdBuilder();
  set applicationId(AgentApplicationIdBuilder? applicationId) =>
      _$this._applicationId = applicationId;

  AgentIdBuilder? _agentId;
  AgentIdBuilder get agentId => _$this._agentId ??= AgentIdBuilder();
  set agentId(AgentIdBuilder? agentId) => _$this._agentId = agentId;

  String? _applicationName;
  String? get applicationName => _$this._applicationName;
  set applicationName(String? applicationName) =>
      _$this._applicationName = applicationName;

  AgentAppEventActionType? _actionType;
  AgentAppEventActionType? get actionType => _$this._actionType;
  set actionType(AgentAppEventActionType? actionType) =>
      _$this._actionType = actionType;

  ProcessingStartStatus? _startStatus;
  ProcessingStartStatus? get startStatus => _$this._startStatus;
  set startStatus(ProcessingStartStatus? startStatus) =>
      _$this._startStatus = startStatus;

  AgentProcessingStatus? _processingStatus;
  AgentProcessingStatus? get processingStatus => _$this._processingStatus;
  set processingStatus(AgentProcessingStatus? processingStatus) =>
      _$this._processingStatus = processingStatus;

  String? _currentStepId;
  String? get currentStepId => _$this._currentStepId;
  set currentStepId(String? currentStepId) =>
      _$this._currentStepId = currentStepId;

  String? _currentActivity;
  String? get currentActivity => _$this._currentActivity;
  set currentActivity(String? currentActivity) =>
      _$this._currentActivity = currentActivity;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  int? _updatedTime;
  int? get updatedTime => _$this._updatedTime;
  set updatedTime(int? updatedTime) => _$this._updatedTime = updatedTime;

  MapBuilder<String, AgentAppEventStepStatesValue>? _stepStates;
  MapBuilder<String, AgentAppEventStepStatesValue> get stepStates =>
      _$this._stepStates ??= MapBuilder<String, AgentAppEventStepStatesValue>();
  set stepStates(
    MapBuilder<String, AgentAppEventStepStatesValue>? stepStates,
  ) => _$this._stepStates = stepStates;

  String? _bulkActionId;
  String? get bulkActionId => _$this._bulkActionId;
  set bulkActionId(String? bulkActionId) => _$this._bulkActionId = bulkActionId;

  MapBuilder<String, String>? _resolvedArguments;
  MapBuilder<String, String> get resolvedArguments =>
      _$this._resolvedArguments ??= MapBuilder<String, String>();
  set resolvedArguments(MapBuilder<String, String>? resolvedArguments) =>
      _$this._resolvedArguments = resolvedArguments;

  String? _winnerContainerId;
  String? get winnerContainerId => _$this._winnerContainerId;
  set winnerContainerId(String? winnerContainerId) =>
      _$this._winnerContainerId = winnerContainerId;

  int? _finalizeDeadlineTs;
  int? get finalizeDeadlineTs => _$this._finalizeDeadlineTs;
  set finalizeDeadlineTs(int? finalizeDeadlineTs) =>
      _$this._finalizeDeadlineTs = finalizeDeadlineTs;

  MapBuilder<String, String>? _contextMetadata;
  MapBuilder<String, String> get contextMetadata =>
      _$this._contextMetadata ??= MapBuilder<String, String>();
  set contextMetadata(MapBuilder<String, String>? contextMetadata) =>
      _$this._contextMetadata = contextMetadata;

  AgentAppEventBuilder() {
    AgentAppEvent._defaults(this);
  }

  AgentAppEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _applicationId = $v.applicationId?.toBuilder();
      _agentId = $v.agentId?.toBuilder();
      _applicationName = $v.applicationName;
      _actionType = $v.actionType;
      _startStatus = $v.startStatus;
      _processingStatus = $v.processingStatus;
      _currentStepId = $v.currentStepId;
      _currentActivity = $v.currentActivity;
      _errorMessage = $v.errorMessage;
      _updatedTime = $v.updatedTime;
      _stepStates = $v.stepStates?.toBuilder();
      _bulkActionId = $v.bulkActionId;
      _resolvedArguments = $v.resolvedArguments?.toBuilder();
      _winnerContainerId = $v.winnerContainerId;
      _finalizeDeadlineTs = $v.finalizeDeadlineTs;
      _contextMetadata = $v.contextMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentAppEvent other) {
    _$v = other as _$AgentAppEvent;
  }

  @override
  void update(void Function(AgentAppEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppEvent build() => _build();

  _$AgentAppEvent _build() {
    _$AgentAppEvent _$result;
    try {
      _$result =
          _$v ??
          _$AgentAppEvent._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            applicationId: _applicationId?.build(),
            agentId: _agentId?.build(),
            applicationName: applicationName,
            actionType: actionType,
            startStatus: startStatus,
            processingStatus: processingStatus,
            currentStepId: currentStepId,
            currentActivity: currentActivity,
            errorMessage: errorMessage,
            updatedTime: updatedTime,
            stepStates: _stepStates?.build(),
            bulkActionId: bulkActionId,
            resolvedArguments: _resolvedArguments?.build(),
            winnerContainerId: winnerContainerId,
            finalizeDeadlineTs: finalizeDeadlineTs,
            contextMetadata: _contextMetadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'applicationId';
        _applicationId?.build();
        _$failedField = 'agentId';
        _agentId?.build();

        _$failedField = 'stepStates';
        _stepStates?.build();

        _$failedField = 'resolvedArguments';
        _resolvedArguments?.build();

        _$failedField = 'contextMetadata';
        _contextMetadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentAppEvent',
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
