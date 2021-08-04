import 'has_name.dart';
import 'id/oauth2_client_registration_template_id.dart';
import 'additional_info_based.dart';

class OAuth2ClientInfo {
  final String name;
  final String? icon;
  final String url;

  OAuth2ClientInfo.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        icon = json['icon'],
        url = json['url'];

  @override
  String toString() {
    return 'OAuth2ClientInfo{name: $name, icon: $icon, url: $url}';
  }
}

enum PlatformType { WEB, ANDROID, IOS }

PlatformType platformTypeFromString(String value) {
  return PlatformType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension PlatformTypeToString on PlatformType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum MapperType { BASIC, CUSTOM, GITHUB, APPLE }

MapperType mapperTypeFromString(String value) {
  return MapperType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension MapperTypeToString on MapperType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum TenantNameStrategyType { DOMAIN, EMAIL, CUSTOM }

TenantNameStrategyType tenantNameStrategyTypeFromString(String value) {
  return TenantNameStrategyType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension TenantNameStrategyTypeToString on TenantNameStrategyType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class OAuth2BasicMapperConfig {
  String emailAttributeKey;
  String? firstNameAttributeKey;
  String? lastNameAttributeKey;
  TenantNameStrategyType tenantNameStrategy;
  String? tenantNamePattern;
  String? customerNamePattern;
  String? defaultDashboardName;
  bool? alwaysFullScreen;

  OAuth2BasicMapperConfig(
      {required this.emailAttributeKey,
      required this.tenantNameStrategy,
      this.firstNameAttributeKey,
      this.lastNameAttributeKey,
      this.tenantNamePattern,
      this.customerNamePattern,
      this.defaultDashboardName,
      this.alwaysFullScreen});

  OAuth2BasicMapperConfig.fromJson(Map<String, dynamic> json)
      : emailAttributeKey = json['emailAttributeKey'],
        firstNameAttributeKey = json['firstNameAttributeKey'],
        lastNameAttributeKey = json['lastNameAttributeKey'],
        tenantNameStrategy =
            tenantNameStrategyTypeFromString(json['tenantNameStrategy']),
        tenantNamePattern = json['tenantNamePattern'],
        customerNamePattern = json['customerNamePattern'],
        defaultDashboardName = json['defaultDashboardName'],
        alwaysFullScreen = json['alwaysFullScreen'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'emailAttributeKey': emailAttributeKey,
      'tenantNameStrategy': tenantNameStrategy.toShortString()
    };
    if (firstNameAttributeKey != null) {
      json['firstNameAttributeKey'] = firstNameAttributeKey;
    }
    if (lastNameAttributeKey != null) {
      json['lastNameAttributeKey'] = lastNameAttributeKey;
    }
    if (tenantNamePattern != null) {
      json['tenantNamePattern'] = tenantNamePattern;
    }
    if (customerNamePattern != null) {
      json['customerNamePattern'] = customerNamePattern;
    }
    if (defaultDashboardName != null) {
      json['defaultDashboardName'] = defaultDashboardName;
    }
    if (alwaysFullScreen != null) {
      json['alwaysFullScreen'] = alwaysFullScreen;
    }
    return json;
  }

  @override
  String toString() {
    return 'OAuth2BasicMapperConfig{emailAttributeKey: $emailAttributeKey, firstNameAttributeKey: $firstNameAttributeKey, lastNameAttributeKey: $lastNameAttributeKey, tenantNameStrategy: $tenantNameStrategy, tenantNamePattern: $tenantNamePattern, customerNamePattern: $customerNamePattern, defaultDashboardName: $defaultDashboardName, alwaysFullScreen: $alwaysFullScreen}';
  }
}

class OAuth2CustomMapperConfig {
  String url;
  String? username;
  String? password;
  bool? sendToken;

  OAuth2CustomMapperConfig(
      {required this.url, this.username, this.password, this.sendToken});

  OAuth2CustomMapperConfig.fromJson(Map<String, dynamic> json)
      : url = json['url'],
        username = json['username'],
        password = json['password'],
        sendToken = json['sendToken'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{'url': url};
    if (username != null) {
      json['username'] = username;
    }
    if (password != null) {
      json['password'] = password;
    }
    if (sendToken != null) {
      json['sendToken'] = sendToken;
    }
    return json;
  }

  @override
  String toString() {
    return 'OAuth2CustomMapperConfig{url: $url, username: $username, password: $password, sendToken: $sendToken}';
  }
}

class OAuth2MapperConfig {
  bool allowUserCreation;
  bool activateUser;
  MapperType type;
  OAuth2BasicMapperConfig? basic;
  OAuth2CustomMapperConfig? custom;

  OAuth2MapperConfig(
      {required this.allowUserCreation,
      required this.activateUser,
      required this.type,
      this.basic,
      this.custom});

  OAuth2MapperConfig.fromJson(Map<String, dynamic> json)
      : allowUserCreation = json['allowUserCreation'],
        activateUser = json['activateUser'],
        type = mapperTypeFromString(json['type']),
        basic = json['basic'] != null
            ? OAuth2BasicMapperConfig.fromJson(json['basic'])
            : null,
        custom = json['custom'] != null
            ? OAuth2CustomMapperConfig.fromJson(json['custom'])
            : null;

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'allowUserCreation': allowUserCreation,
      'activateUser': activateUser,
      'type': type.toShortString()
    };
    if (basic != null) {
      json['basic'] = basic!.toJson();
    }
    if (custom != null) {
      json['custom'] = custom!.toJson();
    }
    return json;
  }
}

