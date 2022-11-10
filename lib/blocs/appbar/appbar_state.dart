// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'appbar_bloc.dart';

abstract class AppbarState extends Equatable {
  const AppbarState();
}

class AppbarInitial extends AppbarState {
  @override
  List<Object> get props => [];
}

class HomeButtonState extends AppbarState {
  Color color;
  HomeButtonState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class AboutButtonState extends AppbarState {
  Color color;
  AboutButtonState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class ServiceButtonState extends AppbarState {
  Color color;
  ServiceButtonState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class ProjectButtonState extends AppbarState {
  Color color;
  ProjectButtonState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class ContactButtonState extends AppbarState {
  Color color;
  ContactButtonState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class HoverOutState extends AppbarState {
  @override
  List<Object?> get props => [];
}
