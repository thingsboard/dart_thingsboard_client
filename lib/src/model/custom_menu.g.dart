// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_menu.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomMenu extends CustomMenu {
  @override
  final CustomMenuId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String name;
  @override
  final CMScope scope;
  @override
  final CMAssigneeType assigneeType;
  @override
  final BuiltList<String>? userGroupNames;
  @override
  final CustomMenuConfig? config;

  factory _$CustomMenu([void Function(CustomMenuBuilder)? updates]) =>
      (CustomMenuBuilder()..update(updates))._build();

  _$CustomMenu._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.customerId,
    required this.name,
    required this.scope,
    required this.assigneeType,
    this.userGroupNames,
    this.config,
  }) : super._();
  @override
  CustomMenu rebuild(void Function(CustomMenuBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomMenuBuilder toBuilder() => CustomMenuBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomMenu &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        name == other.name &&
        scope == other.scope &&
        assigneeType == other.assigneeType &&
        userGroupNames == other.userGroupNames &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, assigneeType.hashCode);
    _$hash = $jc(_$hash, userGroupNames.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomMenu')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('scope', scope)
          ..add('assigneeType', assigneeType)
          ..add('userGroupNames', userGroupNames)
          ..add('config', config))
        .toString();
  }
}

class CustomMenuBuilder implements Builder<CustomMenu, CustomMenuBuilder> {
  _$CustomMenu? _$v;

  CustomMenuIdBuilder? _id;
  CustomMenuIdBuilder get id => _$this._id ??= CustomMenuIdBuilder();
  set id(CustomMenuIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CMScope? _scope;
  CMScope? get scope => _$this._scope;
  set scope(CMScope? scope) => _$this._scope = scope;

  CMAssigneeType? _assigneeType;
  CMAssigneeType? get assigneeType => _$this._assigneeType;
  set assigneeType(CMAssigneeType? assigneeType) =>
      _$this._assigneeType = assigneeType;

  ListBuilder<String>? _userGroupNames;
  ListBuilder<String> get userGroupNames =>
      _$this._userGroupNames ??= ListBuilder<String>();
  set userGroupNames(ListBuilder<String>? userGroupNames) =>
      _$this._userGroupNames = userGroupNames;

  CustomMenuConfigBuilder? _config;
  CustomMenuConfigBuilder get config =>
      _$this._config ??= CustomMenuConfigBuilder();
  set config(CustomMenuConfigBuilder? config) => _$this._config = config;

  CustomMenuBuilder() {
    CustomMenu._defaults(this);
  }

  CustomMenuBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _name = $v.name;
      _scope = $v.scope;
      _assigneeType = $v.assigneeType;
      _userGroupNames = $v.userGroupNames?.toBuilder();
      _config = $v.config?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomMenu other) {
    _$v = other as _$CustomMenu;
  }

  @override
  void update(void Function(CustomMenuBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomMenu build() => _build();

  _$CustomMenu _build() {
    _$CustomMenu _$result;
    try {
      _$result =
          _$v ??
          _$CustomMenu._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'CustomMenu',
              'name',
            ),
            scope: BuiltValueNullFieldError.checkNotNull(
              scope,
              r'CustomMenu',
              'scope',
            ),
            assigneeType: BuiltValueNullFieldError.checkNotNull(
              assigneeType,
              r'CustomMenu',
              'assigneeType',
            ),
            userGroupNames: _userGroupNames?.build(),
            config: _config?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'customerId';
        _customerId?.build();

        _$failedField = 'userGroupNames';
        _userGroupNames?.build();
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CustomMenu',
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
