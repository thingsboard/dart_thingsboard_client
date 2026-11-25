// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_chain_connection_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleChainConnectionInfo extends RuleChainConnectionInfo {
  @override
  final int fromIndex;
  @override
  final RuleChainId targetRuleChainId;
  @override
  final JsonObject? additionalInfo;
  @override
  final String type;

  factory _$RuleChainConnectionInfo([
    void Function(RuleChainConnectionInfoBuilder)? updates,
  ]) => (RuleChainConnectionInfoBuilder()..update(updates))._build();

  _$RuleChainConnectionInfo._({
    required this.fromIndex,
    required this.targetRuleChainId,
    this.additionalInfo,
    required this.type,
  }) : super._();
  @override
  RuleChainConnectionInfo rebuild(
    void Function(RuleChainConnectionInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleChainConnectionInfoBuilder toBuilder() =>
      RuleChainConnectionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleChainConnectionInfo &&
        fromIndex == other.fromIndex &&
        targetRuleChainId == other.targetRuleChainId &&
        additionalInfo == other.additionalInfo &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromIndex.hashCode);
    _$hash = $jc(_$hash, targetRuleChainId.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleChainConnectionInfo')
          ..add('fromIndex', fromIndex)
          ..add('targetRuleChainId', targetRuleChainId)
          ..add('additionalInfo', additionalInfo)
          ..add('type', type))
        .toString();
  }
}

class RuleChainConnectionInfoBuilder
    implements
        Builder<RuleChainConnectionInfo, RuleChainConnectionInfoBuilder> {
  _$RuleChainConnectionInfo? _$v;

  int? _fromIndex;
  int? get fromIndex => _$this._fromIndex;
  set fromIndex(int? fromIndex) => _$this._fromIndex = fromIndex;

  RuleChainIdBuilder? _targetRuleChainId;
  RuleChainIdBuilder get targetRuleChainId =>
      _$this._targetRuleChainId ??= RuleChainIdBuilder();
  set targetRuleChainId(RuleChainIdBuilder? targetRuleChainId) =>
      _$this._targetRuleChainId = targetRuleChainId;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  RuleChainConnectionInfoBuilder() {
    RuleChainConnectionInfo._defaults(this);
  }

  RuleChainConnectionInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromIndex = $v.fromIndex;
      _targetRuleChainId = $v.targetRuleChainId.toBuilder();
      _additionalInfo = $v.additionalInfo;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleChainConnectionInfo other) {
    _$v = other as _$RuleChainConnectionInfo;
  }

  @override
  void update(void Function(RuleChainConnectionInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleChainConnectionInfo build() => _build();

  _$RuleChainConnectionInfo _build() {
    _$RuleChainConnectionInfo _$result;
    try {
      _$result =
          _$v ??
          _$RuleChainConnectionInfo._(
            fromIndex: BuiltValueNullFieldError.checkNotNull(
              fromIndex,
              r'RuleChainConnectionInfo',
              'fromIndex',
            ),
            targetRuleChainId: targetRuleChainId.build(),
            additionalInfo: additionalInfo,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'RuleChainConnectionInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetRuleChainId';
        targetRuleChainId.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleChainConnectionInfo',
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
