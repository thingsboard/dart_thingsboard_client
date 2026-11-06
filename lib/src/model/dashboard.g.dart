// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Dashboard extends Dashboard {
  @override
  final DashboardId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final EntityId? ownerId;
  @override
  final String? title;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final BuiltSet<ShortCustomerInfo>? assignedCustomers;
  @override
  final bool? mobileHide;
  @override
  final int? mobileOrder;
  @override
  final JsonObject? configuration;
  @override
  final BuiltList<ResourceExportData>? resources;
  @override
  final int? version;

  factory _$Dashboard([void Function(DashboardBuilder)? updates]) =>
      (DashboardBuilder()..update(updates))._build();

  _$Dashboard._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.customerId,
    this.ownerId,
    this.title,
    this.name,
    this.image,
    this.assignedCustomers,
    this.mobileHide,
    this.mobileOrder,
    this.configuration,
    this.resources,
    this.version,
  }) : super._();
  @override
  Dashboard rebuild(void Function(DashboardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardBuilder toBuilder() => DashboardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dashboard &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        ownerId == other.ownerId &&
        title == other.title &&
        name == other.name &&
        image == other.image &&
        assignedCustomers == other.assignedCustomers &&
        mobileHide == other.mobileHide &&
        mobileOrder == other.mobileOrder &&
        configuration == other.configuration &&
        resources == other.resources &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, assignedCustomers.hashCode);
    _$hash = $jc(_$hash, mobileHide.hashCode);
    _$hash = $jc(_$hash, mobileOrder.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Dashboard')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('ownerId', ownerId)
          ..add('title', title)
          ..add('name', name)
          ..add('image', image)
          ..add('assignedCustomers', assignedCustomers)
          ..add('mobileHide', mobileHide)
          ..add('mobileOrder', mobileOrder)
          ..add('configuration', configuration)
          ..add('resources', resources)
          ..add('version', version))
        .toString();
  }
}

class DashboardBuilder implements Builder<Dashboard, DashboardBuilder> {
  _$Dashboard? _$v;

  DashboardIdBuilder? _id;
  DashboardIdBuilder get id => _$this._id ??= DashboardIdBuilder();
  set id(DashboardIdBuilder? id) => _$this._id = id;

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

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  SetBuilder<ShortCustomerInfo>? _assignedCustomers;
  SetBuilder<ShortCustomerInfo> get assignedCustomers =>
      _$this._assignedCustomers ??= SetBuilder<ShortCustomerInfo>();
  set assignedCustomers(SetBuilder<ShortCustomerInfo>? assignedCustomers) =>
      _$this._assignedCustomers = assignedCustomers;

  bool? _mobileHide;
  bool? get mobileHide => _$this._mobileHide;
  set mobileHide(bool? mobileHide) => _$this._mobileHide = mobileHide;

  int? _mobileOrder;
  int? get mobileOrder => _$this._mobileOrder;
  set mobileOrder(int? mobileOrder) => _$this._mobileOrder = mobileOrder;

  JsonObject? _configuration;
  JsonObject? get configuration => _$this._configuration;
  set configuration(JsonObject? configuration) =>
      _$this._configuration = configuration;

  ListBuilder<ResourceExportData>? _resources;
  ListBuilder<ResourceExportData> get resources =>
      _$this._resources ??= ListBuilder<ResourceExportData>();
  set resources(ListBuilder<ResourceExportData>? resources) =>
      _$this._resources = resources;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  DashboardBuilder() {
    Dashboard._defaults(this);
  }

  DashboardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _ownerId = $v.ownerId;
      _title = $v.title;
      _name = $v.name;
      _image = $v.image;
      _assignedCustomers = $v.assignedCustomers?.toBuilder();
      _mobileHide = $v.mobileHide;
      _mobileOrder = $v.mobileOrder;
      _configuration = $v.configuration;
      _resources = $v.resources?.toBuilder();
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dashboard other) {
    _$v = other as _$Dashboard;
  }

  @override
  void update(void Function(DashboardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Dashboard build() => _build();

  _$Dashboard _build() {
    _$Dashboard _$result;
    try {
      _$result =
          _$v ??
          _$Dashboard._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            ownerId: ownerId,
            title: title,
            name: name,
            image: image,
            assignedCustomers: _assignedCustomers?.build(),
            mobileHide: mobileHide,
            mobileOrder: mobileOrder,
            configuration: configuration,
            resources: _resources?.build(),
            version: version,
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

        _$failedField = 'assignedCustomers';
        _assignedCustomers?.build();

        _$failedField = 'resources';
        _resources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Dashboard',
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
