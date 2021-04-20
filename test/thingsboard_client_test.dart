import 'package:thingsboard_client/thingsboard_client.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', ()  {
    ThingsboardClient? tbClient;

    setUp(() async {
      tbClient = ThingsboardClient('http://localhost:8080');
      await tbClient!.init();
    });

    test('First Test', () {
      expect(tbClient!.getDeviceService(), isNot(null));
    });
  });
}
