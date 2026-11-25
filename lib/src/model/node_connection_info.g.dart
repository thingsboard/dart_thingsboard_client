// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_connection_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NodeConnectionInfo extends NodeConnectionInfo {
  @override
  final int fromIndex;
  @override
  final int toIndex;
  @override
  final String type;

  factory _$NodeConnectionInfo([
    void Function(NodeConnectionInfoBuilder)? updates,
  ]) => (NodeConnectionInfoBuilder()..update(updates))._build();

  _$NodeConnectionInfo._({
    required this.fromIndex,
    required this.toIndex,
    required this.type,
  }) : super._();
  @override
  NodeConnectionInfo rebuild(
    void Function(NodeConnectionInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NodeConnectionInfoBuilder toBuilder() =>
      NodeConnectionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NodeConnectionInfo &&
        fromIndex == other.fromIndex &&
        toIndex == other.toIndex &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromIndex.hashCode);
    _$hash = $jc(_$hash, toIndex.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NodeConnectionInfo')
          ..add('fromIndex', fromIndex)
          ..add('toIndex', toIndex)
          ..add('type', type))
        .toString();
  }
}

class NodeConnectionInfoBuilder
    implements Builder<NodeConnectionInfo, NodeConnectionInfoBuilder> {
  _$NodeConnectionInfo? _$v;

  int? _fromIndex;
  int? get fromIndex => _$this._fromIndex;
  set fromIndex(int? fromIndex) => _$this._fromIndex = fromIndex;

  int? _toIndex;
  int? get toIndex => _$this._toIndex;
  set toIndex(int? toIndex) => _$this._toIndex = toIndex;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  NodeConnectionInfoBuilder() {
    NodeConnectionInfo._defaults(this);
  }

  NodeConnectionInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromIndex = $v.fromIndex;
      _toIndex = $v.toIndex;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NodeConnectionInfo other) {
    _$v = other as _$NodeConnectionInfo;
  }

  @override
  void update(void Function(NodeConnectionInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NodeConnectionInfo build() => _build();

  _$NodeConnectionInfo _build() {
    final _$result =
        _$v ??
        _$NodeConnectionInfo._(
          fromIndex: BuiltValueNullFieldError.checkNotNull(
            fromIndex,
            r'NodeConnectionInfo',
            'fromIndex',
          ),
          toIndex: BuiltValueNullFieldError.checkNotNull(
            toIndex,
            r'NodeConnectionInfo',
            'toIndex',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'NodeConnectionInfo',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
