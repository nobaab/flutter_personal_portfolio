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

class GithubHoverState extends AppbarState {
  Color color;
  double size;
  GithubHoverState({
    required this.color,
    required this.size,
  });
  @override
  List<Object?> get props => [];
}

class InstaHoverState extends AppbarState {
  Color color;
  double size;
  InstaHoverState({
    required this.color,
    required this.size,
  });
  @override
  List<Object?> get props => [];
}

class LinkedInHoverState extends AppbarState {
  Color color;
  double size;
  LinkedInHoverState({
    required this.color,
    required this.size,
  });

  @override
  List<Object?> get props => [];
}

class TwitterHoverState extends AppbarState {
  Color color;
  double size;
  TwitterHoverState({
    required this.color,
    required this.size,
  });
  @override
  List<Object?> get props => [];
}

class StackHoverState extends AppbarState {
  Color color;
  double size;
  StackHoverState({
    required this.color,
    required this.size,
  });
  @override
  List<Object?> get props => [];
}

class EmailHoverState extends AppbarState {
  Color color;
  double size;
  EmailHoverState({
    required this.color,
    required this.size,
  });
  @override
  List<Object?> get props => [];
}

class ProfileImageState extends AppbarState {
  double height;
  double width;
  BlendMode blendMode;
  ProfileImageState({
    required this.height,
    required this.width,
    required this.blendMode,
  });

  @override
  List<Object?> get props => [];
}

class ProfileImageBlendState extends AppbarState {
  BlendMode blendMode;
  ProfileImageBlendState({
    required this.blendMode,
  });

  @override
  List<Object?> get props => [];
}

class HoverOutState extends AppbarState {
  @override
  List<Object?> get props => [];
}
