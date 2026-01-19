import 'dart:collection';
import 'dart:math';

import 'package:thingsboard_client/src/model/model.dart';

import 'entity_type_models.dart';
import 'vc_models.dart';
import 'id/admin_settings_id.dart';
import 'base_data.dart';

class AdminSettings extends BaseData<AdminSettingsId> with HasTenantId {
  String key;
  TenantId tenantId;
  Map<String, dynamic> jsonValue;

  AdminSettings.fromJson(Map<String, dynamic> json)
      : key = json['key'],
      tenantId = TenantId.fromJson(json['tenantId']),
        jsonValue = json['jsonValue'],
        super.fromJson(json, (id) => AdminSettingsId(id));

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['key'] = key;
    json['jsonValue'] = jsonValue;
    return json;
  }

  MailServerSettings get mailServerSettings =>
      MailServerSettings.fromJson(jsonValue);

  set mailServerSettings(MailServerSettings settings) =>
      jsonValue = settings.toJson();

  GeneralSettings get generalSettings => GeneralSettings.fromJson(jsonValue);

  set generalSettings(GeneralSettings settings) =>
      jsonValue = settings.toJson();

  SmsProviderConfiguration get smsProviderConfiguration =>
      SmsProviderConfiguration.fromJson(jsonValue);

  set smsProviderConfiguration(SmsProviderConfiguration configuration) =>
      jsonValue = configuration.toJson();

  @override
  String toString() {
    return 'AdminSettings{${baseDataString('key: $key, jsonValue: $jsonValue')}}';
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }
}

enum SmtpProtocol { SMTP, SMTPS }

