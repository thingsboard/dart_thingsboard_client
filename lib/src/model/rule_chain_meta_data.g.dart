// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_chain_meta_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleChainMetaData extends RuleChainMetaData {
  @override
  final RuleChainId ruleChainId;
  @override
  final int? version;
  @override
  final int firstNodeIndex;
  @override
  final BuiltList<RuleNode> nodes;
  @override
  final BuiltList<NodeConnectionInfo> connections;
  @override
  final BuiltList<RuleChainConnectionInfo> ruleChainConnections;
  @override
  final BuiltList<RuleChainNote>? notes;

  factory _$RuleChainMetaData([
    void Function(RuleChainMetaDataBuilder)? updates,
  ]) => (RuleChainMetaDataBuilder()..update(updates))._build();

  _$RuleChainMetaData._({
    required this.ruleChainId,
    this.version,
    required this.firstNodeIndex,
    required this.nodes,
    required this.connections,
    required this.ruleChainConnections,
    this.notes,
  }) : super._();
  @override
  RuleChainMetaData rebuild(void Function(RuleChainMetaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleChainMetaDataBuilder toBuilder() =>
      RuleChainMetaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleChainMetaData &&
        ruleChainId == other.ruleChainId &&
        version == other.version &&
        firstNodeIndex == other.firstNodeIndex &&
        nodes == other.nodes &&
        connections == other.connections &&
        ruleChainConnections == other.ruleChainConnections &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ruleChainId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, firstNodeIndex.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jc(_$hash, connections.hashCode);
    _$hash = $jc(_$hash, ruleChainConnections.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleChainMetaData')
          ..add('ruleChainId', ruleChainId)
          ..add('version', version)
          ..add('firstNodeIndex', firstNodeIndex)
          ..add('nodes', nodes)
          ..add('connections', connections)
          ..add('ruleChainConnections', ruleChainConnections)
          ..add('notes', notes))
        .toString();
  }
}

class RuleChainMetaDataBuilder
    implements Builder<RuleChainMetaData, RuleChainMetaDataBuilder> {
  _$RuleChainMetaData? _$v;

  RuleChainIdBuilder? _ruleChainId;
  RuleChainIdBuilder get ruleChainId =>
      _$this._ruleChainId ??= RuleChainIdBuilder();
  set ruleChainId(RuleChainIdBuilder? ruleChainId) =>
      _$this._ruleChainId = ruleChainId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  int? _firstNodeIndex;
  int? get firstNodeIndex => _$this._firstNodeIndex;
  set firstNodeIndex(int? firstNodeIndex) =>
      _$this._firstNodeIndex = firstNodeIndex;

  ListBuilder<RuleNode>? _nodes;
  ListBuilder<RuleNode> get nodes => _$this._nodes ??= ListBuilder<RuleNode>();
  set nodes(ListBuilder<RuleNode>? nodes) => _$this._nodes = nodes;

  ListBuilder<NodeConnectionInfo>? _connections;
  ListBuilder<NodeConnectionInfo> get connections =>
      _$this._connections ??= ListBuilder<NodeConnectionInfo>();
  set connections(ListBuilder<NodeConnectionInfo>? connections) =>
      _$this._connections = connections;

  ListBuilder<RuleChainConnectionInfo>? _ruleChainConnections;
  ListBuilder<RuleChainConnectionInfo> get ruleChainConnections =>
      _$this._ruleChainConnections ??= ListBuilder<RuleChainConnectionInfo>();
  set ruleChainConnections(
    ListBuilder<RuleChainConnectionInfo>? ruleChainConnections,
  ) => _$this._ruleChainConnections = ruleChainConnections;

  ListBuilder<RuleChainNote>? _notes;
  ListBuilder<RuleChainNote> get notes =>
      _$this._notes ??= ListBuilder<RuleChainNote>();
  set notes(ListBuilder<RuleChainNote>? notes) => _$this._notes = notes;

  RuleChainMetaDataBuilder() {
    RuleChainMetaData._defaults(this);
  }

  RuleChainMetaDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ruleChainId = $v.ruleChainId.toBuilder();
      _version = $v.version;
      _firstNodeIndex = $v.firstNodeIndex;
      _nodes = $v.nodes.toBuilder();
      _connections = $v.connections.toBuilder();
      _ruleChainConnections = $v.ruleChainConnections.toBuilder();
      _notes = $v.notes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleChainMetaData other) {
    _$v = other as _$RuleChainMetaData;
  }

  @override
  void update(void Function(RuleChainMetaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleChainMetaData build() => _build();

  _$RuleChainMetaData _build() {
    _$RuleChainMetaData _$result;
    try {
      _$result =
          _$v ??
          _$RuleChainMetaData._(
            ruleChainId: ruleChainId.build(),
            version: version,
            firstNodeIndex: BuiltValueNullFieldError.checkNotNull(
              firstNodeIndex,
              r'RuleChainMetaData',
              'firstNodeIndex',
            ),
            nodes: nodes.build(),
            connections: connections.build(),
            ruleChainConnections: ruleChainConnections.build(),
            notes: _notes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleChainId';
        ruleChainId.build();

        _$failedField = 'nodes';
        nodes.build();
        _$failedField = 'connections';
        connections.build();
        _$failedField = 'ruleChainConnections';
        ruleChainConnections.build();
        _$failedField = 'notes';
        _notes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleChainMetaData',
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
