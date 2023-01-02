import '../models/user/entity/user_entity.dart';
import 'api.dart';

class UserApi extends Api {
  UserApi(
    String id, {
    super.scheme,
    super.host,
    super.dio,
  }) : super('v0/user/$id.json');

  @override
  Future<UserEntity> fetch([Map<String, dynamic>? request]) async {
    return await super.fetch(request).then((data) {
      return UserEntity.fromJson(data);
    });
  }
}