SmtpProtocol smtpProtocolFromString(String value) {
  return SmtpProtocol.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension SmtpProtocolToString on SmtpProtocol {
  String toShortString() {
    return toString().split('.').last.toLowerCase();
  }
}

class MailServerSettings {
  String mailFrom;
  SmtpProtocol smtpProtocol;
  String smtpHost;
  String smtpPort;
  String timeout;
  bool? enableTls;
  String? tlsVersion;
  String? username;
  String? password;
  bool? enableProxy;
  String? proxyHost;
  String? proxyPort;
  String? proxyUser;
  String? proxyPassword;
  bool? enableOauth2;
  String? providerId;
  String? clientId;
  String? clientSecret;
  String? providerTenantId;
  String? authUri;
  String? tokenUri;
  List<String>? scope;
  String? redirectUri;
  bool? tokenGenerated;

  MailServerSettings({
    this.mailFrom = 'ThingsBoard <sysadmin@localhost.localdomain>',
    this.smtpProtocol = SmtpProtocol.SMTP,
    this.smtpHost = 'localhost',
    this.smtpPort = '25',
    this.timeout = '10000',
    this.enableTls,
    this.tlsVersion,
    this.username,
    this.password,
    this.enableProxy,
    this.proxyHost,
    this.proxyPort,
    this.proxyUser,
    this.proxyPassword,
    this.enableOauth2,
    this.providerId,
    this.clientId,
    this.clientSecret,
    this.providerTenantId,
    this.authUri,
    this.tokenUri,
    this.scope,
    this.redirectUri,
    this.tokenGenerated,
  });

  MailServerSettings.fromJson(Map<String, dynamic> json)
      : mailFrom = json['mailFrom'],
        smtpProtocol = smtpProtocolFromString(json['smtpProtocol']),
        smtpHost = json['smtpHost'],
        smtpPort = json['smtpPort'],
        timeout = json['timeout'],
        enableTls = json['enableTls'],
        tlsVersion = json['tlsVersion'],
        username = json['username'],
        password = json['password'],
        enableProxy = json['enableProxy'],
        proxyHost = json['proxyHost'],
        proxyPort = json['proxyPort'],
        proxyUser = json['proxyUser'],
        proxyPassword = json['proxyPassword'],
        enableOauth2 = json['enableOauth2'],
        providerId = json['providerId'],
        clientId = json['clientId'],
        clientSecret = json['clientSecret'],
        providerTenantId = json['providerTenantId'],
        authUri = json['authUri'],
        tokenUri = json['tokenUri'],
        scope = List.from(json['scope']),
        redirectUri = json['redirectUri'],
        tokenGenerated = json['tokenGenerated'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['mailFrom'] = mailFrom;
    json['smtpProtocol'] = smtpProtocol.toShortString();
    json['smtpHost'] = smtpHost;
    json['smtpPort'] = smtpPort;
    json['timeout'] = timeout;
    if (enableTls != null) {
      json['enableTls'] = enableTls;
    }
    if (tlsVersion != null) {
      json['tlsVersion'] = tlsVersion;
    }
    if (username != null) {
      json['username'] = username;
    }
    if (password != null) {
      json['password'] = password;
    }
    if (enableProxy != null) {
      json['enableProxy'] = enableProxy;
    }
    if (proxyHost != null) {
      json['proxyHost'] = proxyHost;
    }
    if (proxyPort != null) {
      json['proxyPort'] = proxyPort;
    }
    if (proxyUser != null) {
      json['proxyUser'] = proxyUser;
    }
    if (proxyPassword != null) {
      json['proxyPassword'] = proxyPassword;
    }
    if (enableOauth2 != null) {
      json['enableOauth2'] = enableOauth2;
    }
    if (providerId != null) {
      json['providerId'] = providerId;
    }
    if (clientId != null) {
      json['clientId'] = clientId;
    }
    if (clientSecret != null) {
      json['clientSecret'] = clientSecret;
    }
    if (providerTenantId != null) {
      json['providerTenantId'] = providerTenantId;
    }
    if (authUri != null) {
      json['authUri'] = authUri;
    }
    if (tokenUri != null) {
      json['tokenUri'] = tokenUri;
    }
    if (scope != null) {
      json['scope'] = scope;
    }
    if (redirectUri != null) {
      json['redirectUri'] = redirectUri;
    }
    if (tokenGenerated != null) {
      json['tokenGenerated'] = tokenGenerated;
    }
    return json;
  }

  @override
  String toString() {
    return 'MailServerSettings{mailFrom: $mailFrom, smtpProtocol: ${smtpProtocol.toShortString()}, '
        'smtpHost: $smtpHost, smtpPort: $smtpPort, timeout: $timeout, enableTls: $enableTls, '
        'tlsVersion: $tlsVersion, username: $username, password: $password, enableProxy: $enableProxy, '
        'proxyHost: $proxyHost, proxyPort: $proxyPort, proxyUser: $proxyUser, proxyPassword: $proxyPassword, '
        'enableOauth2: $enableOauth2, providerId: $providerId, clientId: $clientId, clientSecret: $clientSecret, '
        'providerTenantId: $providerTenantId, authUri: $authUri, tokenUri: $tokenUri, scope: $scope, '
        'redirectUri: $redirectUri, tokenGenerated: $tokenGenerated}';
  }
}

class GeneralSettings {
  String baseUrl;

  GeneralSettings({this.baseUrl = 'http://localhost:8080'});

  GeneralSettings.fromJson(Map<String, dynamic> json)
      : baseUrl = json['baseUrl'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['baseUrl'] = baseUrl;
    return json;
  }

  @override
  String toString() {
    return 'GeneralSettings{baseUrl: $baseUrl}';
  }
}

enum SmsProviderType { AWS_SNS, TWILIO }

SmsProviderType smsProviderTypeFromString(String value) {
  return SmsProviderType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension SSmsProviderTypeToString on SmsProviderType {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class SmsProviderConfiguration {
  SmsProviderConfiguration();

  SmsProviderType getType();

  factory SmsProviderConfiguration.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('type')) {
      var smsProviderType = smsProviderTypeFromString(json['type']);
      switch (smsProviderType) {
        case SmsProviderType.AWS_SNS:
          return AwsSnsSmsProviderConfiguration.fromJson(json);
        case SmsProviderType.TWILIO:
          return TwilioSmsProviderConfiguration.fromJson(json);
      }
    } else {
      throw FormatException('Missing type!');
    }
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = getType().toShortString();
    return json;
  }
}

class AwsSnsSmsProviderConfiguration extends SmsProviderConfiguration {
  String? accessKeyId;
  String? secretAccessKey;
  String? region;

  AwsSnsSmsProviderConfiguration(
      {this.accessKeyId = '',
      this.secretAccessKey = '',
      this.region = 'us-east-1'});

  @override
  SmsProviderType getType() {
    return SmsProviderType.AWS_SNS;
  }

  AwsSnsSmsProviderConfiguration.fromJson(Map<String, dynamic> json)
      : accessKeyId = json['accessKeyId'],
        secretAccessKey = json['secretAccessKey'],
        region = json['region'];

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (accessKeyId != null) {
      json['accessKeyId'] = accessKeyId;
    }
    if (secretAccessKey != null) {
      json['secretAccessKey'] = secretAccessKey;
    }
    if (region != null) {
      json['region'] = region;
    }
    return json;
  }

  @override
  String toString() {
    return 'AwsSnsSmsProviderConfiguration{accessKeyId: $accessKeyId, secretAccessKey: $secretAccessKey, region: $region}';
  }
}

