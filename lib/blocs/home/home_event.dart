// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

// ignore: must_be_immutable
class HoverEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class AboutEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class HoverOutEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}
