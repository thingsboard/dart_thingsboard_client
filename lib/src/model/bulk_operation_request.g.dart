// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_operation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkOperationRequest extends BulkOperationRequest {
  @override
  final AgentAppEventActionType? actionType;
  @override
  final BuiltMap<String, AgentAppEventStepStatesValue>? stepInputs;

  factory _$BulkOperationRequest([
    void Function(BulkOperationRequestBuilder)? updates,
  ]) => (BulkOperationRequestBuilder()..update(updates))._build();

  _$BulkOperationRequest._({this.actionType, this.stepInputs}) : super._();
  @override
  BulkOperationRequest rebuild(
    void Function(BulkOperationRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BulkOperationRequestBuilder toBuilder() =>
      BulkOperationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkOperationRequest &&
        actionType == other.actionType &&
        stepInputs == other.stepInputs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actionType.hashCode);
    _$hash = $jc(_$hash, stepInputs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkOperationRequest')
          ..add('actionType', actionType)
          ..add('stepInputs', stepInputs))
        .toString();
  }
}

class BulkOperationRequestBuilder
    implements Builder<BulkOperationRequest, BulkOperationRequestBuilder> {
  _$BulkOperationRequest? _$v;

  AgentAppEventActionType? _actionType;
  AgentAppEventActionType? get actionType => _$this._actionType;
  set actionType(AgentAppEventActionType? actionType) =>
      _$this._actionType = actionType;

  MapBuilder<String, AgentAppEventStepStatesValue>? _stepInputs;
  MapBuilder<String, AgentAppEventStepStatesValue> get stepInputs =>
      _$this._stepInputs ??= MapBuilder<String, AgentAppEventStepStatesValue>();
  set stepInputs(
    MapBuilder<String, AgentAppEventStepStatesValue>? stepInputs,
  ) => _$this._stepInputs = stepInputs;

  BulkOperationRequestBuilder() {
    BulkOperationRequest._defaults(this);
  }

  BulkOperationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actionType = $v.actionType;
      _stepInputs = $v.stepInputs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkOperationRequest other) {
    _$v = other as _$BulkOperationRequest;
  }

  @override
  void update(void Function(BulkOperationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkOperationRequest build() => _build();

  _$BulkOperationRequest _build() {
    _$BulkOperationRequest _$result;
    try {
      _$result =
          _$v ??
          _$BulkOperationRequest._(
            actionType: actionType,
            stepInputs: _stepInputs?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stepInputs';
        _stepInputs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BulkOperationRequest',
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
