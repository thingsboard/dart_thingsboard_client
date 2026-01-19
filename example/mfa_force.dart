import 'dart:convert';
import 'dart:io';

import 'package:thingsboard_client/thingsboard_client.dart';
import 'package:collection/collection.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';

late ThingsboardClient tbClient;

void main() async {
  try {
    tbClient =
        ThingsboardClient(thingsBoardApiEndpoint, onMfaForce: onMfaForce);
    await tbClient.login(LoginRequest('tenant@thingsboard.org', 'tenant'));

    print('isAuthenticated=${tbClient.isAuthenticated()}');

    print('authUser: ${tbClient.getAuthUser()}');

    if (tbClient.isAuthenticated() && !tbClient.isMfaConfigurationToken()) {
      var currentUserDetails = await tbClient.getUserService().getUser();
      print('currentUserDetails: $currentUserDetails');
      await tbClient.logout();
    }
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

void onMfaForce() async {
  print('ON MULTI-FORCE!');
  List<TwoFaProviderType> providers =
      await tbClient.getTwoFactorAuthService().getAvailableTwoFaProviders();
  print('Available providers: $providers');

  ///EMAIL MFA
  final EmailTwoFaAccountConfig emailConfig = await tbClient
          .getTwoFactorAuthService()
          .generateTwoFaAccountConfig(TwoFaProviderType.EMAIL)
      as EmailTwoFaAccountConfig;
  print("Current user email: ${emailConfig.email}");
  final mfaEmail = 'tenant@thingsboard.io';
  emailConfig.email = mfaEmail;
  await tbClient
      .getTwoFactorAuthService()
      .submitTwoFaAccountConfig(emailConfig);
  final mfaCodeSentToEmail = '123456';
  await tbClient.getTwoFactorAuthService().verifyAndSaveTwoFaAccountConfig(
      emailConfig,
      verificationCode: mfaCodeSentToEmail);

  ///TOTP App
  final TotpTwoFaAccountConfig totpTwoFaAccountConfig = await tbClient
          .getTwoFactorAuthService()
          .generateTwoFaAccountConfig(TwoFaProviderType.TOTP)
      as TotpTwoFaAccountConfig;
  final url = Uri.parse(totpTwoFaAccountConfig.authUrl);
  final code = url.queryParameters['secret']!;
  print('url: ${totpTwoFaAccountConfig.authUrl}, code: $code');

  ///Display qr code for totp apps with flutter
  ///import 'package:barcode/barcode.dart';
  ///import 'package:flutter_svg/flutter_svg.dart';
  // final qrWidget = SvgPicture.string(
  //                   Barcode.qrCode(
  //                     errorCorrectLevel: BarcodeQRCorrectionLevel.medium,
  //                   ).toSvg(config.authUrl, height: 120, width: 120),
  //                 );
  final codeFromTotpApp = '123456';
  await tbClient.getTwoFactorAuthService().verifyAndSaveTwoFaAccountConfig(
      totpTwoFaAccountConfig,
      verificationCode: codeFromTotpApp);

  ///SMS
  final SmsTwoFaAccountConfig smsTwoFaAccountConfig = await tbClient
          .getTwoFactorAuthService()
          .generateTwoFaAccountConfig(TwoFaProviderType.SMS)
      as SmsTwoFaAccountConfig;
  final mfaPhone = '+380991233221';
  smsTwoFaAccountConfig.phoneNumber = mfaPhone;
  await tbClient
      .getTwoFactorAuthService()
      .submitTwoFaAccountConfig(smsTwoFaAccountConfig);
  final mfaCodeSentToPhone = '123456';
  await tbClient.getTwoFactorAuthService().verifyAndSaveTwoFaAccountConfig(
      smsTwoFaAccountConfig,
      verificationCode: mfaCodeSentToPhone);

  ///Backup code
  final BackupCodeTwoFaAccountConfig backupCodeTwoFaAccountConfig =
      await tbClient
              .getTwoFactorAuthService()
              .generateTwoFaAccountConfig(TwoFaProviderType.BACKUP_CODE)
          as BackupCodeTwoFaAccountConfig;
  print('codes: ${backupCodeTwoFaAccountConfig.codes}');
}
