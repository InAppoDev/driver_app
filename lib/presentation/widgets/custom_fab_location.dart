import 'package:flutter/material.dart';

class CustomFabLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    debugPrint('CustomFabLocation.getOffset called');
    final double fabY = scaffoldGeometry.scaffoldSize.height - 90.0;

    final double fabX = scaffoldGeometry.scaffoldSize.width / 2 -
        scaffoldGeometry.floatingActionButtonSize.width / 2;

    return Offset(fabX, fabY);
  }
}
