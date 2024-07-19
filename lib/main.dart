import 'package:flutter/material.dart';
import 'package:tms_driver/driver_app.dart';
import 'package:tms_driver/injection.dart';

void main() {
  initApp().then(
    (_) => runApp(
      const DriverApp(),
    ),
  );
}