class TwilioSmsProviderConfiguration extends SmsProviderConfiguration {
  String? accountSid;
  String? accountToken;
  String? numberFrom;

  TwilioSmsProviderConfiguration(
      {this.accountSid = '', this.accountToken = '', this.numberFrom = ''});

  @override
  SmsProviderType getType() {
    return SmsProviderType.TWILIO;
  }

  TwilioSmsProviderConfiguration.fromJson(Map<String, dynamic> json)
      : accountSid = json['accountSid'],
        accountToken = json['accountToken'],
        numberFrom = json['numberFrom'];

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (accountSid != null) {
      json['accountSid'] = accountSid;
    }
    if (accountToken != null) {
      json['accountToken'] = accountToken;
    }
    if (numberFrom != null) {
      json['numberFrom'] = numberFrom;
    }
    return json;
  }

  @override
  String toString() {
    return 'TwilioSmsProviderConfiguration{accountSid: $accountSid, accountToken: $accountToken, numberFrom: $numberFrom}';
  }
}

class TestSmsRequest {
  SmsProviderConfiguration providerConfiguration;
  String numberTo;
  String message;

  TestSmsRequest(
      {required this.providerConfiguration,
      required this.numberTo,
      required this.message});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['providerConfiguration'] = providerConfiguration.toJson();
    json['numberTo'] = numberTo;
    json['message'] = message;
    return json;
  }

  @override
  String toString() {
    return 'TestSmsRequest{providerConfiguration: $providerConfiguration, numberTo: $numberTo, message: $message}';
  }
}

class UserPasswordPolicy {
  int minimumLength;
  int? minimumUppercaseLetters;
  int? minimumLowercaseLetters;
  int? minimumDigits;
  int? minimumSpecialCharacters;
  int? passwordExpirationPeriodDays;
  int? passwordReuseFrequencyDays;

  UserPasswordPolicy(
      {this.minimumLength = 6,
      this.minimumUppercaseLetters = 0,
      this.minimumLowercaseLetters = 0,
      this.minimumDigits = 0,
      this.minimumSpecialCharacters = 0,
      this.passwordExpirationPeriodDays = 0,
      this.passwordReuseFrequencyDays = 0});

  UserPasswordPolicy.fromJson(Map<String, dynamic> json)
      : minimumLength = json['minimumLength'],
        minimumUppercaseLetters = json['minimumUppercaseLetters'],
        minimumLowercaseLetters = json['minimumLowercaseLetters'],
        minimumDigits = json['minimumDigits'],
        minimumSpecialCharacters = json['minimumSpecialCharacters'],
        passwordExpirationPeriodDays = json['passwordExpirationPeriodDays'],
        passwordReuseFrequencyDays = json['passwordReuseFrequencyDays'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['minimumLength'] = minimumLength;
    json['minimumUppercaseLetters'] = minimumUppercaseLetters;
    json['minimumLowercaseLetters'] = minimumLowercaseLetters;
    json['minimumDigits'] = minimumDigits;
    json['minimumSpecialCharacters'] = minimumSpecialCharacters;
    json['passwordExpirationPeriodDays'] = passwordExpirationPeriodDays;
    json['passwordReuseFrequencyDays'] = passwordReuseFrequencyDays;
    return json;
  }

  @override
  String toString() {
    return 'UserPasswordPolicy{minimumLength: $minimumLength, minimumUppercaseLetters: $minimumUppercaseLetters, minimumLowercaseLetters: $minimumLowercaseLetters, minimumDigits: $minimumDigits, minimumSpecialCharacters: $minimumSpecialCharacters, passwordExpirationPeriodDays: $passwordExpirationPeriodDays, passwordReuseFrequencyDays: $passwordReuseFrequencyDays}';
  }
}

class SecuritySettings {
  UserPasswordPolicy passwordPolicy;
  int? maxFailedLoginAttempts;
  String? userLockoutNotificationEmail;

  SecuritySettings(
      {required this.passwordPolicy,
      this.maxFailedLoginAttempts = 0,
      this.userLockoutNotificationEmail});

