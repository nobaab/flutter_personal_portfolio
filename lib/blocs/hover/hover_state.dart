// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'hover_bloc.dart';

abstract class HoverState extends Equatable {
  const HoverState();
}

class AppbarInitial extends HoverState {
  @override
  List<Object> get props => [];
}

class HomeButtonState extends HoverState {
  Color color;
  HomeButtonState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class AboutButtonState extends HoverState {
  Color color;
  AboutButtonState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class ServiceButtonState extends HoverState {
  Color color;
  ServiceButtonState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class ProjectButtonState extends HoverState {
  Color color;
  ProjectButtonState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class ContactButtonState extends HoverState {
  Color color;
  ContactButtonState({
    required this.color,
  });

  @override
  List<Object?> get props => [];
}

class GithubHoverState extends HoverState {
  Color color;
  double size;
  GithubHoverState({
    required this.color,
    required this.size,
  });
  @override
  List<Object?> get props => [];
}

class InstaHoverState extends HoverState {
  Color color;
  double size;
  InstaHoverState({
    required this.color,
    required this.size,
  });
  @override
  List<Object?> get props => [];
}

class LinkedInHoverState extends HoverState {
  Color color;
  double size;
  LinkedInHoverState({
    required this.color,
    required this.size,
  });

  @override
  List<Object?> get props => [];
}

class TwitterHoverState extends HoverState {
  Color color;
  double size;
  TwitterHoverState({
    required this.color,
    required this.size,
  });
  @override
  List<Object?> get props => [];
}

class StackHoverState extends HoverState {
  Color color;
  double size;
  StackHoverState({
    required this.color,
    required this.size,
  });
  @override
  List<Object?> get props => [];
}

class EmailHoverState extends HoverState {
  Color color;
  double size;
  EmailHoverState({
    required this.color,
    required this.size,
  });
  @override
  List<Object?> get props => [];
}

class ProfileImageState extends HoverState {
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

class ProfileImageBlendState extends HoverState {
  BlendMode blendMode;
  ProfileImageBlendState({
    required this.blendMode,
  });

  @override
  List<Object?> get props => [];
}

class HoverOutState extends HoverState {
  @override
  List<Object?> get props => [];
}

class DataLoadedState extends HoverState {
  final ExperienceModel experienceData;
  final int selectedIndex;
  Color color;
  DataLoadedState({
    required this.experienceData,
    required this.selectedIndex,
    required this.color,
  });
  @override
  List<Object?> get props => [experienceData, selectedIndex, color];
}
