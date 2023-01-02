import 'package:dio/dio.dart';
import '../utils/serialize_json.dart';

class Api {
  final String scheme;
  final String host;

  late final Dio dio;
  final String path;

  Api(
    this.path, {
    this.scheme = 'https',
    this.host = 'hacker-news.firebaseio.com',
    Dio? dio,
  }) {
    this.dio = dio ?? Dio();
  }

  Uri uri([Map<String, dynamic>? queryParameters]) {
    return Uri(
      scheme: scheme,
      host: host,
      path: path,
      queryParameters: queryParameters,
    );
  }

  Future fetch([Map<String, dynamic>? request]) async {
    return await dio.getUri(uri(request)).then((response) {
      return response.data;
    }).then(serializeJson);
  }

  Future send([Map<String, dynamic>? request]) async {
    return await dio.postUri(uri(), data: request).then((response) {
      return response.data;
    }).then(serializeJson);
  }
}