  SecuritySettings.fromJson(Map<String, dynamic> json)
      : passwordPolicy = UserPasswordPolicy.fromJson(json['passwordPolicy']),
        maxFailedLoginAttempts = json['maxFailedLoginAttempts'],
        userLockoutNotificationEmail = json['userLockoutNotificationEmail'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['passwordPolicy'] = passwordPolicy.toJson();
    json['maxFailedLoginAttempts'] = maxFailedLoginAttempts;
    json['userLockoutNotificationEmail'] = userLockoutNotificationEmail;
    return json;
  }

  @override
  String toString() {
    return 'SecuritySettings{passwordPolicy: $passwordPolicy, maxFailedLoginAttempts: $maxFailedLoginAttempts, userLockoutNotificationEmail: $userLockoutNotificationEmail}';
  }
}

class UpdateMessage {
  String message;
  bool updateAvailable;

  UpdateMessage.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        updateAvailable = json['updateAvailable'];

  @override
  String toString() {
    return 'UpdateMessage{message: $message, updateAvailable: $updateAvailable}';
  }
}

enum RepositoryAuthMethod { USERNAME_PASSWORD, PRIVATE_KEY }

RepositoryAuthMethod repositoryAuthMethodFromString(String value) {
  return RepositoryAuthMethod.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension RepositoryAuthMethodToString on RepositoryAuthMethod {
  String toShortString() {
    return toString().split('.').last.toLowerCase();
  }
}

class RepositorySettings {
  String repositoryUri;
  RepositoryAuthMethod authMethod;
  String? username;
  String? password;
  String? privateKeyFileName;
  String? privateKey;
  String? privateKeyPassword;
  String? defaultBranch;

  RepositorySettings(
      {required this.repositoryUri,
      this.authMethod = RepositoryAuthMethod.USERNAME_PASSWORD,
      this.username,
      this.password,
      this.privateKeyFileName,
      this.privateKey,
      this.privateKeyPassword,
      this.defaultBranch});

  RepositorySettings.fromJson(Map<String, dynamic> json)
      : repositoryUri = json['repositoryUri'],
        authMethod = repositoryAuthMethodFromString(json['authMethod']),
        username = json['username'],
        password = json['password'],
        privateKeyFileName = json['privateKeyFileName'],
        privateKey = json['privateKey'],
        privateKeyPassword = json['privateKeyPassword'],
        defaultBranch = json['defaultBranch'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['repositoryUri'] = repositoryUri;
    json['authMethod'] = authMethod.toShortString();
    json['username'] = username;
    json['password'] = password;
    json['privateKeyFileName'] = privateKeyFileName;
    json['privateKey'] = privateKey;
    json['privateKeyPassword'] = privateKeyPassword;
    json['defaultBranch'] = defaultBranch;
    return json;
  }

  @override
  String toString() {
    return 'RepositorySettings{repositoryUri: $repositoryUri, authMethod: $authMethod, username: $username, $password: password, '
        '$privateKeyFileName: privateKeyFileName, privateKey: ${privateKey != null ? '[' + privateKey!.substring(0, min(30, privateKey!.length)) + '...]' : 'null'}, '
        'privateKeyPassword: $privateKeyPassword, defaultBranch: $defaultBranch}';
  }
}

class AutoVersionCreateConfig extends VersionCreateConfig {
  String? branch;

  AutoVersionCreateConfig.fromJson(Map<String, dynamic> json)
      : branch = json['branch'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (branch != null) {
      json['branch'] = branch;
    }
    return json;
  }

  @override
  String toString() {
    return 'AutoVersionCreateConfig{${versionCreateConfigString('branch: $branch')}}';
  }
}

class AutoCommitSettings {
  Map<EntityType, AutoVersionCreateConfig> settings;

  AutoCommitSettings()
      : settings = HashMap<EntityType, AutoVersionCreateConfig>();

  AutoCommitSettings.fromJson(Map<String, dynamic> json)
      : settings = json.map((key, value) => MapEntry(entityTypeFromString(key),
            AutoVersionCreateConfig.fromJson(value)));

  Map<String, dynamic> toJson() {
    var json = settings
        .map((key, value) => MapEntry(key.toShortString(), value.toJson()));
    return json;
  }

  @override
  String toString() {
    var str = 'AutoCommitSettings{';
    settings.forEach((key, value) {
      str += '\n$key: $value';
    });
    str += '}';
    return str;
  }
}
