enum TwoFaProviderType { TOTP, SMS, EMAIL, BACKUP_CODE }

TwoFaProviderType twoFaProviderTypeFromString(String value) {
  return TwoFaProviderType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension TwoFaProviderTypeToString on TwoFaProviderType {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class TwoFaProviderConfig {
  TwoFaProviderConfig();

  TwoFaProviderType getProviderType();

  factory TwoFaProviderConfig.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('providerType')) {
      var providerType = twoFaProviderTypeFromString(json['providerType']);
      switch (providerType) {
        case TwoFaProviderType.TOTP:
          return TotpTwoFaProviderConfig.fromJson(json);
        case TwoFaProviderType.SMS:
          return SmsTwoFaProviderConfig.fromJson(json);
        case TwoFaProviderType.EMAIL:
          return EmailTwoFaProviderConfig.fromJson(json);
        case TwoFaProviderType.BACKUP_CODE:
          return BackupCodeTwoFaProviderConfig.fromJson(json);
      }
    } else {
      throw FormatException('Missing providerType!');
    }
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['providerType'] = getProviderType().toShortString();
    return json;
  }
}

class TotpTwoFaProviderConfig extends TwoFaProviderConfig {
  String issuerName;

  TotpTwoFaProviderConfig({required this.issuerName});

  @override
  TwoFaProviderType getProviderType() {
    return TwoFaProviderType.TOTP;
  }

  TotpTwoFaProviderConfig.fromJson(Map<String, dynamic> json)
      : issuerName = json['issuerName'];

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...{'issuerName': issuerName}
      };

  @override
  String toString() {
    return 'TotpTwoFaProviderConfig{issuerName: $issuerName}';
  }
}

abstract class OtpBasedTwoFaProviderConfig extends TwoFaProviderConfig {
  int verificationCodeLifetime;

  OtpBasedTwoFaProviderConfig({required this.verificationCodeLifetime});

  OtpBasedTwoFaProviderConfig.fromJson(Map<String, dynamic> json)
      : verificationCodeLifetime = json['verificationCodeLifetime'];

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...{'verificationCodeLifetime': verificationCodeLifetime}
      };

  @override
  String toString() {
    return 'OtpBasedTwoFaProviderConfig{${otpBasedTwoFaProviderConfigString()}}';
  }

  String otpBasedTwoFaProviderConfigString([String? toStringBody]) {
    return 'verificationCodeLifetime: $verificationCodeLifetime${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class SmsTwoFaProviderConfig extends OtpBasedTwoFaProviderConfig {
  String smsVerificationMessageTemplate;

  SmsTwoFaProviderConfig(
      {required int verificationCodeLifetime,
      required this.smsVerificationMessageTemplate})
      : super(verificationCodeLifetime: verificationCodeLifetime);

  @override
  TwoFaProviderType getProviderType() {
    return TwoFaProviderType.SMS;
  }

  SmsTwoFaProviderConfig.fromJson(Map<String, dynamic> json)
      : smsVerificationMessageTemplate = json['smsVerificationMessageTemplate'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...{'smsVerificationMessageTemplate': smsVerificationMessageTemplate}
      };

  @override
  String toString() {
    return 'SmsTwoFaProviderConfig{${otpBasedTwoFaProviderConfigString('smsVerificationMessageTemplate: $smsVerificationMessageTemplate')}}';
  }
}

class EmailTwoFaProviderConfig extends OtpBasedTwoFaProviderConfig {
  EmailTwoFaProviderConfig({required int verificationCodeLifetime})
      : super(verificationCodeLifetime: verificationCodeLifetime);

  @override
  TwoFaProviderType getProviderType() {
    return TwoFaProviderType.EMAIL;
  }

  EmailTwoFaProviderConfig.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);

  @override
  Map<String, dynamic> toJson() => {...super.toJson()};

  @override
  String toString() {
    return 'EmailTwoFaProviderConfig{${otpBasedTwoFaProviderConfigString()}}';
  }
}

class BackupCodeTwoFaProviderConfig extends TwoFaProviderConfig {
  int codesQuantity;

