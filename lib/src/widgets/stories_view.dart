import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../blocs/top_stories/top_stories_cubit.dart';
import 'item_tile.dart';

class StoriesView extends HookWidget {
  const StoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: TopStoriesCubit()..fetch(),
      child: BlocBuilder<TopStoriesCubit, TopStoriesState>(
        builder: (context, state) {
          return HookBuilder(
            builder: (context) {
              final pageController = usePageController();

              if (state is LoadingTopStoriesState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state is ErrorTopStoriesState) {
                return Center(
                  child: Text(state.message),
                );
              }

              if (state is SuccessTopStoriesState) {
                const pageLength = 8;
                final pageCount = (state.data.length / pageLength).ceil();

                return PageView.builder(
                  controller: pageController,
                  itemCount: pageCount,
                  itemBuilder: (context, index) {
                    final currentPage = index + 1;
                    final startIndex = (currentPage * pageLength) - pageLength;
                    final endIndex = (startIndex + pageLength).clamp(
                      0,
                      state.data.length,
                    );

                    final ids = state.data.sublist(startIndex, endIndex);

                    return Column(
                      children: [
                        ListTile(
                          leading: IconButton(
                            onPressed: currentPage == 1
                                ? null
                                : () {
                                    pageController.previousPage(
                                      duration: const Duration(
                                        milliseconds: 700,
                                      ),
                                      curve: Curves.easeOutQuint,
                                    );
                                  },
                            icon: const Icon(Icons.arrow_back_outlined),
                          ),
                          trailing: IconButton(
                            onPressed: currentPage == pageCount
                                ? null
                                : () {
                                    pageController.nextPage(
                                      duration: const Duration(
                                        milliseconds: 700,
                                      ),
                                      curve: Curves.easeOutQuint,
                                    );
                                  },
                            icon: const Icon(Icons.arrow_forward_outlined),
                          ),
                          title: Center(
                            child: Text('$currentPage / $pageCount'),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: ids.length,
                            itemBuilder: (context, index) {
                              return ItemTile(ids.elementAt(index));
                            },
                          ),
                        ),
                      ],
                    );
                  },
                );
              }

              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}
