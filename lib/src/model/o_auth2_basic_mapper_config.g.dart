// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_basic_mapper_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuth2BasicMapperConfig extends OAuth2BasicMapperConfig {
  @override
  final String? emailAttributeKey;
  @override
  final String? firstNameAttributeKey;
  @override
  final String? lastNameAttributeKey;
  @override
  final TenantNameStrategyType tenantNameStrategy;
  @override
  final String? tenantNamePattern;
  @override
  final String? customerNamePattern;
  @override
  final String? defaultDashboardName;
  @override
  final bool? alwaysFullScreen;
  @override
  final String? parentCustomerNamePattern;
  @override
  final BuiltList<String>? userGroupsNamePattern;

  factory _$OAuth2BasicMapperConfig([
    void Function(OAuth2BasicMapperConfigBuilder)? updates,
  ]) => (OAuth2BasicMapperConfigBuilder()..update(updates))._build();

  _$OAuth2BasicMapperConfig._({
    this.emailAttributeKey,
    this.firstNameAttributeKey,
    this.lastNameAttributeKey,
    required this.tenantNameStrategy,
    this.tenantNamePattern,
    this.customerNamePattern,
    this.defaultDashboardName,
    this.alwaysFullScreen,
    this.parentCustomerNamePattern,
    this.userGroupsNamePattern,
  }) : super._();
  @override
  OAuth2BasicMapperConfig rebuild(
    void Function(OAuth2BasicMapperConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OAuth2BasicMapperConfigBuilder toBuilder() =>
      OAuth2BasicMapperConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2BasicMapperConfig &&
        emailAttributeKey == other.emailAttributeKey &&
        firstNameAttributeKey == other.firstNameAttributeKey &&
        lastNameAttributeKey == other.lastNameAttributeKey &&
        tenantNameStrategy == other.tenantNameStrategy &&
        tenantNamePattern == other.tenantNamePattern &&
        customerNamePattern == other.customerNamePattern &&
        defaultDashboardName == other.defaultDashboardName &&
        alwaysFullScreen == other.alwaysFullScreen &&
        parentCustomerNamePattern == other.parentCustomerNamePattern &&
        userGroupsNamePattern == other.userGroupsNamePattern;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, emailAttributeKey.hashCode);
    _$hash = $jc(_$hash, firstNameAttributeKey.hashCode);
    _$hash = $jc(_$hash, lastNameAttributeKey.hashCode);
    _$hash = $jc(_$hash, tenantNameStrategy.hashCode);
    _$hash = $jc(_$hash, tenantNamePattern.hashCode);
    _$hash = $jc(_$hash, customerNamePattern.hashCode);
    _$hash = $jc(_$hash, defaultDashboardName.hashCode);
    _$hash = $jc(_$hash, alwaysFullScreen.hashCode);
    _$hash = $jc(_$hash, parentCustomerNamePattern.hashCode);
    _$hash = $jc(_$hash, userGroupsNamePattern.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OAuth2BasicMapperConfig')
          ..add('emailAttributeKey', emailAttributeKey)
          ..add('firstNameAttributeKey', firstNameAttributeKey)
          ..add('lastNameAttributeKey', lastNameAttributeKey)
          ..add('tenantNameStrategy', tenantNameStrategy)
          ..add('tenantNamePattern', tenantNamePattern)
          ..add('customerNamePattern', customerNamePattern)
          ..add('defaultDashboardName', defaultDashboardName)
          ..add('alwaysFullScreen', alwaysFullScreen)
          ..add('parentCustomerNamePattern', parentCustomerNamePattern)
          ..add('userGroupsNamePattern', userGroupsNamePattern))
        .toString();
  }
}

