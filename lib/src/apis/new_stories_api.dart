import 'api.dart';

class NewStoriesApi extends Api {
  NewStoriesApi({
    super.scheme,
    super.host,
    super.dio,
  }) : super('v0/newstories.json');

  @override
  Future<List<int>> fetch([Map<String, dynamic>? request]) async {
    return await super.fetch(request).then((data) {
      return List.of(data).cast<int>();
    });
  }
}
