import 'package:thingsboard_client/thingsboard_client.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
late ThingsboardClient tbClient;
const username = 'tenant@thingsboard.org';
const password = 'tenant';

void main() async {
   try {
    tbClient = ThingsboardClient(thingsBoardApiEndpoint);

    await tbClient.login(LoginRequest(username, password));

    await apiKeyManagementExample(tbClient);

    await tbClient.logout(
        requestConfig: RequestConfig(ignoreLoading: true, ignoreErrors: true));
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
 
}
Future<void> apiKeyManagementExample(ThingsboardClient tbClient) async {
  var currentUserDetails = await tbClient.getUserService().getUser();
  print('currentUserDetails: $currentUserDetails');
  await getApiKeys(currentUserDetails);
  final desc = 'new key';
  final key = ApiKey(currentUserDetails.id!, desc, true,
      DateTime.now().add(const Duration(days: 30)).millisecondsSinceEpoch);
  final newKey = await tbClient.getApiKeyService().postApiKey(key);
  print('---------');
  print('new userApiKey: ${newKey.value}');
  final updatedDesc = await tbClient
      .getApiKeyService()
      .updateKeyDescription(newKey.id!.id!, 'new key updated');
  print('---------');
  print('updated userApiKey: ${updatedDesc}');
  final updatedStatus =
      await tbClient.getApiKeyService().updateKeyStatus(newKey.id!.id!, false);
  print('---------');
  print('updated userApiKey: ${updatedStatus}');
  await tbClient.getApiKeyService().deleteApiKey(newKey.id!.id!);
  await getApiKeys(currentUserDetails);
}

Future<void> getApiKeys(User currentUserDetails) async {
  final userApiKeys = await tbClient.getApiKeyService().getApiKeys(
      ApiKeyQuery(userId: currentUserDetails.id!.id!, pageLink: PageLink(10)));
  print('---------');
  print('current userApiKeys: ${userApiKeys.data}');
}
