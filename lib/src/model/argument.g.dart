// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'argument.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Argument extends Argument {
  @override
  final EntityId? refEntityId;
  @override
  final CfArgumentDynamicSourceConfiguration? refDynamicSourceConfiguration;
  @override
  final ReferencedEntityKey? refEntityKey;
  @override
  final String? defaultValue;
  @override
  final int? limit;
  @override
  final int? timeWindow;

  factory _$Argument([void Function(ArgumentBuilder)? updates]) =>
      (ArgumentBuilder()..update(updates))._build();

  _$Argument._({
    this.refEntityId,
    this.refDynamicSourceConfiguration,
    this.refEntityKey,
    this.defaultValue,
    this.limit,
    this.timeWindow,
  }) : super._();
  @override
  Argument rebuild(void Function(ArgumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArgumentBuilder toBuilder() => ArgumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Argument &&
        refEntityId == other.refEntityId &&
        refDynamicSourceConfiguration == other.refDynamicSourceConfiguration &&
        refEntityKey == other.refEntityKey &&
        defaultValue == other.defaultValue &&
        limit == other.limit &&
        timeWindow == other.timeWindow;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refEntityId.hashCode);
    _$hash = $jc(_$hash, refDynamicSourceConfiguration.hashCode);
    _$hash = $jc(_$hash, refEntityKey.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, timeWindow.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Argument')
          ..add('refEntityId', refEntityId)
          ..add('refDynamicSourceConfiguration', refDynamicSourceConfiguration)
          ..add('refEntityKey', refEntityKey)
          ..add('defaultValue', defaultValue)
          ..add('limit', limit)
          ..add('timeWindow', timeWindow))
        .toString();
  }
}

class ArgumentBuilder implements Builder<Argument, ArgumentBuilder> {
  _$Argument? _$v;

  EntityId? _refEntityId;
  EntityId? get refEntityId => _$this._refEntityId;
  set refEntityId(EntityId? refEntityId) => _$this._refEntityId = refEntityId;

  CfArgumentDynamicSourceConfiguration? _refDynamicSourceConfiguration;
  CfArgumentDynamicSourceConfiguration? get refDynamicSourceConfiguration =>
      _$this._refDynamicSourceConfiguration;
  set refDynamicSourceConfiguration(
    CfArgumentDynamicSourceConfiguration? refDynamicSourceConfiguration,
  ) => _$this._refDynamicSourceConfiguration = refDynamicSourceConfiguration;

  ReferencedEntityKeyBuilder? _refEntityKey;
  ReferencedEntityKeyBuilder get refEntityKey =>
      _$this._refEntityKey ??= ReferencedEntityKeyBuilder();
  set refEntityKey(ReferencedEntityKeyBuilder? refEntityKey) =>
      _$this._refEntityKey = refEntityKey;

  String? _defaultValue;
  String? get defaultValue => _$this._defaultValue;
  set defaultValue(String? defaultValue) => _$this._defaultValue = defaultValue;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _timeWindow;
  int? get timeWindow => _$this._timeWindow;
  set timeWindow(int? timeWindow) => _$this._timeWindow = timeWindow;

  ArgumentBuilder() {
    Argument._defaults(this);
  }

  ArgumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refEntityId = $v.refEntityId;
      _refDynamicSourceConfiguration = $v.refDynamicSourceConfiguration;
      _refEntityKey = $v.refEntityKey?.toBuilder();
      _defaultValue = $v.defaultValue;
      _limit = $v.limit;
      _timeWindow = $v.timeWindow;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Argument other) {
    _$v = other as _$Argument;
  }

  @override
  void update(void Function(ArgumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Argument build() => _build();

  _$Argument _build() {
    _$Argument _$result;
    try {
      _$result =
          _$v ??
          _$Argument._(
            refEntityId: refEntityId,
            refDynamicSourceConfiguration: refDynamicSourceConfiguration,
            refEntityKey: _refEntityKey?.build(),
            defaultValue: defaultValue,
            limit: limit,
            timeWindow: timeWindow,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refEntityKey';
        _refEntityKey?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Argument',
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
