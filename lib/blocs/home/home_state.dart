part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class HoverState extends HomeState {
  Color color;
  HoverState({
    required this.color,
  });

  @override
  List<Object?> get props => [color];
}
