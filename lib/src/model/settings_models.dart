import 'id/admin_settings_id.dart';
import 'base_data.dart';

class AdminSettings extends BaseData<AdminSettingsId> {
  String key;
  Map<String, dynamic> jsonValue;

  AdminSettings.fromJson(Map<String, dynamic> json)
      : key = json['key'],
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

  MailServerSettings(
      {this.mailFrom = 'ThingsBoard <sysadmin@localhost.localdomain>',
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
      this.proxyPassword});

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
        proxyPassword = json['proxyPassword'];

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
    return json;
  }

  @override
  String toString() {
    return 'MailServerSettings{mailFrom: $mailFrom, smtpProtocol: ${smtpProtocol.toShortString()}, smtpHost: $smtpHost, smtpPort: $smtpPort, timeout: $timeout, enableTls: $enableTls, tlsVersion: $tlsVersion, username: $username, password: $password, enableProxy: $enableProxy, proxyHost: $proxyHost, proxyPort: $proxyPort, proxyUser: $proxyUser, proxyPassword: $proxyPassword}';
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
