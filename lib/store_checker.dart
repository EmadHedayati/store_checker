import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

/* Store Checker is useful to find the origin of installed apk/ipa */
class StoreChecker {
  static const MethodChannel _channel = const MethodChannel('store_checker');

  /* Get origin of installed apk/ipa */
  static Future<String?> getSource() async {
    final String? sourceName = await _channel.invokeMethod('getSource');
    return sourceName;
  }
}