  BackupCodeTwoFaProviderConfig({required this.codesQuantity});

  @override
  TwoFaProviderType getProviderType() {
    return TwoFaProviderType.BACKUP_CODE;
  }

  BackupCodeTwoFaProviderConfig.fromJson(Map<String, dynamic> json)
      : codesQuantity = json['codesQuantity'];

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...{'codesQuantity': codesQuantity}
      };

  @override
  String toString() {
    return 'BackupCodeTwoFaProviderConfig{codesQuantity: $codesQuantity}';
  }
}

class PlatformTwoFaSettings {
  List<TwoFaProviderConfig> providers;
  int minVerificationCodeSendPeriod;
  String? verificationCodeCheckRateLimit;
  int maxVerificationFailuresBeforeUserLockout;
  int totalAllowedTimeForVerification;

  PlatformTwoFaSettings(
      {required this.providers,
      this.minVerificationCodeSendPeriod = 5,
      this.verificationCodeCheckRateLimit = '',
      this.maxVerificationFailuresBeforeUserLockout = 0,
      this.totalAllowedTimeForVerification = 60});

  PlatformTwoFaSettings.fromJson(Map<String, dynamic> json)
      : providers = (json['providers'] as List<dynamic>)
            .map((e) => TwoFaProviderConfig.fromJson(e))
            .toList(),
        minVerificationCodeSendPeriod = json['minVerificationCodeSendPeriod'],
        verificationCodeCheckRateLimit = json['verificationCodeCheckRateLimit'],
        maxVerificationFailuresBeforeUserLockout =
            json['maxVerificationFailuresBeforeUserLockout'],
        totalAllowedTimeForVerification =
            json['totalAllowedTimeForVerification'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['providers'] = providers.map((e) => e.toJson()).toList();
    json['minVerificationCodeSendPeriod'] = minVerificationCodeSendPeriod;
    json['verificationCodeCheckRateLimit'] = verificationCodeCheckRateLimit;
    json['maxVerificationFailuresBeforeUserLockout'] =
        maxVerificationFailuresBeforeUserLockout;
    json['totalAllowedTimeForVerification'] = totalAllowedTimeForVerification;
    return json;
  }

  @override
  String toString() {
    return 'PlatformTwoFaSettings{providers: $providers, minVerificationCodeSendPeriod: $minVerificationCodeSendPeriod, '
        'verificationCodeCheckRateLimit: $verificationCodeCheckRateLimit, maxVerificationFailuresBeforeUserLockout: $maxVerificationFailuresBeforeUserLockout, '
        'totalAllowedTimeForVerification: $totalAllowedTimeForVerification}';
  }
}

abstract class TwoFaAccountConfig {
  bool useByDefault;

  TwoFaAccountConfig({required this.useByDefault});

  TwoFaProviderType getProviderType();

  factory TwoFaAccountConfig.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('providerType')) {
      var providerType = twoFaProviderTypeFromString(json['providerType']);
      switch (providerType) {
        case TwoFaProviderType.TOTP:
          return TotpTwoFaAccountConfig.fromJson(json);
        case TwoFaProviderType.SMS:
          return SmsTwoFaAccountConfig.fromJson(json);
        case TwoFaProviderType.EMAIL:
          return EmailTwoFaAccountConfig.fromJson(json);
        case TwoFaProviderType.BACKUP_CODE:
          return BackupCodeTwoFaAccountConfig.fromJson(json);
      }
    } else {
      throw FormatException('Missing providerType!');
    }
  }

  TwoFaAccountConfig._fromJson(Map<String, dynamic> json)
      : useByDefault = json['useByDefault'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['useByDefault'] = useByDefault;
    json['providerType'] = getProviderType().toShortString();
    return json;
  }

  @override
  String toString() {
    return 'TwoFaAccountConfig{${twoFaAccountConfigString()}}';
  }

  String twoFaAccountConfigString([String? toStringBody]) {
    return 'useByDefault: $useByDefault${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}

class TotpTwoFaAccountConfig extends TwoFaAccountConfig {
  String authUrl;

  TotpTwoFaAccountConfig({required bool useByDefault, required this.authUrl})
      : super(useByDefault: useByDefault);

  @override
  TwoFaProviderType getProviderType() {
    return TwoFaProviderType.TOTP;
  }

  TotpTwoFaAccountConfig.fromJson(Map<String, dynamic> json)
      : authUrl = json['authUrl'],
        super._fromJson(json);

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...{'authUrl': authUrl}
      };

  @override
  String toString() {
    return 'TotpTwoFaAccountConfig{${twoFaAccountConfigString('authUrl: $authUrl')}}';
  }
}

