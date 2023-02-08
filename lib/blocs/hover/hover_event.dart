// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'hover_bloc.dart';

abstract class HoverEvent extends Equatable {
  const HoverEvent();
}

class HomeButtonEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class AboutButtonEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class ServiceButtonEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class ProjectButtonEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class ContactButtonEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class GithubHoverEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class InstaHoverEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class LinkedInHoverEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class TwitterHoverEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class StackHoverEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class EmailHoverEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class ProfileImageEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class ProfileImageBlendEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class HoverOutEvent extends HoverEvent {
  @override
  List<Object?> get props => [];
}

class DataLoadEvent extends HoverEvent {
  final ExperienceModel experienceData;
  final int selectedIndex;
  const DataLoadEvent({
    required this.experienceData,
    required this.selectedIndex,
  });
  @override
  List<Object?> get props => [experienceData];
}

class WorkImageEvent extends HoverEvent {
  final int selectedIndex;
  const WorkImageEvent({
    required this.selectedIndex,
  });
  @override
  List<Object?> get props => [selectedIndex];
}

class WorkContainerEvent extends HoverEvent {
  final int selectedIndex;
  const WorkContainerEvent({
    required this.selectedIndex,
  });
  @override
  List<Object?> get props => [selectedIndex];
}

// ignore: must_be_immutable
class GridViewEvent extends HoverEvent {
  Color color;
  EdgeInsetsGeometry padding;
  final int selectedIndex;
  GridViewEvent({
    required this.color,
    required this.padding,
    required this.selectedIndex,
  });
  @override
  List<Object?> get props => [color, padding];
}

class LoadMoreEvent extends HoverEvent {
  final int length;
  const LoadMoreEvent({
    required this.length,
  });
  @override
  List<Object?> get props => [length];
}
