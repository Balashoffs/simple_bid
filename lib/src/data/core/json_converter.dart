import 'dart:convert';

mixin JsonConverter {
  String encodeToJsonString(Object? value) {
    if (value == null) return '';
    if (value is String) return value;

    try {
      return json.encode(value);
    } catch (_) {
      return value.toString();
    }
  }

  dynamic decodeFromJsonString(String jsonString) {
    try {
      return json.decode(jsonString);
    } catch (_) {
      return jsonString;
    }
  }

  String decodeUTF8(List<int> data) => utf8.decode(data, allowMalformed: true);
}
