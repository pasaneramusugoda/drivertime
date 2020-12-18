import 'package:drive_time/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_support_pack/flutter_support_pack.dart';

import 'main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Currency.init(decimalDigits: 0);
  setupLocator();
  runApp(MyApp());
}
