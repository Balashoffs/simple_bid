import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

import 'exceptions.dart';
import 'json_converter.dart';

class DBConstants {
  const DBConstants._();

  static const token = 'auth_token';
}

abstract class DBClient {
  const DBClient();

  T read<T>(String key);

  Future<void> write(String key, Object value);

  Future<bool> isPresent(String key);
}

class DBClientImpl with JsonConverter implements DBClient {
  final SharedPreferences _preferences;

  const DBClientImpl(this._preferences);

  @override
  T read<T>(String key) {
    try {
      final response = _preferences.getString(key);

      if (response == null) {
        throw DataBaseException(
          'Persistent storage doesn\'t contain '
          'a value for a given key: $key',
        );
      }

      return decodeFromJsonString(response) as T;
    } catch (e) {
      throw DataBaseException(e.toString());
    }
  }

  @override
  Future<void> write(String key, Object value) async {
    try {
      if (!(await _preferences.setString(key, encodeToJsonString(value)))) {
        throw DataBaseException(
          'Unexpected error while writing'
          ' a value: $value for a given key: $key',
        );
      }
    } catch (e) {
      throw DataBaseException(e.toString());
    }
  }

  @override
  Future<bool> isPresent(String key) async {
    return _preferences.containsKey(key);
  }
}
