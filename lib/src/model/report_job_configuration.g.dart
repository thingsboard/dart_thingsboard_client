// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_job_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportJobConfiguration extends ReportJobConfiguration {
  @override
  final RuleNode? ruleNode;
  @override
  final BuiltList<NotificationRequest>? notificationRequests;
  @override
  final String? queueName;
  @override
  final EntityInfo? schedulerEventInfo;
  @override
  final String? timezone;
  @override
  final EntityId? originator;
  @override
  final String? outputTbMsgProto;
  @override
  final ReportTemplateId? reportTemplateId;
  @override
  final NotificationTemplateId? notificationTemplateId;
  @override
  final UserId? userId;
  @override
  final BuiltList<String>? targets;
  @override
  final bool? makePublic;
  @override
  final String tasksKey;
  @override
  final BuiltList<TaskResult>? toReprocess;
  @override
  final String type;

  factory _$ReportJobConfiguration([
    void Function(ReportJobConfigurationBuilder)? updates,
  ]) => (ReportJobConfigurationBuilder()..update(updates))._build();

  _$ReportJobConfiguration._({
    this.ruleNode,
    this.notificationRequests,
    this.queueName,
    this.schedulerEventInfo,
    this.timezone,
    this.originator,
    this.outputTbMsgProto,
    this.reportTemplateId,
    this.notificationTemplateId,
    this.userId,
    this.targets,
    this.makePublic,
    required this.tasksKey,
    this.toReprocess,
    required this.type,
  }) : super._();
  @override
  ReportJobConfiguration rebuild(
    void Function(ReportJobConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportJobConfigurationBuilder toBuilder() =>
      ReportJobConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportJobConfiguration &&
        ruleNode == other.ruleNode &&
        notificationRequests == other.notificationRequests &&
        queueName == other.queueName &&
        schedulerEventInfo == other.schedulerEventInfo &&
        timezone == other.timezone &&
        originator == other.originator &&
        outputTbMsgProto == other.outputTbMsgProto &&
        reportTemplateId == other.reportTemplateId &&
        notificationTemplateId == other.notificationTemplateId &&
        userId == other.userId &&
        targets == other.targets &&
        makePublic == other.makePublic &&
        tasksKey == other.tasksKey &&
        toReprocess == other.toReprocess &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleNode.hashCode);
    _$hash = $jc(_$hash, notificationRequests.hashCode);
    _$hash = $jc(_$hash, queueName.hashCode);
    _$hash = $jc(_$hash, schedulerEventInfo.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, originator.hashCode);
    _$hash = $jc(_$hash, outputTbMsgProto.hashCode);
    _$hash = $jc(_$hash, reportTemplateId.hashCode);
    _$hash = $jc(_$hash, notificationTemplateId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, targets.hashCode);
    _$hash = $jc(_$hash, makePublic.hashCode);
    _$hash = $jc(_$hash, tasksKey.hashCode);
    _$hash = $jc(_$hash, toReprocess.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportJobConfiguration')
          ..add('ruleNode', ruleNode)
          ..add('notificationRequests', notificationRequests)
          ..add('queueName', queueName)
          ..add('schedulerEventInfo', schedulerEventInfo)
          ..add('timezone', timezone)
          ..add('originator', originator)
          ..add('outputTbMsgProto', outputTbMsgProto)
          ..add('reportTemplateId', reportTemplateId)
          ..add('notificationTemplateId', notificationTemplateId)
          ..add('userId', userId)
          ..add('targets', targets)
          ..add('makePublic', makePublic)
          ..add('tasksKey', tasksKey)
          ..add('toReprocess', toReprocess)
          ..add('type', type))
        .toString();
  }
}

