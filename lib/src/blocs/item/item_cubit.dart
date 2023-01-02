import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_news_app/src/models/item/entity/item_entity.dart';

import '../../apis/item_api.dart';

part 'item_state.dart';

class ItemCubit extends Cubit<ItemState> {
  late final ItemApi api;
  final int id;

  ItemCubit(
    this.id, [
    ItemApi? api,
  ]) : super(LoadingItemState()) {
    this.api = api ?? ItemApi(id);
  }

  void fetch() async {
    emit(
      LoadingItemState(),
    );

    try {
      emit(
        SuccessItemState(
          data: await api.fetch(),
        ),
      );
    } catch (e) {
      emit(
        ErrorItemState(
          message: e.toString(),
        ),
      );
    }
  }
}
