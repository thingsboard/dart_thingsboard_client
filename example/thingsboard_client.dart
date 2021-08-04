import 'package:thingsboard_client/thingsboard_client.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';

void main() async {
  try {
    var tbClient = ThingsboardClient(thingsBoardApiEndpoint);
    await tbClient.login(LoginRequest('tenant@thingsboard.org', 'tenant'));

    print('isAuthenticated=${tbClient.isAuthenticated()}');

    print('authUser: ${tbClient.getAuthUser()}');

    var currentUserDetails = await tbClient.getUserService().getUser();
    print('currentUserDetails: $currentUserDetails');

    await tbClient.logout();
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}
