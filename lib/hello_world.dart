
import 'dart:async';

import 'package:flutter/services.dart';

class HelloWorld {
  static const MethodChannel _channel = MethodChannel('hello_world');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