class OAuth2ClientRegistrationTemplate
    extends AdditionalInfoBased<OAuth2ClientRegistrationTemplateId>
    with HasName {
  String providerId;
  OAuth2MapperConfig mapperConfig;
  String authorizationUri;
  String accessTokenUri;
  List<String> scope;
  String? userInfoUri;
  String userNameAttributeName;
  String? jwkSetUri;
  String clientAuthenticationMethod;
  String? comment;
  String? loginButtonIcon;
  String? loginButtonLabel;
  String? helpLink;

  OAuth2ClientRegistrationTemplate(
      {required this.providerId,
      required this.mapperConfig,
      required this.authorizationUri,
      required this.accessTokenUri,
      required this.scope,
      required this.userNameAttributeName,
      required this.clientAuthenticationMethod,
      this.userInfoUri,
      this.jwkSetUri,
      this.comment,
      this.loginButtonIcon,
      this.loginButtonLabel,
      this.helpLink});

  OAuth2ClientRegistrationTemplate.fromJson(Map<String, dynamic> json)
      : providerId = json['providerId'],
        mapperConfig = OAuth2MapperConfig.fromJson(json['mapperConfig']),
        authorizationUri = json['authorizationUri'],
        accessTokenUri = json['accessTokenUri'],
        scope = json['scope'],
        userInfoUri = json['userInfoUri'],
        userNameAttributeName = json['userNameAttributeName'],
        jwkSetUri = json['jwkSetUri'],
        clientAuthenticationMethod = json['clientAuthenticationMethod'],
        comment = json['comment'],
        loginButtonIcon = json['loginButtonIcon'],
        loginButtonLabel = json['loginButtonLabel'],
        helpLink = json['helpLink'],
        super.fromJson(json, (id) => OAuth2ClientRegistrationTemplateId(id));

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['providerId'] = providerId;
    json['mapperConfig'] = mapperConfig.toJson();
    json['authorizationUri'] = authorizationUri;
    json['accessTokenUri'] = accessTokenUri;
    json['scope'] = scope;
    if (userInfoUri != null) {
      json['userInfoUri'] = userInfoUri;
    }
    json['userNameAttributeName'] = userNameAttributeName;
    if (jwkSetUri != null) {
      json['jwkSetUri'] = jwkSetUri;
    }
    json['clientAuthenticationMethod'] = clientAuthenticationMethod;
    if (comment != null) {
      json['comment'] = comment;
    }
    if (loginButtonIcon != null) {
      json['loginButtonIcon'] = loginButtonIcon;
    }
    if (loginButtonLabel != null) {
      json['loginButtonLabel'] = loginButtonLabel;
    }
    if (helpLink != null) {
      json['helpLink'] = helpLink;
    }
    return json;
  }

  @override
  String getName() {
    return providerId;
  }

  @override
  String toString() {
    return 'OAuth2ClientRegistrationTemplate{${additionalInfoBasedString('providerId: $providerId, mapperConfig: $mapperConfig, '
        'authorizationUri: $authorizationUri, accessTokenUri: $accessTokenUri, scope: $scope, userInfoUri: $userInfoUri, '
        'userNameAttributeName: $userNameAttributeName, jwkSetUri: $jwkSetUri, clientAuthenticationMethod: $clientAuthenticationMethod, '
        'comment: $comment, loginButtonIcon: $loginButtonIcon, loginButtonLabel: $loginButtonLabel, helpLink: $helpLink')}}';
  }
}

