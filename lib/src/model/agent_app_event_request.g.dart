// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_event_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppEventRequest extends AgentAppEventRequest {
  @override
  final AgentAppEventActionType? actionType;
  @override
  final AgentApplication? application;
  @override
  final BuiltMap<String, AgentAppEventStepStatesValue>? stepInputs;
  @override
  final EntityId? relatedEntityId;
  @override
  final String? bulkActionId;
  @override
  final bool? skipProfileRefetch;

  factory _$AgentAppEventRequest([
    void Function(AgentAppEventRequestBuilder)? updates,
  ]) => (AgentAppEventRequestBuilder()..update(updates))._build();

  _$AgentAppEventRequest._({
    this.actionType,
    this.application,
    this.stepInputs,
    this.relatedEntityId,
    this.bulkActionId,
    this.skipProfileRefetch,
  }) : super._();
  @override
  AgentAppEventRequest rebuild(
    void Function(AgentAppEventRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AgentAppEventRequestBuilder toBuilder() =>
      AgentAppEventRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppEventRequest &&
        actionType == other.actionType &&
        application == other.application &&
        stepInputs == other.stepInputs &&
        relatedEntityId == other.relatedEntityId &&
        bulkActionId == other.bulkActionId &&
        skipProfileRefetch == other.skipProfileRefetch;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jc(_$hash, application.hashCode);
    _$hash = $jc(_$hash, stepInputs.hashCode);
    _$hash = $jc(_$hash, relatedEntityId.hashCode);
    _$hash = $jc(_$hash, bulkActionId.hashCode);
    _$hash = $jc(_$hash, skipProfileRefetch.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentAppEventRequest')
          ..add('actionType', actionType)
          ..add('application', application)
          ..add('stepInputs', stepInputs)
          ..add('relatedEntityId', relatedEntityId)
          ..add('bulkActionId', bulkActionId)
          ..add('skipProfileRefetch', skipProfileRefetch))
        .toString();
  }
}

class AgentAppEventRequestBuilder
    implements Builder<AgentAppEventRequest, AgentAppEventRequestBuilder> {
  _$AgentAppEventRequest? _$v;

  AgentAppEventActionType? _actionType;
  AgentAppEventActionType? get actionType => _$this._actionType;
  set actionType(AgentAppEventActionType? actionType) =>
      _$this._actionType = actionType;

  AgentApplicationBuilder? _application;
  AgentApplicationBuilder get application =>
      _$this._application ??= AgentApplicationBuilder();
  set application(AgentApplicationBuilder? application) =>
      _$this._application = application;

  MapBuilder<String, AgentAppEventStepStatesValue>? _stepInputs;
  MapBuilder<String, AgentAppEventStepStatesValue> get stepInputs =>
      _$this._stepInputs ??= MapBuilder<String, AgentAppEventStepStatesValue>();
  set stepInputs(
    MapBuilder<String, AgentAppEventStepStatesValue>? stepInputs,
  ) => _$this._stepInputs = stepInputs;

  EntityId? _relatedEntityId;
  EntityId? get relatedEntityId => _$this._relatedEntityId;
  set relatedEntityId(EntityId? relatedEntityId) =>
      _$this._relatedEntityId = relatedEntityId;

  String? _bulkActionId;
  String? get bulkActionId => _$this._bulkActionId;
  set bulkActionId(String? bulkActionId) => _$this._bulkActionId = bulkActionId;

  bool? _skipProfileRefetch;
  bool? get skipProfileRefetch => _$this._skipProfileRefetch;
  set skipProfileRefetch(bool? skipProfileRefetch) =>
      _$this._skipProfileRefetch = skipProfileRefetch;

  AgentAppEventRequestBuilder() {
    AgentAppEventRequest._defaults(this);
  }

  AgentAppEventRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actionType = $v.actionType;
      _application = $v.application?.toBuilder();
      _stepInputs = $v.stepInputs?.toBuilder();
      _relatedEntityId = $v.relatedEntityId;
      _bulkActionId = $v.bulkActionId;
      _skipProfileRefetch = $v.skipProfileRefetch;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentAppEventRequest other) {
    _$v = other as _$AgentAppEventRequest;
  }

  @override
  void update(void Function(AgentAppEventRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppEventRequest build() => _build();

  _$AgentAppEventRequest _build() {
    _$AgentAppEventRequest _$result;
    try {
      _$result =
          _$v ??
          _$AgentAppEventRequest._(
            actionType: actionType,
            application: _application?.build(),
            stepInputs: _stepInputs?.build(),
            relatedEntityId: relatedEntityId,
            bulkActionId: bulkActionId,
            skipProfileRefetch: skipProfileRefetch,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'application';
        _application?.build();
        _$failedField = 'stepInputs';
        _stepInputs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentAppEventRequest',
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
