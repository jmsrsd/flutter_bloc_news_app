import 'api.dart';

class BestStoriesApi extends Api {
  BestStoriesApi({
    super.scheme,
    super.host,
    super.dio,
  }) : super('v0/beststories.json');

  @override
  Future<List<int>> fetch([Map<String, dynamic>? request]) async {
    return await super.fetch(request).then((data) {
      return List.of(data).cast<int>();
    });
  }
}
