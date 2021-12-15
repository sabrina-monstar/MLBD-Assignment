import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../object_repository/xpath.dart';

dynamic incrementTest (FlutterDriver driver) async {
  await driver.runUnsynchronized(() async {
    expect(await driver.getText(countertextFinder), '0');
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(incrementButton);
  });
  await driver.runUnsynchronized(() async {
    expect(await driver.getText(countertextFinder), '1');
  });

}