class OAuth2BasicMapperConfigBuilder
    implements
        Builder<OAuth2BasicMapperConfig, OAuth2BasicMapperConfigBuilder> {
  _$OAuth2BasicMapperConfig? _$v;

  String? _emailAttributeKey;
  String? get emailAttributeKey => _$this._emailAttributeKey;
  set emailAttributeKey(String? emailAttributeKey) =>
      _$this._emailAttributeKey = emailAttributeKey;

  String? _firstNameAttributeKey;
  String? get firstNameAttributeKey => _$this._firstNameAttributeKey;
  set firstNameAttributeKey(String? firstNameAttributeKey) =>
      _$this._firstNameAttributeKey = firstNameAttributeKey;

  String? _lastNameAttributeKey;
  String? get lastNameAttributeKey => _$this._lastNameAttributeKey;
  set lastNameAttributeKey(String? lastNameAttributeKey) =>
      _$this._lastNameAttributeKey = lastNameAttributeKey;

  TenantNameStrategyType? _tenantNameStrategy;
  TenantNameStrategyType? get tenantNameStrategy => _$this._tenantNameStrategy;
  set tenantNameStrategy(TenantNameStrategyType? tenantNameStrategy) =>
      _$this._tenantNameStrategy = tenantNameStrategy;

  String? _tenantNamePattern;
  String? get tenantNamePattern => _$this._tenantNamePattern;
  set tenantNamePattern(String? tenantNamePattern) =>
      _$this._tenantNamePattern = tenantNamePattern;

  String? _customerNamePattern;
  String? get customerNamePattern => _$this._customerNamePattern;
  set customerNamePattern(String? customerNamePattern) =>
      _$this._customerNamePattern = customerNamePattern;

  String? _defaultDashboardName;
  String? get defaultDashboardName => _$this._defaultDashboardName;
  set defaultDashboardName(String? defaultDashboardName) =>
      _$this._defaultDashboardName = defaultDashboardName;

  bool? _alwaysFullScreen;
  bool? get alwaysFullScreen => _$this._alwaysFullScreen;
  set alwaysFullScreen(bool? alwaysFullScreen) =>
      _$this._alwaysFullScreen = alwaysFullScreen;

  String? _parentCustomerNamePattern;
  String? get parentCustomerNamePattern => _$this._parentCustomerNamePattern;
  set parentCustomerNamePattern(String? parentCustomerNamePattern) =>
      _$this._parentCustomerNamePattern = parentCustomerNamePattern;

  ListBuilder<String>? _userGroupsNamePattern;
  ListBuilder<String> get userGroupsNamePattern =>
      _$this._userGroupsNamePattern ??= ListBuilder<String>();
  set userGroupsNamePattern(ListBuilder<String>? userGroupsNamePattern) =>
      _$this._userGroupsNamePattern = userGroupsNamePattern;

  OAuth2BasicMapperConfigBuilder() {
    OAuth2BasicMapperConfig._defaults(this);
  }

  OAuth2BasicMapperConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _emailAttributeKey = $v.emailAttributeKey;
      _firstNameAttributeKey = $v.firstNameAttributeKey;
      _lastNameAttributeKey = $v.lastNameAttributeKey;
      _tenantNameStrategy = $v.tenantNameStrategy;
      _tenantNamePattern = $v.tenantNamePattern;
      _customerNamePattern = $v.customerNamePattern;
      _defaultDashboardName = $v.defaultDashboardName;
      _alwaysFullScreen = $v.alwaysFullScreen;
      _parentCustomerNamePattern = $v.parentCustomerNamePattern;
      _userGroupsNamePattern = $v.userGroupsNamePattern?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuth2BasicMapperConfig other) {
    _$v = other as _$OAuth2BasicMapperConfig;
  }

  @override
  void update(void Function(OAuth2BasicMapperConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2BasicMapperConfig build() => _build();

  _$OAuth2BasicMapperConfig _build() {
    _$OAuth2BasicMapperConfig _$result;
    try {
      _$result =
          _$v ??
          _$OAuth2BasicMapperConfig._(
            emailAttributeKey: emailAttributeKey,
            firstNameAttributeKey: firstNameAttributeKey,
            lastNameAttributeKey: lastNameAttributeKey,
            tenantNameStrategy: BuiltValueNullFieldError.checkNotNull(
              tenantNameStrategy,
              r'OAuth2BasicMapperConfig',
              'tenantNameStrategy',
            ),
            tenantNamePattern: tenantNamePattern,
            customerNamePattern: customerNamePattern,
            defaultDashboardName: defaultDashboardName,
            alwaysFullScreen: alwaysFullScreen,
            parentCustomerNamePattern: parentCustomerNamePattern,
            userGroupsNamePattern: _userGroupsNamePattern?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userGroupsNamePattern';
        _userGroupsNamePattern?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OAuth2BasicMapperConfig',
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
