import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class ConfigStorage {
  Future<String> get _tempPath async {
    final directory = await getTemporaryDirectory();

    return directory.path;
  }

  Future<File> get _configFile async {
    final path = await _tempPath;
    return File('$path/dero_control_interface_config.json').create();
  }

  Future<String> readData() async {
    try {
      final file = await _configFile;

      final contents = await file.readAsString();

      return contents;
    } catch (e) {
      debugPrint(e.toString());
      return '';
    }
  }

  Future<File> writeData(String data) async {
    final file = await _configFile;

    return file.writeAsString(data);
  }
}