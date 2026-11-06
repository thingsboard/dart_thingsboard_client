// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_chain_output_labels_usage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleChainOutputLabelsUsage extends RuleChainOutputLabelsUsage {
  @override
  final RuleChainId ruleChainId;
  @override
  final RuleNodeId ruleNodeId;
  @override
  final String ruleChainName;
  @override
  final String ruleNodeName;
  @override
  final BuiltSet<String> labels;

  factory _$RuleChainOutputLabelsUsage([
    void Function(RuleChainOutputLabelsUsageBuilder)? updates,
  ]) => (RuleChainOutputLabelsUsageBuilder()..update(updates))._build();

  _$RuleChainOutputLabelsUsage._({
    required this.ruleChainId,
    required this.ruleNodeId,
    required this.ruleChainName,
    required this.ruleNodeName,
    required this.labels,
  }) : super._();
  @override
  RuleChainOutputLabelsUsage rebuild(
    void Function(RuleChainOutputLabelsUsageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleChainOutputLabelsUsageBuilder toBuilder() =>
      RuleChainOutputLabelsUsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleChainOutputLabelsUsage &&
        ruleChainId == other.ruleChainId &&
        ruleNodeId == other.ruleNodeId &&
        ruleChainName == other.ruleChainName &&
        ruleNodeName == other.ruleNodeName &&
        labels == other.labels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleChainId.hashCode);
    _$hash = $jc(_$hash, ruleNodeId.hashCode);
    _$hash = $jc(_$hash, ruleChainName.hashCode);
    _$hash = $jc(_$hash, ruleNodeName.hashCode);
    _$hash = $jc(_$hash, labels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleChainOutputLabelsUsage')
          ..add('ruleChainId', ruleChainId)
          ..add('ruleNodeId', ruleNodeId)
          ..add('ruleChainName', ruleChainName)
          ..add('ruleNodeName', ruleNodeName)
          ..add('labels', labels))
        .toString();
  }
}

class RuleChainOutputLabelsUsageBuilder
    implements
        Builder<RuleChainOutputLabelsUsage, RuleChainOutputLabelsUsageBuilder> {
  _$RuleChainOutputLabelsUsage? _$v;

  RuleChainIdBuilder? _ruleChainId;
  RuleChainIdBuilder get ruleChainId =>
      _$this._ruleChainId ??= RuleChainIdBuilder();
  set ruleChainId(RuleChainIdBuilder? ruleChainId) =>
      _$this._ruleChainId = ruleChainId;

  RuleNodeIdBuilder? _ruleNodeId;
  RuleNodeIdBuilder get ruleNodeId =>
      _$this._ruleNodeId ??= RuleNodeIdBuilder();
  set ruleNodeId(RuleNodeIdBuilder? ruleNodeId) =>
      _$this._ruleNodeId = ruleNodeId;

  String? _ruleChainName;
  String? get ruleChainName => _$this._ruleChainName;
  set ruleChainName(String? ruleChainName) =>
      _$this._ruleChainName = ruleChainName;

  String? _ruleNodeName;
  String? get ruleNodeName => _$this._ruleNodeName;
  set ruleNodeName(String? ruleNodeName) => _$this._ruleNodeName = ruleNodeName;

  SetBuilder<String>? _labels;
  SetBuilder<String> get labels => _$this._labels ??= SetBuilder<String>();
  set labels(SetBuilder<String>? labels) => _$this._labels = labels;

  RuleChainOutputLabelsUsageBuilder() {
    RuleChainOutputLabelsUsage._defaults(this);
  }

  RuleChainOutputLabelsUsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleChainId = $v.ruleChainId.toBuilder();
      _ruleNodeId = $v.ruleNodeId.toBuilder();
      _ruleChainName = $v.ruleChainName;
      _ruleNodeName = $v.ruleNodeName;
      _labels = $v.labels.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleChainOutputLabelsUsage other) {
    _$v = other as _$RuleChainOutputLabelsUsage;
  }

  @override
  void update(void Function(RuleChainOutputLabelsUsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleChainOutputLabelsUsage build() => _build();

  _$RuleChainOutputLabelsUsage _build() {
    _$RuleChainOutputLabelsUsage _$result;
    try {
      _$result =
          _$v ??
          _$RuleChainOutputLabelsUsage._(
            ruleChainId: ruleChainId.build(),
            ruleNodeId: ruleNodeId.build(),
            ruleChainName: BuiltValueNullFieldError.checkNotNull(
              ruleChainName,
              r'RuleChainOutputLabelsUsage',
              'ruleChainName',
            ),
            ruleNodeName: BuiltValueNullFieldError.checkNotNull(
              ruleNodeName,
              r'RuleChainOutputLabelsUsage',
              'ruleNodeName',
            ),
            labels: labels.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleChainId';
        ruleChainId.build();
        _$failedField = 'ruleNodeId';
        ruleNodeId.build();

        _$failedField = 'labels';
        labels.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleChainOutputLabelsUsage',
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
