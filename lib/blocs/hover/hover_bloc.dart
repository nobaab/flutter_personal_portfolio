import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:personal_portfolio/config/constants/colors.dart';
import 'package:personal_portfolio/models/exp_model.dart';

part 'hover_event.dart';
part 'hover_state.dart';

class HoverBloc extends Bloc<HoverEvent, HoverState> {
  HoverBloc() : super(AppbarInitial()) {
    on<HomeButtonEvent>(
        (event, emit) => {emit(HomeButtonState(color: neonColor))});
    on<AboutButtonEvent>(
        (event, emit) => {emit(AboutButtonState(color: neonColor))});
    on<ContactButtonEvent>(
        (event, emit) => {emit(ContactButtonState(color: neonColor))});
    on<ServiceButtonEvent>(
        (event, emit) => {emit(ServiceButtonState(color: neonColor))});
    on<ProjectButtonEvent>(
        (event, emit) => {emit(ProjectButtonState(color: neonColor))});

    on<GithubHoverEvent>(
        (event, emit) => {emit(GithubHoverState(color: neonColor, size: 5.0))});
    on<InstaHoverEvent>(
        (event, emit) => {emit(InstaHoverState(color: neonColor, size: 5.0))});
    on<LinkedInHoverEvent>((event, emit) =>
        {emit(LinkedInHoverState(color: neonColor, size: 5.0))});
    on<TwitterHoverEvent>((event, emit) =>
        {emit(TwitterHoverState(color: neonColor, size: 5.0))});
    on<StackHoverEvent>(
        (event, emit) => {emit(StackHoverState(color: neonColor, size: 5.0))});
    on<EmailHoverEvent>(
        (event, emit) => {emit(EmailHoverState(color: neonColor, size: 5.0))});

    on<ProfileImageEvent>((event, emit) => {
          emit(ProfileImageState(
              height: 0.22, width: 0.22, blendMode: BlendMode.lighten))
        });

    on<ProfileImageBlendEvent>((event, emit) =>
        {emit(ProfileImageBlendState(blendMode: BlendMode.lighten))});

    on<HoverOutEvent>((event, emit) => {emit(HoverOutState())});

    on<DataLoadEvent>((event, emit) {
      emit(DataLoadedState(
          experienceData: event.experienceData,
          selectedIndex: event.selectedIndex));
    });
  }
}
