import 'api.dart';

class TopStoriesApi extends Api {
  TopStoriesApi({
    super.scheme,
    super.host,
    super.dio,
  }) : super('v0/topstories.json');

  @override
  Future<List<int>> fetch([Map<String, dynamic>? request]) async {
    return await super.fetch(request).then((data) {
      return List.of(data).cast<int>();
    });
  }
}
