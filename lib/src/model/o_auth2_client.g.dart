// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_client.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuth2Client extends OAuth2Client {
  @override
  final OAuth2ClientId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String title;
  @override
  final OAuth2MapperConfig mapperConfig;
  @override
  final String clientId;
  @override
  final String clientSecret;
  @override
  final String authorizationUri;
  @override
  final String accessTokenUri;
  @override
  final BuiltList<String> scope;
  @override
  final String? userInfoUri;
  @override
  final String userNameAttributeName;
  @override
  final String? jwkSetUri;
  @override
  final String clientAuthenticationMethod;
  @override
  final String loginButtonLabel;
  @override
  final String? loginButtonIcon;
  @override
  final BuiltList<PlatformType>? platforms;
  @override
  final String? name;
  @override
  final EntityId? ownerId;

  factory _$OAuth2Client([void Function(OAuth2ClientBuilder)? updates]) =>
      (OAuth2ClientBuilder()..update(updates))._build();

  _$OAuth2Client._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.customerId,
    required this.title,
    required this.mapperConfig,
    required this.clientId,
    required this.clientSecret,
    required this.authorizationUri,
    required this.accessTokenUri,
    required this.scope,
    this.userInfoUri,
    required this.userNameAttributeName,
    this.jwkSetUri,
    required this.clientAuthenticationMethod,
    required this.loginButtonLabel,
    this.loginButtonIcon,
    this.platforms,
    this.name,
    this.ownerId,
  }) : super._();
  @override
  OAuth2Client rebuild(void Function(OAuth2ClientBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OAuth2ClientBuilder toBuilder() => OAuth2ClientBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2Client &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        title == other.title &&
        mapperConfig == other.mapperConfig &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        authorizationUri == other.authorizationUri &&
        accessTokenUri == other.accessTokenUri &&
        scope == other.scope &&
        userInfoUri == other.userInfoUri &&
        userNameAttributeName == other.userNameAttributeName &&
        jwkSetUri == other.jwkSetUri &&
        clientAuthenticationMethod == other.clientAuthenticationMethod &&
        loginButtonLabel == other.loginButtonLabel &&
        loginButtonIcon == other.loginButtonIcon &&
        platforms == other.platforms &&
        name == other.name &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, mapperConfig.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, authorizationUri.hashCode);
    _$hash = $jc(_$hash, accessTokenUri.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, userInfoUri.hashCode);
    _$hash = $jc(_$hash, userNameAttributeName.hashCode);
    _$hash = $jc(_$hash, jwkSetUri.hashCode);
    _$hash = $jc(_$hash, clientAuthenticationMethod.hashCode);
    _$hash = $jc(_$hash, loginButtonLabel.hashCode);
    _$hash = $jc(_$hash, loginButtonIcon.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OAuth2Client')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('title', title)
          ..add('mapperConfig', mapperConfig)
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('authorizationUri', authorizationUri)
          ..add('accessTokenUri', accessTokenUri)
          ..add('scope', scope)
          ..add('userInfoUri', userInfoUri)
          ..add('userNameAttributeName', userNameAttributeName)
          ..add('jwkSetUri', jwkSetUri)
          ..add('clientAuthenticationMethod', clientAuthenticationMethod)
          ..add('loginButtonLabel', loginButtonLabel)
          ..add('loginButtonIcon', loginButtonIcon)
          ..add('platforms', platforms)
          ..add('name', name)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class OAuth2ClientBuilder
    implements Builder<OAuth2Client, OAuth2ClientBuilder> {
  _$OAuth2Client? _$v;

  OAuth2ClientIdBuilder? _id;
  OAuth2ClientIdBuilder get id => _$this._id ??= OAuth2ClientIdBuilder();
  set id(OAuth2ClientIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  OAuth2MapperConfigBuilder? _mapperConfig;
  OAuth2MapperConfigBuilder get mapperConfig =>
      _$this._mapperConfig ??= OAuth2MapperConfigBuilder();
  set mapperConfig(OAuth2MapperConfigBuilder? mapperConfig) =>
      _$this._mapperConfig = mapperConfig;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _authorizationUri;
  String? get authorizationUri => _$this._authorizationUri;
  set authorizationUri(String? authorizationUri) =>
      _$this._authorizationUri = authorizationUri;

  String? _accessTokenUri;
  String? get accessTokenUri => _$this._accessTokenUri;
  set accessTokenUri(String? accessTokenUri) =>
      _$this._accessTokenUri = accessTokenUri;

  ListBuilder<String>? _scope;
  ListBuilder<String> get scope => _$this._scope ??= ListBuilder<String>();
  set scope(ListBuilder<String>? scope) => _$this._scope = scope;

  String? _userInfoUri;
  String? get userInfoUri => _$this._userInfoUri;
  set userInfoUri(String? userInfoUri) => _$this._userInfoUri = userInfoUri;

  String? _userNameAttributeName;
  String? get userNameAttributeName => _$this._userNameAttributeName;
  set userNameAttributeName(String? userNameAttributeName) =>
      _$this._userNameAttributeName = userNameAttributeName;

  String? _jwkSetUri;
  String? get jwkSetUri => _$this._jwkSetUri;
  set jwkSetUri(String? jwkSetUri) => _$this._jwkSetUri = jwkSetUri;

  String? _clientAuthenticationMethod;
  String? get clientAuthenticationMethod => _$this._clientAuthenticationMethod;
  set clientAuthenticationMethod(String? clientAuthenticationMethod) =>
      _$this._clientAuthenticationMethod = clientAuthenticationMethod;

  String? _loginButtonLabel;
  String? get loginButtonLabel => _$this._loginButtonLabel;
  set loginButtonLabel(String? loginButtonLabel) =>
      _$this._loginButtonLabel = loginButtonLabel;

  String? _loginButtonIcon;
  String? get loginButtonIcon => _$this._loginButtonIcon;
  set loginButtonIcon(String? loginButtonIcon) =>
      _$this._loginButtonIcon = loginButtonIcon;

  ListBuilder<PlatformType>? _platforms;
  ListBuilder<PlatformType> get platforms =>
      _$this._platforms ??= ListBuilder<PlatformType>();
  set platforms(ListBuilder<PlatformType>? platforms) =>
      _$this._platforms = platforms;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  OAuth2ClientBuilder() {
    OAuth2Client._defaults(this);
  }

  OAuth2ClientBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _title = $v.title;
      _mapperConfig = $v.mapperConfig.toBuilder();
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _authorizationUri = $v.authorizationUri;
      _accessTokenUri = $v.accessTokenUri;
      _scope = $v.scope.toBuilder();
      _userInfoUri = $v.userInfoUri;
      _userNameAttributeName = $v.userNameAttributeName;
      _jwkSetUri = $v.jwkSetUri;
      _clientAuthenticationMethod = $v.clientAuthenticationMethod;
      _loginButtonLabel = $v.loginButtonLabel;
      _loginButtonIcon = $v.loginButtonIcon;
      _platforms = $v.platforms?.toBuilder();
      _name = $v.name;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuth2Client other) {
    _$v = other as _$OAuth2Client;
  }

  @override
  void update(void Function(OAuth2ClientBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2Client build() => _build();

  _$OAuth2Client _build() {
    _$OAuth2Client _$result;
    try {
      _$result =
          _$v ??
          _$OAuth2Client._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'OAuth2Client',
              'title',
            ),
            mapperConfig: mapperConfig.build(),
            clientId: BuiltValueNullFieldError.checkNotNull(
              clientId,
              r'OAuth2Client',
              'clientId',
            ),
            clientSecret: BuiltValueNullFieldError.checkNotNull(
              clientSecret,
              r'OAuth2Client',
              'clientSecret',
            ),
            authorizationUri: BuiltValueNullFieldError.checkNotNull(
              authorizationUri,
              r'OAuth2Client',
              'authorizationUri',
            ),
            accessTokenUri: BuiltValueNullFieldError.checkNotNull(
              accessTokenUri,
              r'OAuth2Client',
              'accessTokenUri',
            ),
            scope: scope.build(),
            userInfoUri: userInfoUri,
            userNameAttributeName: BuiltValueNullFieldError.checkNotNull(
              userNameAttributeName,
              r'OAuth2Client',
              'userNameAttributeName',
            ),
            jwkSetUri: jwkSetUri,
            clientAuthenticationMethod: BuiltValueNullFieldError.checkNotNull(
              clientAuthenticationMethod,
              r'OAuth2Client',
              'clientAuthenticationMethod',
            ),
            loginButtonLabel: BuiltValueNullFieldError.checkNotNull(
              loginButtonLabel,
              r'OAuth2Client',
              'loginButtonLabel',
            ),
            loginButtonIcon: loginButtonIcon,
            platforms: _platforms?.build(),
            name: name,
            ownerId: ownerId,
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

        _$failedField = 'mapperConfig';
        mapperConfig.build();

        _$failedField = 'scope';
        scope.build();

        _$failedField = 'platforms';
        _platforms?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OAuth2Client',
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
