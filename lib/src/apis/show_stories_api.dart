import 'api.dart';

class ShowStoriesApi extends Api {
  ShowStoriesApi({
    super.scheme,
    super.host,
    super.dio,
  }) : super('v0/showstories.json');

  @override
  Future<List<int>> fetch([Map<String, dynamic>? request]) async {
    return await super.fetch(request).then((data) {
      return List.of(data).cast<int>();
    });
  }
}
