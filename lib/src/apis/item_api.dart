import '../models/item/entity/item_entity.dart';
import 'api.dart';

class ItemApi extends Api {
  ItemApi(
    int id, {
    super.scheme,
    super.host,
    super.dio,
  }) : super('v0/item/$id.json');

  @override
  Future<ItemEntity> fetch([Map<String, dynamic>? request]) async {
    return await super.fetch(request).then((data) {
      return ItemEntity.fromJson(data);
    });
  }
}
