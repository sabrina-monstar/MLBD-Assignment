import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../keywords/test.dart' as flutterTest;

void main() {
  group('Flutter Driver demo', ()
  {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test ("Increment Test", () async => await flutterTest.incrementTest(driver));

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

  });
}