enum SchemeType { HTTP, HTTPS, MIXED }

SchemeType schemeTypeFromString(String value) {
  return SchemeType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension SchemeTypeToString on SchemeType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class OAuth2DomainInfo {
  SchemeType scheme;
  String name;

  OAuth2DomainInfo({required this.scheme, required this.name});

  OAuth2DomainInfo.fromJson(Map<String, dynamic> json)
      : scheme = schemeTypeFromString(json['scheme']),
        name = json['name'];

  Map<String, dynamic> toJson() {
    return {'scheme': scheme.toShortString(), 'name': name};
  }

  @override
  String toString() {
    return 'OAuth2DomainInfo{scheme: $scheme, name: $name}';
  }
}

class OAuth2MobileInfo {
  String pkgName;
  String appSecret;

  OAuth2MobileInfo({required this.pkgName, required this.appSecret});

  OAuth2MobileInfo.fromJson(Map<String, dynamic> json)
      : pkgName = json['pkgName'],
        appSecret = json['appSecret'];

  Map<String, dynamic> toJson() {
    return {'pkgName': pkgName, 'appSecret': appSecret};
  }

  @override
  String toString() {
    return 'OAuth2MobileInfo{pkgName: $pkgName, appSecret: $appSecret}';
  }
}

class OAuth2RegistrationInfo {
  OAuth2MapperConfig mapperConfig;
  String clientId;
  String clientSecret;
  String authorizationUri;
  String accessTokenUri;
  List<String> scope;
  String? userInfoUri;
  String userNameAttributeName;
  String? jwkSetUri;
  String clientAuthenticationMethod;
  String? loginButtonLabel;
  String? loginButtonIcon;
  List<PlatformType> platforms;
  Map<String, dynamic>? additionalInfo;

  OAuth2RegistrationInfo(
      {required this.mapperConfig,
      required this.clientId,
      required this.clientSecret,
      required this.authorizationUri,
      required this.accessTokenUri,
      required this.scope,
      required this.userNameAttributeName,
      required this.clientAuthenticationMethod,
      this.platforms = const [],
      this.userInfoUri,
      this.jwkSetUri,
      this.loginButtonLabel,
      this.loginButtonIcon,
      this.additionalInfo});

  OAuth2RegistrationInfo.fromJson(Map<String, dynamic> json)
      : mapperConfig = OAuth2MapperConfig.fromJson(json['mapperConfig']),
        clientId = json['clientId'],
        clientSecret = json['clientSecret'],
        authorizationUri = json['authorizationUri'],
        accessTokenUri = json['accessTokenUri'],
        scope = json['scope'],
        userInfoUri = json['userInfoUri'],
        userNameAttributeName = json['userNameAttributeName'],
        jwkSetUri = json['jwkSetUri'],
        clientAuthenticationMethod = json['clientAuthenticationMethod'],
        loginButtonLabel = json['loginButtonLabel'],
        loginButtonIcon = json['loginButtonIcon'],
        platforms = json['platforms'] != null
            ? (json['platforms'] as List<dynamic>)
                .map((e) => platformTypeFromString(e))
                .toList()
            : [],
        additionalInfo = json['additionalInfo'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'mapperConfig': mapperConfig.toJson(),
      'clientId': clientId,
      'clientSecret': clientSecret,
      'authorizationUri': authorizationUri,
      'accessTokenUri': accessTokenUri,
      'scope': scope,
      'userNameAttributeName': userNameAttributeName,
      'clientAuthenticationMethod': clientAuthenticationMethod,
      'platforms': platforms.map((e) => e.toShortString()).toList()
    };
    if (userInfoUri != null) {
      json['userInfoUri'] = userInfoUri;
    }
    if (jwkSetUri != null) {
      json['jwkSetUri'] = jwkSetUri;
    }
    if (loginButtonLabel != null) {
      json['loginButtonLabel'] = loginButtonLabel;
    }
    if (loginButtonIcon != null) {
      json['loginButtonIcon'] = loginButtonIcon;
    }
    if (additionalInfo != null) {
      json['additionalInfo'] = additionalInfo;
    }
    return json;
  }

  @override
  String toString() {
    return 'OAuth2RegistrationInfo{mapperConfig: $mapperConfig, clientId: $clientId, clientSecret: $clientSecret, authorizationUri: $authorizationUri, '
        'accessTokenUri: $accessTokenUri, scope: $scope, userInfoUri: $userInfoUri, userNameAttributeName: $userNameAttributeName, '
        'jwkSetUri: $jwkSetUri, clientAuthenticationMethod: $clientAuthenticationMethod, loginButtonLabel: $loginButtonLabel, '
        'loginButtonIcon: $loginButtonIcon, platforms: $platforms, additionalInfo: $additionalInfo}';
  }
}

