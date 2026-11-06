// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_app_bundle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileAppBundle extends MobileAppBundle {
  @override
  final MobileAppBundleId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final MobileAppId? androidAppId;
  @override
  final MobileAppId? iosAppId;
  @override
  final MobileLayoutConfig? layoutConfig;
  @override
  final MobileSelfRegistrationParams? selfRegistrationParams;
  @override
  final bool? oauth2Enabled;
  @override
  final String? name;

  factory _$MobileAppBundle([void Function(MobileAppBundleBuilder)? updates]) =>
      (MobileAppBundleBuilder()..update(updates))._build();

  _$MobileAppBundle._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.title,
    this.description,
    this.androidAppId,
    this.iosAppId,
    this.layoutConfig,
    this.selfRegistrationParams,
    this.oauth2Enabled,
    this.name,
  }) : super._();
  @override
  MobileAppBundle rebuild(void Function(MobileAppBundleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MobileAppBundleBuilder toBuilder() => MobileAppBundleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileAppBundle &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        title == other.title &&
        description == other.description &&
        androidAppId == other.androidAppId &&
        iosAppId == other.iosAppId &&
        layoutConfig == other.layoutConfig &&
        selfRegistrationParams == other.selfRegistrationParams &&
        oauth2Enabled == other.oauth2Enabled &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, androidAppId.hashCode);
    _$hash = $jc(_$hash, iosAppId.hashCode);
    _$hash = $jc(_$hash, layoutConfig.hashCode);
    _$hash = $jc(_$hash, selfRegistrationParams.hashCode);
    _$hash = $jc(_$hash, oauth2Enabled.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MobileAppBundle')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('title', title)
          ..add('description', description)
          ..add('androidAppId', androidAppId)
          ..add('iosAppId', iosAppId)
          ..add('layoutConfig', layoutConfig)
          ..add('selfRegistrationParams', selfRegistrationParams)
          ..add('oauth2Enabled', oauth2Enabled)
          ..add('name', name))
        .toString();
  }
}

class MobileAppBundleBuilder
    implements Builder<MobileAppBundle, MobileAppBundleBuilder> {
  _$MobileAppBundle? _$v;

  MobileAppBundleIdBuilder? _id;
  MobileAppBundleIdBuilder get id => _$this._id ??= MobileAppBundleIdBuilder();
  set id(MobileAppBundleIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  MobileAppIdBuilder? _androidAppId;
  MobileAppIdBuilder get androidAppId =>
      _$this._androidAppId ??= MobileAppIdBuilder();
  set androidAppId(MobileAppIdBuilder? androidAppId) =>
      _$this._androidAppId = androidAppId;

  MobileAppIdBuilder? _iosAppId;
  MobileAppIdBuilder get iosAppId => _$this._iosAppId ??= MobileAppIdBuilder();
  set iosAppId(MobileAppIdBuilder? iosAppId) => _$this._iosAppId = iosAppId;

  MobileLayoutConfigBuilder? _layoutConfig;
  MobileLayoutConfigBuilder get layoutConfig =>
      _$this._layoutConfig ??= MobileLayoutConfigBuilder();
  set layoutConfig(MobileLayoutConfigBuilder? layoutConfig) =>
      _$this._layoutConfig = layoutConfig;

  MobileSelfRegistrationParamsBuilder? _selfRegistrationParams;
  MobileSelfRegistrationParamsBuilder get selfRegistrationParams =>
      _$this._selfRegistrationParams ??= MobileSelfRegistrationParamsBuilder();
  set selfRegistrationParams(
    MobileSelfRegistrationParamsBuilder? selfRegistrationParams,
  ) => _$this._selfRegistrationParams = selfRegistrationParams;

  bool? _oauth2Enabled;
  bool? get oauth2Enabled => _$this._oauth2Enabled;
  set oauth2Enabled(bool? oauth2Enabled) =>
      _$this._oauth2Enabled = oauth2Enabled;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MobileAppBundleBuilder() {
    MobileAppBundle._defaults(this);
  }

  MobileAppBundleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _title = $v.title;
      _description = $v.description;
      _androidAppId = $v.androidAppId?.toBuilder();
      _iosAppId = $v.iosAppId?.toBuilder();
      _layoutConfig = $v.layoutConfig?.toBuilder();
      _selfRegistrationParams = $v.selfRegistrationParams?.toBuilder();
      _oauth2Enabled = $v.oauth2Enabled;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MobileAppBundle other) {
    _$v = other as _$MobileAppBundle;
  }

  @override
  void update(void Function(MobileAppBundleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileAppBundle build() => _build();

  _$MobileAppBundle _build() {
    _$MobileAppBundle _$result;
    try {
      _$result =
          _$v ??
          _$MobileAppBundle._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'MobileAppBundle',
              'title',
            ),
            description: description,
            androidAppId: _androidAppId?.build(),
            iosAppId: _iosAppId?.build(),
            layoutConfig: _layoutConfig?.build(),
            selfRegistrationParams: _selfRegistrationParams?.build(),
            oauth2Enabled: oauth2Enabled,
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'androidAppId';
        _androidAppId?.build();
        _$failedField = 'iosAppId';
        _iosAppId?.build();
        _$failedField = 'layoutConfig';
        _layoutConfig?.build();
        _$failedField = 'selfRegistrationParams';
        _selfRegistrationParams?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MobileAppBundle',
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
