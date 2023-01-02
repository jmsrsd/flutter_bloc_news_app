import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_entity.freezed.dart';
part 'item_entity.g.dart';

@freezed
class ItemEntity with _$ItemEntity {
  factory ItemEntity({
    List<int>? parts,
    List<int>? kids,
    String? by,
    int? descendants,
    int? id,
    int? parent,
    int? poll,
    int? score,
    String? text,
    int? time,
    String? title,
    String? type,
    String? url,
  }) = _ItemEntity;

  factory ItemEntity.fromJson(Map<String, dynamic> json) =>
      _$ItemEntityFromJson(json);
}
