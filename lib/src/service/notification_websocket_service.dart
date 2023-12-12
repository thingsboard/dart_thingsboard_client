import '../model/model.dart';
import '../thingsboard_client_base.dart';
import 'telemetry_websocket_service.dart';

class NotificationWebsocketService extends TelemetryService {
  final ThingsboardClient _tbClient;
  late final TelemetryWebsocketService telemetryService;

  factory NotificationWebsocketService(
      ThingsboardClient tbClient, String apiEndpoint) {
    return NotificationWebsocketService._internal(tbClient, apiEndpoint);
  }

  NotificationWebsocketService._internal(this._tbClient, String apiEndpoint) {
    telemetryService = TelemetryWebsocketService(_tbClient, apiEndpoint);
  }

  @override
  void subscribe(TelemetrySubscriber subscriber) {
    telemetryService.subscribe(subscriber);
  }

  @override
  void unsubscribe(TelemetrySubscriber subscriber) {
    telemetryService.unsubscribe(subscriber);
  }

  @override
  void update(TelemetrySubscriber subscriber) {
    telemetryService.update(subscriber);
  }

  @override
  void reset(bool close) {
    telemetryService.reset(close);
  }
}