class OAuth2ParamsInfo {
  List<OAuth2DomainInfo> domainInfos;
  List<OAuth2MobileInfo> mobileInfos;
  List<OAuth2RegistrationInfo> clientRegistrations;

  OAuth2ParamsInfo(
      {required this.domainInfos,
      required this.clientRegistrations,
      this.mobileInfos = const []});

  OAuth2ParamsInfo.fromJson(Map<String, dynamic> json)
      : domainInfos = (json['domainInfos'] as List<dynamic>)
            .map((e) => OAuth2DomainInfo.fromJson(e))
            .toList(),
        mobileInfos = (json['mobileInfos'] as List<dynamic>)
            .map((e) => OAuth2MobileInfo.fromJson(e))
            .toList(),
        clientRegistrations = (json['clientRegistrations'] as List<dynamic>)
            .map((e) => OAuth2RegistrationInfo.fromJson(e))
            .toList();

  Map<String, dynamic> toJson() {
    return {
      'domainInfos': domainInfos.map((e) => e.toJson()).toList(),
      'mobileInfos': mobileInfos.map((e) => e.toJson()).toList(),
      'clientRegistrations': clientRegistrations.map((e) => e.toJson()).toList()
    };
  }

  @override
  String toString() {
    return 'OAuth2ParamsInfo{domainInfos: $domainInfos, mobileInfos: $mobileInfos, clientRegistrations: $clientRegistrations}';
  }
}

class OAuth2Info {
  bool enabled;
  List<OAuth2ParamsInfo> oauth2ParamsInfos;

  OAuth2Info({required this.enabled, required this.oauth2ParamsInfos});

  OAuth2Info.fromJson(Map<String, dynamic> json)
      : enabled = json['enabled'],
        oauth2ParamsInfos = (json['oauth2ParamsInfos'] as List<dynamic>)
            .map((e) => OAuth2ParamsInfo.fromJson(e))
            .toList();

  Map<String, dynamic> toJson() {
    return {
      'enabled': enabled,
      'oauth2ParamsInfos': oauth2ParamsInfos.map((e) => e.toJson()).toList()
    };
  }

  @override
  String toString() {
    return 'OAuth2Info{enabled: $enabled, oauth2ParamsInfos: $oauth2ParamsInfos}';
  }
}
