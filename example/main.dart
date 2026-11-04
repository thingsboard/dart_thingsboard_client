// ignore_for_file: avoid_print
import 'package:thingsboard_client/thingsboard_client.dart'
    hide LoginRequest;
import 'package:thingsboard_client/src/model/login_models.dart'
    show LoginRequest;

const thingsBoardApiEndpoint = 'http://localhost:8080';

void main() async {
  // 1. Create client
  final tbClient = ThingsboardClient(thingsBoardApiEndpoint);

  try {
    // 2. Login with username and password
    await tbClient.login(LoginRequest(
      userName: 'tenant@thingsboard.org',
      password: 'tenant',
    ));
    print('Logged in: ${tbClient.isAuthenticated()}');

    // 3. Paginated device list
    final deviceApi = tbClient.getDeviceControllerApi();
    final response = await deviceApi.getTenantDevices(
      pageSize: 10,
      page: 0,
    );
    final pageData = response.data;
    if (pageData != null) {
      print('Total devices: ${pageData.totalElements}');
      for (final device in pageData.data ?? <Device>[]) {
        print('  - ${device.name} (${device.type})');
      }
    }

    // 4. Telemetry subscription (requires a real device and running ThingsBoard)
    // Uncomment the following to subscribe to real-time telemetry:
    //
    // final telemetryService = tbClient.getTelemetryService();
    // final subscriber = TelemetrySubscriber(telemetryService, [
    //   // Add subscription commands here, e.g. TimeseriesSubscriptionCmd
    // ]);
    // subscriber.subscribe();
    // subscriber.dataStream.listen((update) {
    //   print('Telemetry update: $update');
    // });

    // 5. Logout
    await tbClient.logout();
    print('Logged out');
  } catch (e) {
    if (e is ThingsboardError) {
      print('ThingsBoard error: ${e.message} (${e.errorCode})');
    } else {
      print('Error: $e');
    }
  }
}
