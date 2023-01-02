part of 'top_stories_cubit.dart';

abstract class TopStoriesState extends Equatable {}

class LoadingTopStoriesState extends TopStoriesState {
  @override
  List<Object?> get props => const [];
}

class ErrorTopStoriesState extends TopStoriesState {
  final String message;

  ErrorTopStoriesState({
    required this.message,
  });

  @override
  List<Object?> get props => [message];
}

class SuccessTopStoriesState extends TopStoriesState {
  final List<int> data;

  SuccessTopStoriesState({
    required this.data,
  });

  @override
  List<Object?> get props => [...data];
}
