import 'package:thingsboard_client/thingsboard_client.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
const username = 'tenant@thingsboard.org';
const password = 'tenant';

late ThingsboardClient tbClient;

void main() async {
  try {
    tbClient = ThingsboardClient(thingsBoardApiEndpoint);

    await tbClient.login(LoginRequest(username, password));

    await simpleNotificationCountSubscriptionExample();
    await simpleNotificationsSubscriptionExample();

    await tbClient.logout(
        requestConfig: RequestConfig(ignoreLoading: true, ignoreErrors: true));
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

Future<void> simpleNotificationCountSubscriptionExample() async {
  print(
      '**********************************************************************');
  print(
      '*              SIMPLE NOTIFICATION COUNT SUBSCRIPTION EXAMPLE        *');
  print(
      '**********************************************************************');

  var notificationService = tbClient.getNotificationWebsocketService();
  var subscription = NotificationSubscriber.createNotificationCountSubscription(
      telemetryService: notificationService);

  subscription.notificationCountStream.listen((count) {
    print('[WebSocket Data]: Received notification: $count');
  });

  subscription.subscribe();

  await Future.delayed(Duration(seconds: 2));
  subscription.unsubscribe();
  print(
      '**********************************************************************');
}

Future<void> simpleNotificationsSubscriptionExample() async {
  print(
      '**********************************************************************');
  print(
      '*                 SIMPLE NOTIFICATIONS SUBSCRIPTION EXAMPLE          *');
  print(
      '**********************************************************************');

  var notificationService = tbClient.getNotificationWebsocketService();
  var subscription = NotificationSubscriber.createNotificationsSubscription(
      telemetryService: notificationService, limit: 1);

  subscription.notificationStream.listen((notification) {
    print('[WebSocket Data]: Received notification: $notification');
  });

  subscription.subscribe();

  await Future.delayed(Duration(seconds: 2));
  subscription.unsubscribe();
  print(
      '**********************************************************************');
}
