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

class WorkImageState extends HoverState {
  final int selectedIndex;
  const WorkImageState({
    required this.selectedIndex,
  });

  @override
  List<Object?> get props => [selectedIndex];
}

class WorkContainerState extends HoverState {
  final int selectedIndex;
  const WorkContainerState({
    required this.selectedIndex,
  });

  @override
  List<Object?> get props => [selectedIndex];
}

class GridViewState extends HoverState {
  Color color;
  EdgeInsetsGeometry padding;
  final int selectedIndex;
  GridViewState({
    required this.color,
    required this.padding,
    required this.selectedIndex,
  });

  @override
  List<Object?> get props => [color, padding, selectedIndex];
}

class LoadMoreState extends HoverState {
  final int length;
  const LoadMoreState({
    required this.length,
  });
  @override
  List<Object?> get props => [length];
}

class WorkDataLoadedState extends HoverState {
  final WorkResponseModel works;

  const WorkDataLoadedState({
    required this.works,
  });
  @override
  List<Object?> get props => [
        works,
      ];
}
