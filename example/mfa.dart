import 'dart:convert';
import 'dart:io';

import 'package:thingsboard_client/thingsboard_client.dart';
import 'package:collection/collection.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';

late ThingsboardClient tbClient;

void main() async {
  try {
    tbClient = ThingsboardClient(thingsBoardApiEndpoint, onMfaAuth: onMfa);
    await tbClient.login(LoginRequest('tenant@thingsboard.org', 'tenant'));

    print('isAuthenticated=${tbClient.isAuthenticated()}');

    print('authUser: ${tbClient.getAuthUser()}');

    if (tbClient.isAuthenticated() &&
        tbClient.getAuthUser()!.authority != Authority.PRE_VERIFICATION_TOKEN) {
      var currentUserDetails = await tbClient.getUserService().getUser();
      print('currentUserDetails: $currentUserDetails');
      await tbClient.logout();
    }
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

void onMfa() async {
  print('ON MULTI-FACTOR AUTHENTICATION!');
  List<TwoFaProviderInfo> providers = await tbClient
      .getTwoFactorAuthService()
      .getAvailableLoginTwoFaProviders();
  print('Available providers: $providers');
  var defaultProvider =
      providers.firstWhereOrNull((provider) => provider.isDefault);
  if (defaultProvider != null) {
    print('Default provider: $defaultProvider');
    await tbClient
        .getTwoFactorAuthService()
        .requestTwoFaVerificationCode(defaultProvider.type);
    print('Verification code sent!');
    print('Enter MFA code:');
    var code = stdin.readLineSync(encoding: utf8);
    var mfaCode = code?.trim();
    print('Code entered: $mfaCode');
    await tbClient.checkTwoFaVerificationCode(defaultProvider.type, mfaCode!);

    print('isAuthenticated=${tbClient.isAuthenticated()}');

    print('authUser: ${tbClient.getAuthUser()}');

    var currentUserDetails = await tbClient.getUserService().getUser();
    print('currentUserDetails: $currentUserDetails');
    await tbClient.logout();
  } else {
    await tbClient.logout();
  }
}