class SmsTwoFaAccountConfig extends TwoFaAccountConfig {
  String phoneNumber;

  SmsTwoFaAccountConfig({required bool useByDefault, required this.phoneNumber})
      : super(useByDefault: useByDefault);

  @override
  TwoFaProviderType getProviderType() {
    return TwoFaProviderType.SMS;
  }

  SmsTwoFaAccountConfig.fromJson(Map<String, dynamic> json)
      : phoneNumber = json['phoneNumber'],
        super._fromJson(json);

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...{'phoneNumber': phoneNumber}
      };

  @override
  String toString() {
    return 'SmsTwoFaAccountConfig{${twoFaAccountConfigString('phoneNumber: $phoneNumber')}}';
  }
}

class EmailTwoFaAccountConfig extends TwoFaAccountConfig {
  String email;

  EmailTwoFaAccountConfig({required bool useByDefault, required this.email})
      : super(useByDefault: useByDefault);

  @override
  TwoFaProviderType getProviderType() {
    return TwoFaProviderType.EMAIL;
  }

  EmailTwoFaAccountConfig.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        super._fromJson(json);

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...{'email': email}
      };

  @override
  String toString() {
    return 'EmailTwoFaAccountConfig{${twoFaAccountConfigString('email: $email')}}';
  }
}

class BackupCodeTwoFaAccountConfig extends TwoFaAccountConfig {
  Set<String> codes;

  BackupCodeTwoFaAccountConfig(
      {required bool useByDefault, required this.codes})
      : super(useByDefault: useByDefault);

  @override
  TwoFaProviderType getProviderType() {
    return TwoFaProviderType.BACKUP_CODE;
  }

  BackupCodeTwoFaAccountConfig.fromJson(Map<String, dynamic> json)
      : codes = json['codes'] == null ? {} : 
            (json['codes'] as List<dynamic>).map((e) => e as String).toSet(),
        super._fromJson(json);

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...{'codes': codes.toList()}
      };

  @override
  String toString() {
    return 'BackupCodeTwoFaAccountConfig{${twoFaAccountConfigString('codes: $codes')}}';
  }
}

class AccountTwoFaSettings {
  Map<TwoFaProviderType, TwoFaAccountConfig> configs;

  AccountTwoFaSettings({required this.configs});

  AccountTwoFaSettings.fromJson(Map<String, dynamic> json)
      : configs = (json['configs'] as Map).map((key, value) => MapEntry(
            twoFaProviderTypeFromString(key),
            TwoFaAccountConfig.fromJson(value)));

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['configs'] = configs
        .map((key, value) => MapEntry(key.toShortString(), value.toJson()));
    return json;
  }

  @override
  String toString() {
    return 'AccountTwoFaSettings{configs: $configs}';
  }
}

class TwoFaProviderInfo {
  TwoFaProviderType type;
  bool isDefault;
  String? contact;
  int? minVerificationCodeSendPeriod;

  TwoFaProviderInfo.fromJson(Map<String, dynamic> json)
      : type = twoFaProviderTypeFromString(json['type']),
        isDefault = json['default'],
        contact = json['contact'],
        minVerificationCodeSendPeriod = json['minVerificationCodeSendPeriod'];

  @override
  String toString() {
    return 'TwoFaProviderInfo{type: $type, isDefault: $isDefault, contact: $contact, minVerificationCodeSendPeriod: $minVerificationCodeSendPeriod}';
  }
}
