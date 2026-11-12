// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cf_reprocessing_job_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CfReprocessingJobConfiguration extends CfReprocessingJobConfiguration {
  @override
  final CalculatedFieldId calculatedFieldId;
  @override
  final int? endTs;
  @override
  final String? calculatedFieldName;
  @override
  final int? startTs;
  @override
  final String tasksKey;
  @override
  final BuiltList<TaskResult>? toReprocess;
  @override
  final String type;

  factory _$CfReprocessingJobConfiguration([
    void Function(CfReprocessingJobConfigurationBuilder)? updates,
  ]) => (CfReprocessingJobConfigurationBuilder()..update(updates))._build();

  _$CfReprocessingJobConfiguration._({
    required this.calculatedFieldId,
    this.endTs,
    this.calculatedFieldName,
    this.startTs,
    required this.tasksKey,
    this.toReprocess,
    required this.type,
  }) : super._();
  @override
  CfReprocessingJobConfiguration rebuild(
    void Function(CfReprocessingJobConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CfReprocessingJobConfigurationBuilder toBuilder() =>
      CfReprocessingJobConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CfReprocessingJobConfiguration &&
        calculatedFieldId == other.calculatedFieldId &&
        endTs == other.endTs &&
        calculatedFieldName == other.calculatedFieldName &&
        startTs == other.startTs &&
        tasksKey == other.tasksKey &&
        toReprocess == other.toReprocess &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, calculatedFieldId.hashCode);
    _$hash = $jc(_$hash, endTs.hashCode);
    _$hash = $jc(_$hash, calculatedFieldName.hashCode);
    _$hash = $jc(_$hash, startTs.hashCode);
    _$hash = $jc(_$hash, tasksKey.hashCode);
    _$hash = $jc(_$hash, toReprocess.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CfReprocessingJobConfiguration')
          ..add('calculatedFieldId', calculatedFieldId)
          ..add('endTs', endTs)
          ..add('calculatedFieldName', calculatedFieldName)
          ..add('startTs', startTs)
          ..add('tasksKey', tasksKey)
          ..add('toReprocess', toReprocess)
          ..add('type', type))
        .toString();
  }
}

class CfReprocessingJobConfigurationBuilder
    implements
        Builder<
          CfReprocessingJobConfiguration,
          CfReprocessingJobConfigurationBuilder
        >,
        JobConfigurationBuilder {
  _$CfReprocessingJobConfiguration? _$v;

  CalculatedFieldIdBuilder? _calculatedFieldId;
  CalculatedFieldIdBuilder get calculatedFieldId =>
      _$this._calculatedFieldId ??= CalculatedFieldIdBuilder();
  set calculatedFieldId(
    covariant CalculatedFieldIdBuilder? calculatedFieldId,
  ) => _$this._calculatedFieldId = calculatedFieldId;

  int? _endTs;
  int? get endTs => _$this._endTs;
  set endTs(covariant int? endTs) => _$this._endTs = endTs;

  String? _calculatedFieldName;
  String? get calculatedFieldName => _$this._calculatedFieldName;
  set calculatedFieldName(covariant String? calculatedFieldName) =>
      _$this._calculatedFieldName = calculatedFieldName;

  int? _startTs;
  int? get startTs => _$this._startTs;
  set startTs(covariant int? startTs) => _$this._startTs = startTs;

  String? _tasksKey;
  String? get tasksKey => _$this._tasksKey;
  set tasksKey(covariant String? tasksKey) => _$this._tasksKey = tasksKey;

  ListBuilder<TaskResult>? _toReprocess;
  ListBuilder<TaskResult> get toReprocess =>
      _$this._toReprocess ??= ListBuilder<TaskResult>();
  set toReprocess(covariant ListBuilder<TaskResult>? toReprocess) =>
      _$this._toReprocess = toReprocess;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  CfReprocessingJobConfigurationBuilder() {
    CfReprocessingJobConfiguration._defaults(this);
  }

  CfReprocessingJobConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _calculatedFieldId = $v.calculatedFieldId.toBuilder();
      _endTs = $v.endTs;
      _calculatedFieldName = $v.calculatedFieldName;
      _startTs = $v.startTs;
      _tasksKey = $v.tasksKey;
      _toReprocess = $v.toReprocess?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CfReprocessingJobConfiguration other) {
    _$v = other as _$CfReprocessingJobConfiguration;
  }

  @override
  void update(void Function(CfReprocessingJobConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CfReprocessingJobConfiguration build() => _build();

  _$CfReprocessingJobConfiguration _build() {
    _$CfReprocessingJobConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$CfReprocessingJobConfiguration._(
            calculatedFieldId: calculatedFieldId.build(),
            endTs: endTs,
            calculatedFieldName: calculatedFieldName,
            startTs: startTs,
            tasksKey: BuiltValueNullFieldError.checkNotNull(
              tasksKey,
              r'CfReprocessingJobConfiguration',
              'tasksKey',
            ),
            toReprocess: _toReprocess?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'CfReprocessingJobConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'calculatedFieldId';
        calculatedFieldId.build();

        _$failedField = 'toReprocess';
        _toReprocess?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CfReprocessingJobConfiguration',
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
