// ignore_for_file: public_member_api_docs, sort_constructors_first
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

// ignore: must_be_immutable
class AboutState extends HomeState {
  Color color;
  AboutState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class HoverOutState extends HomeState {
  @override
  List<Object?> get props => [];
}