class ReportJobConfigurationBuilder
    implements
        Builder<ReportJobConfiguration, ReportJobConfigurationBuilder>,
        JobConfigurationBuilder {
  _$ReportJobConfiguration? _$v;

  RuleNodeBuilder? _ruleNode;
  RuleNodeBuilder get ruleNode => _$this._ruleNode ??= RuleNodeBuilder();
  set ruleNode(covariant RuleNodeBuilder? ruleNode) =>
      _$this._ruleNode = ruleNode;

  ListBuilder<NotificationRequest>? _notificationRequests;
  ListBuilder<NotificationRequest> get notificationRequests =>
      _$this._notificationRequests ??= ListBuilder<NotificationRequest>();
  set notificationRequests(
    covariant ListBuilder<NotificationRequest>? notificationRequests,
  ) => _$this._notificationRequests = notificationRequests;

  String? _queueName;
  String? get queueName => _$this._queueName;
  set queueName(covariant String? queueName) => _$this._queueName = queueName;

  EntityInfoBuilder? _schedulerEventInfo;
  EntityInfoBuilder get schedulerEventInfo =>
      _$this._schedulerEventInfo ??= EntityInfoBuilder();
  set schedulerEventInfo(covariant EntityInfoBuilder? schedulerEventInfo) =>
      _$this._schedulerEventInfo = schedulerEventInfo;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(covariant String? timezone) => _$this._timezone = timezone;

  EntityId? _originator;
  EntityId? get originator => _$this._originator;
  set originator(covariant EntityId? originator) =>
      _$this._originator = originator;

  String? _outputTbMsgProto;
  String? get outputTbMsgProto => _$this._outputTbMsgProto;
  set outputTbMsgProto(covariant String? outputTbMsgProto) =>
      _$this._outputTbMsgProto = outputTbMsgProto;

  ReportTemplateIdBuilder? _reportTemplateId;
  ReportTemplateIdBuilder get reportTemplateId =>
      _$this._reportTemplateId ??= ReportTemplateIdBuilder();
  set reportTemplateId(covariant ReportTemplateIdBuilder? reportTemplateId) =>
      _$this._reportTemplateId = reportTemplateId;

  NotificationTemplateIdBuilder? _notificationTemplateId;
  NotificationTemplateIdBuilder get notificationTemplateId =>
      _$this._notificationTemplateId ??= NotificationTemplateIdBuilder();
  set notificationTemplateId(
    covariant NotificationTemplateIdBuilder? notificationTemplateId,
  ) => _$this._notificationTemplateId = notificationTemplateId;

  UserIdBuilder? _userId;
  UserIdBuilder get userId => _$this._userId ??= UserIdBuilder();
  set userId(covariant UserIdBuilder? userId) => _$this._userId = userId;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  bool? _makePublic;
  bool? get makePublic => _$this._makePublic;
  set makePublic(covariant bool? makePublic) => _$this._makePublic = makePublic;

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

  ReportJobConfigurationBuilder() {
    ReportJobConfiguration._defaults(this);
  }

  ReportJobConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleNode = $v.ruleNode?.toBuilder();
      _notificationRequests = $v.notificationRequests?.toBuilder();
      _queueName = $v.queueName;
      _schedulerEventInfo = $v.schedulerEventInfo?.toBuilder();
      _timezone = $v.timezone;
      _originator = $v.originator;
      _outputTbMsgProto = $v.outputTbMsgProto;
      _reportTemplateId = $v.reportTemplateId?.toBuilder();
      _notificationTemplateId = $v.notificationTemplateId?.toBuilder();
      _userId = $v.userId?.toBuilder();
      _targets = $v.targets?.toBuilder();
      _makePublic = $v.makePublic;
      _tasksKey = $v.tasksKey;
      _toReprocess = $v.toReprocess?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ReportJobConfiguration other) {
    _$v = other as _$ReportJobConfiguration;
  }

  @override
  void update(void Function(ReportJobConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportJobConfiguration build() => _build();

  _$ReportJobConfiguration _build() {
    _$ReportJobConfiguration _$result;
    try {
      _$result =
          _$v ??
          _$ReportJobConfiguration._(
            ruleNode: _ruleNode?.build(),
            notificationRequests: _notificationRequests?.build(),
            queueName: queueName,
            schedulerEventInfo: _schedulerEventInfo?.build(),
            timezone: timezone,
            originator: originator,
            outputTbMsgProto: outputTbMsgProto,
            reportTemplateId: _reportTemplateId?.build(),
            notificationTemplateId: _notificationTemplateId?.build(),
            userId: _userId?.build(),
            targets: _targets?.build(),
            makePublic: makePublic,
            tasksKey: BuiltValueNullFieldError.checkNotNull(
              tasksKey,
              r'ReportJobConfiguration',
              'tasksKey',
            ),
            toReprocess: _toReprocess?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ReportJobConfiguration',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleNode';
        _ruleNode?.build();
        _$failedField = 'notificationRequests';
        _notificationRequests?.build();

        _$failedField = 'schedulerEventInfo';
        _schedulerEventInfo?.build();

        _$failedField = 'reportTemplateId';
        _reportTemplateId?.build();
        _$failedField = 'notificationTemplateId';
        _notificationTemplateId?.build();
        _$failedField = 'userId';
        _userId?.build();
        _$failedField = 'targets';
        _targets?.build();

        _$failedField = 'toReprocess';
        _toReprocess?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportJobConfiguration',
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
