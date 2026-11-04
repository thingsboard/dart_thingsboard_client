// ignore_for_file: avoid_print
import 'package:thingsboard_client/telemetry.dart' as ws;
import 'package:thingsboard_client/thingsboard_client.dart';

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

    // 4. Latest telemetry of the first device over the WebSocket. The
    //    WebSocket types come from package:thingsboard_client/telemetry.dart.
    final devices = pageData?.data ?? <Device>[];
    if (devices.isNotEmpty) {
      final subscriber =
          ws.TelemetrySubscriber.createEntityAttributesSubscription(
        telemetryService: tbClient.getTelemetryService(),
        entityId: ws.DeviceId(devices.first.id!.id),
        attributeScope: ws.LatestTelemetry.LATEST_TELEMETRY.toShortString(),
      );
      final update = subscriber.attributeDataStream.first;
      subscriber.subscribe();
      final data = await update.timeout(const Duration(seconds: 10));
      print('Latest telemetry of ${devices.first.name}: '
          '${data.map((e) => '${e.key}=${e.value}').join(', ')}');
      subscriber.unsubscribe();
    }

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
