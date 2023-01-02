import 'api.dart';

class JobStoriesApi extends Api {
  JobStoriesApi({
    super.scheme,
    super.host,
    super.dio,
  }) : super('v0/jobstories.json');

  @override
  Future<List<int>> fetch([Map<String, dynamic>? request]) async {
    return await super.fetch(request).then((data) {
      return List.of(data).cast<int>();
    });
  }
}
