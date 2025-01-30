
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:simple_bid/src/data/core/db_client.dart';
import 'package:simple_bid/src/data/core/exceptions.dart';

class ThemeService {
  static const String _themeKey = 'theme_key';
  final DBClient _dbClient;

  ThemeService(this._dbClient);

  Future<ThemeMode> getThemeMode() async {
    bool result;
    try {
      result = _dbClient.read(_themeKey);
    } on DataBaseException {
      var brightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;
      // return brightness == Brightness.light ? ThemeMode.light : ThemeMode.dark;
      return ThemeMode.dark;
    }
    return result ? ThemeMode.light : ThemeMode.dark;
  }

  void setThemeMode(ThemeMode mode) {
    _dbClient.write(_themeKey, mode == ThemeMode.light);
  }
}
