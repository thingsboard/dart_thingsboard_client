// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_immediate_output_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributesImmediateOutputStrategy
    extends AttributesImmediateOutputStrategy {
  @override
  final bool? sendWsUpdate;
  @override
  final bool? saveAttribute;
  @override
  final bool? processCfs;
  @override
  final bool? sendAttributesUpdatedNotification;
  @override
  final bool? updateAttributesOnlyOnValueChange;
  @override
  final String type;

  factory _$AttributesImmediateOutputStrategy([
    void Function(AttributesImmediateOutputStrategyBuilder)? updates,
  ]) => (AttributesImmediateOutputStrategyBuilder()..update(updates))._build();

  _$AttributesImmediateOutputStrategy._({
    this.sendWsUpdate,
    this.saveAttribute,
    this.processCfs,
    this.sendAttributesUpdatedNotification,
    this.updateAttributesOnlyOnValueChange,
    required this.type,
  }) : super._();
  @override
  AttributesImmediateOutputStrategy rebuild(
    void Function(AttributesImmediateOutputStrategyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttributesImmediateOutputStrategyBuilder toBuilder() =>
      AttributesImmediateOutputStrategyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributesImmediateOutputStrategy &&
        sendWsUpdate == other.sendWsUpdate &&
        saveAttribute == other.saveAttribute &&
        processCfs == other.processCfs &&
        sendAttributesUpdatedNotification ==
            other.sendAttributesUpdatedNotification &&
        updateAttributesOnlyOnValueChange ==
            other.updateAttributesOnlyOnValueChange &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sendWsUpdate.hashCode);
    _$hash = $jc(_$hash, saveAttribute.hashCode);
    _$hash = $jc(_$hash, processCfs.hashCode);
    _$hash = $jc(_$hash, sendAttributesUpdatedNotification.hashCode);
    _$hash = $jc(_$hash, updateAttributesOnlyOnValueChange.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttributesImmediateOutputStrategy')
          ..add('sendWsUpdate', sendWsUpdate)
          ..add('saveAttribute', saveAttribute)
          ..add('processCfs', processCfs)
          ..add(
            'sendAttributesUpdatedNotification',
            sendAttributesUpdatedNotification,
          )
          ..add(
            'updateAttributesOnlyOnValueChange',
            updateAttributesOnlyOnValueChange,
          )
          ..add('type', type))
        .toString();
  }
}

class AttributesImmediateOutputStrategyBuilder
    implements
        Builder<
          AttributesImmediateOutputStrategy,
          AttributesImmediateOutputStrategyBuilder
        >,
        AttributesOutputStrategyBuilder {
  _$AttributesImmediateOutputStrategy? _$v;

  bool? _sendWsUpdate;
  bool? get sendWsUpdate => _$this._sendWsUpdate;
  set sendWsUpdate(covariant bool? sendWsUpdate) =>
      _$this._sendWsUpdate = sendWsUpdate;

  bool? _saveAttribute;
  bool? get saveAttribute => _$this._saveAttribute;
  set saveAttribute(covariant bool? saveAttribute) =>
      _$this._saveAttribute = saveAttribute;

  bool? _processCfs;
  bool? get processCfs => _$this._processCfs;
  set processCfs(covariant bool? processCfs) => _$this._processCfs = processCfs;

  bool? _sendAttributesUpdatedNotification;
  bool? get sendAttributesUpdatedNotification =>
      _$this._sendAttributesUpdatedNotification;
  set sendAttributesUpdatedNotification(
    covariant bool? sendAttributesUpdatedNotification,
  ) => _$this._sendAttributesUpdatedNotification =
      sendAttributesUpdatedNotification;

  bool? _updateAttributesOnlyOnValueChange;
  bool? get updateAttributesOnlyOnValueChange =>
      _$this._updateAttributesOnlyOnValueChange;
  set updateAttributesOnlyOnValueChange(
    covariant bool? updateAttributesOnlyOnValueChange,
  ) => _$this._updateAttributesOnlyOnValueChange =
      updateAttributesOnlyOnValueChange;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AttributesImmediateOutputStrategyBuilder() {
    AttributesImmediateOutputStrategy._defaults(this);
  }

  AttributesImmediateOutputStrategyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sendWsUpdate = $v.sendWsUpdate;
      _saveAttribute = $v.saveAttribute;
      _processCfs = $v.processCfs;
      _sendAttributesUpdatedNotification = $v.sendAttributesUpdatedNotification;
      _updateAttributesOnlyOnValueChange = $v.updateAttributesOnlyOnValueChange;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AttributesImmediateOutputStrategy other) {
    _$v = other as _$AttributesImmediateOutputStrategy;
  }

  @override
  void update(
    void Function(AttributesImmediateOutputStrategyBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AttributesImmediateOutputStrategy build() => _build();

  _$AttributesImmediateOutputStrategy _build() {
    final _$result =
        _$v ??
        _$AttributesImmediateOutputStrategy._(
          sendWsUpdate: sendWsUpdate,
          saveAttribute: saveAttribute,
          processCfs: processCfs,
          sendAttributesUpdatedNotification: sendAttributesUpdatedNotification,
          updateAttributesOnlyOnValueChange: updateAttributesOnlyOnValueChange,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AttributesImmediateOutputStrategy',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
