// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_client_registration_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuth2ClientRegistrationTemplate
    extends OAuth2ClientRegistrationTemplate {
  @override
  final OAuth2ClientRegistrationTemplateId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final String providerId;
  @override
  final OAuth2MapperConfig? mapperConfig;
  @override
  final String? authorizationUri;
  @override
  final String? accessTokenUri;
  @override
  final BuiltList<String>? scope;
  @override
  final String? userInfoUri;
  @override
  final String? userNameAttributeName;
  @override
  final String? jwkSetUri;
  @override
  final String? clientAuthenticationMethod;
  @override
  final String? comment;
  @override
  final String? loginButtonIcon;
  @override
  final String? loginButtonLabel;
  @override
  final String? helpLink;
  @override
  final String? name;

  factory _$OAuth2ClientRegistrationTemplate([
    void Function(OAuth2ClientRegistrationTemplateBuilder)? updates,
  ]) => (OAuth2ClientRegistrationTemplateBuilder()..update(updates))._build();

  _$OAuth2ClientRegistrationTemplate._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    required this.providerId,
    this.mapperConfig,
    this.authorizationUri,
    this.accessTokenUri,
    this.scope,
    this.userInfoUri,
    this.userNameAttributeName,
    this.jwkSetUri,
    this.clientAuthenticationMethod,
    this.comment,
    this.loginButtonIcon,
    this.loginButtonLabel,
    this.helpLink,
    this.name,
  }) : super._();
  @override
  OAuth2ClientRegistrationTemplate rebuild(
    void Function(OAuth2ClientRegistrationTemplateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OAuth2ClientRegistrationTemplateBuilder toBuilder() =>
      OAuth2ClientRegistrationTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2ClientRegistrationTemplate &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        providerId == other.providerId &&
        mapperConfig == other.mapperConfig &&
        authorizationUri == other.authorizationUri &&
        accessTokenUri == other.accessTokenUri &&
        scope == other.scope &&
        userInfoUri == other.userInfoUri &&
        userNameAttributeName == other.userNameAttributeName &&
        jwkSetUri == other.jwkSetUri &&
        clientAuthenticationMethod == other.clientAuthenticationMethod &&
        comment == other.comment &&
        loginButtonIcon == other.loginButtonIcon &&
        loginButtonLabel == other.loginButtonLabel &&
        helpLink == other.helpLink &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, providerId.hashCode);
    _$hash = $jc(_$hash, mapperConfig.hashCode);
    _$hash = $jc(_$hash, authorizationUri.hashCode);
    _$hash = $jc(_$hash, accessTokenUri.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, userInfoUri.hashCode);
    _$hash = $jc(_$hash, userNameAttributeName.hashCode);
    _$hash = $jc(_$hash, jwkSetUri.hashCode);
    _$hash = $jc(_$hash, clientAuthenticationMethod.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, loginButtonIcon.hashCode);
    _$hash = $jc(_$hash, loginButtonLabel.hashCode);
    _$hash = $jc(_$hash, helpLink.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OAuth2ClientRegistrationTemplate')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('providerId', providerId)
          ..add('mapperConfig', mapperConfig)
          ..add('authorizationUri', authorizationUri)
          ..add('accessTokenUri', accessTokenUri)
          ..add('scope', scope)
          ..add('userInfoUri', userInfoUri)
          ..add('userNameAttributeName', userNameAttributeName)
          ..add('jwkSetUri', jwkSetUri)
          ..add('clientAuthenticationMethod', clientAuthenticationMethod)
          ..add('comment', comment)
          ..add('loginButtonIcon', loginButtonIcon)
          ..add('loginButtonLabel', loginButtonLabel)
          ..add('helpLink', helpLink)
          ..add('name', name))
        .toString();
  }
}

class OAuth2ClientRegistrationTemplateBuilder
    implements
        Builder<
          OAuth2ClientRegistrationTemplate,
          OAuth2ClientRegistrationTemplateBuilder
        > {
  _$OAuth2ClientRegistrationTemplate? _$v;

  OAuth2ClientRegistrationTemplateIdBuilder? _id;
  OAuth2ClientRegistrationTemplateIdBuilder get id =>
      _$this._id ??= OAuth2ClientRegistrationTemplateIdBuilder();
  set id(OAuth2ClientRegistrationTemplateIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  String? _providerId;
  String? get providerId => _$this._providerId;
  set providerId(String? providerId) => _$this._providerId = providerId;

  OAuth2MapperConfigBuilder? _mapperConfig;
  OAuth2MapperConfigBuilder get mapperConfig =>
      _$this._mapperConfig ??= OAuth2MapperConfigBuilder();
  set mapperConfig(OAuth2MapperConfigBuilder? mapperConfig) =>
      _$this._mapperConfig = mapperConfig;

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

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _loginButtonIcon;
  String? get loginButtonIcon => _$this._loginButtonIcon;
  set loginButtonIcon(String? loginButtonIcon) =>
      _$this._loginButtonIcon = loginButtonIcon;

  String? _loginButtonLabel;
  String? get loginButtonLabel => _$this._loginButtonLabel;
  set loginButtonLabel(String? loginButtonLabel) =>
      _$this._loginButtonLabel = loginButtonLabel;

  String? _helpLink;
  String? get helpLink => _$this._helpLink;
  set helpLink(String? helpLink) => _$this._helpLink = helpLink;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  OAuth2ClientRegistrationTemplateBuilder() {
    OAuth2ClientRegistrationTemplate._defaults(this);
  }

  OAuth2ClientRegistrationTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _providerId = $v.providerId;
      _mapperConfig = $v.mapperConfig?.toBuilder();
      _authorizationUri = $v.authorizationUri;
      _accessTokenUri = $v.accessTokenUri;
      _scope = $v.scope?.toBuilder();
      _userInfoUri = $v.userInfoUri;
      _userNameAttributeName = $v.userNameAttributeName;
      _jwkSetUri = $v.jwkSetUri;
      _clientAuthenticationMethod = $v.clientAuthenticationMethod;
      _comment = $v.comment;
      _loginButtonIcon = $v.loginButtonIcon;
      _loginButtonLabel = $v.loginButtonLabel;
      _helpLink = $v.helpLink;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuth2ClientRegistrationTemplate other) {
    _$v = other as _$OAuth2ClientRegistrationTemplate;
  }

  @override
  void update(void Function(OAuth2ClientRegistrationTemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2ClientRegistrationTemplate build() => _build();

  _$OAuth2ClientRegistrationTemplate _build() {
    _$OAuth2ClientRegistrationTemplate _$result;
    try {
      _$result =
          _$v ??
          _$OAuth2ClientRegistrationTemplate._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            providerId: BuiltValueNullFieldError.checkNotNull(
              providerId,
              r'OAuth2ClientRegistrationTemplate',
              'providerId',
            ),
            mapperConfig: _mapperConfig?.build(),
            authorizationUri: authorizationUri,
            accessTokenUri: accessTokenUri,
            scope: _scope?.build(),
            userInfoUri: userInfoUri,
            userNameAttributeName: userNameAttributeName,
            jwkSetUri: jwkSetUri,
            clientAuthenticationMethod: clientAuthenticationMethod,
            comment: comment,
            loginButtonIcon: loginButtonIcon,
            loginButtonLabel: loginButtonLabel,
            helpLink: helpLink,
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'mapperConfig';
        _mapperConfig?.build();

        _$failedField = 'scope';
        _scope?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OAuth2ClientRegistrationTemplate',
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
