// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

// ignore: must_be_immutable
class HoverEvent extends HomeEvent {
  Color color;
  HoverEvent({
    required this.color,
  });

  @override
  List<Object?> get props => [color];
}
