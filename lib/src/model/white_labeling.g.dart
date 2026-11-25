// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'white_labeling.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WhiteLabeling extends WhiteLabeling {
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final WhiteLabelingType? type;
  @override
  final JsonObject? settings;
  @override
  final DomainId? domainId;

  factory _$WhiteLabeling([void Function(WhiteLabelingBuilder)? updates]) =>
      (WhiteLabelingBuilder()..update(updates))._build();

  _$WhiteLabeling._({
    this.tenantId,
    this.customerId,
    this.type,
    this.settings,
    this.domainId,
  }) : super._();
  @override
  WhiteLabeling rebuild(void Function(WhiteLabelingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WhiteLabelingBuilder toBuilder() => WhiteLabelingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WhiteLabeling &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        type == other.type &&
        settings == other.settings &&
        domainId == other.domainId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jc(_$hash, domainId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WhiteLabeling')
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('type', type)
          ..add('settings', settings)
          ..add('domainId', domainId))
        .toString();
  }
}

class WhiteLabelingBuilder
    implements Builder<WhiteLabeling, WhiteLabelingBuilder> {
  _$WhiteLabeling? _$v;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  WhiteLabelingType? _type;
  WhiteLabelingType? get type => _$this._type;
  set type(WhiteLabelingType? type) => _$this._type = type;

  JsonObject? _settings;
  JsonObject? get settings => _$this._settings;
  set settings(JsonObject? settings) => _$this._settings = settings;

  DomainIdBuilder? _domainId;
  DomainIdBuilder get domainId => _$this._domainId ??= DomainIdBuilder();
  set domainId(DomainIdBuilder? domainId) => _$this._domainId = domainId;

  WhiteLabelingBuilder() {
    WhiteLabeling._defaults(this);
  }

  WhiteLabelingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _type = $v.type;
      _settings = $v.settings;
      _domainId = $v.domainId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WhiteLabeling other) {
    _$v = other as _$WhiteLabeling;
  }

  @override
  void update(void Function(WhiteLabelingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WhiteLabeling build() => _build();

  _$WhiteLabeling _build() {
    _$WhiteLabeling _$result;
    try {
      _$result =
          _$v ??
          _$WhiteLabeling._(
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            type: type,
            settings: settings,
            domainId: _domainId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'customerId';
        _customerId?.build();

        _$failedField = 'domainId';
        _domainId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WhiteLabeling',
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
