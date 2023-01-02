import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../apis/top_stories_api.dart';

part 'top_stories_state.dart';

class TopStoriesCubit extends Cubit<TopStoriesState> {
  TopStoriesCubit([
    TopStoriesApi? api,
  ]) : super(LoadingTopStoriesState()) {
    this.api = api ?? TopStoriesApi();
  }

  late final TopStoriesApi api;

  void fetch() async {
    emit(
      LoadingTopStoriesState(),
    );

    try {
      emit(
        SuccessTopStoriesState(
          data: await api.fetch(),
        ),
      );
    } catch (e) {
      emit(
        ErrorTopStoriesState(
          message: e.toString(),
        ),
      );
    }
  }
}
