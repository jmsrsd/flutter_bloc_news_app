import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/item/entity/item_entity.dart';
import '../blocs/item/item_cubit.dart';

class ItemTile extends StatelessWidget {
  final int id;

  const ItemTile(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: ItemCubit(id)..fetch(),
      builder: (context, state) {
        final isLoading = state is LoadingItemState;
        final errorMessage = state is ErrorItemState ? state.message : null;
        final data = state is SuccessItemState
            ? state.data
            : ItemEntity(title: isLoading ? 'Loading...' : errorMessage);

        return ListTile(
          onTap: () {},
          title: Text(data.title ?? ''),
          subtitle: Text(Uri.parse(data.url ?? '').host),
          trailing: isLoading == false
              ? null
              : const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: CircularProgressIndicator(),
                ),
        );
      },
    );
  }
}
