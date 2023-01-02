import 'api.dart';

class AskStoriesApi extends Api {
  AskStoriesApi({
    super.scheme,
    super.host,
    super.dio,
  }) : super('v0/askstories.json');

  @override
  Future<List<int>> fetch([Map<String, dynamic>? request]) async {
    return await super.fetch(request).then((data) {
      return List.of(data).cast<int>();
    });
  }
}
