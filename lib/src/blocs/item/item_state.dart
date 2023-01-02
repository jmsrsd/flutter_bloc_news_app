part of 'item_cubit.dart';

abstract class ItemState extends Equatable {}

class LoadingItemState extends ItemState {
  @override
  List<Object?> get props => const [];
}

class ErrorItemState extends ItemState {
  final String message;

  ErrorItemState({
    required this.message,
  });

  @override
  List<Object?> get props => [message];
}

class SuccessItemState extends ItemState {
  final ItemEntity data;

  SuccessItemState({
    required this.data,
  });

  @override
  List<Object?> get props => [data];
}
