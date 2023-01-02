import 'dart:convert';

T serializeJson<T>(T json) {
  return jsonDecode(jsonEncode(json));
}
