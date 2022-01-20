import 'package:flutter/services.dart';

class SiiPrinterCore {
  static const MethodChannel _channel =
      MethodChannel('sii_printer_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> getAddress() async {
    final String? address = await _channel.invokeMethod('getAddress');
    return address;
  }

  static Future<List<dynamic>?> getPrinters() async {
    final List<dynamic>? printers = await _channel.invokeMethod('getPrinters');
    return printers;
  }

  static Future<bool> connect() async {
    final bool isConnected = await _channel.invokeMethod('connect');
    return isConnected;
  }
}