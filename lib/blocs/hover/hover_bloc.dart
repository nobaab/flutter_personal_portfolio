import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/config/constants/colors.dart';
import 'package:personal_portfolio/screens/experience/data/model/exp_model.dart';

import '../../screens/work/data/model/work_model.dart';

part 'hover_event.dart';
part 'hover_state.dart';

class HoverBloc extends Bloc<HoverEvent, HoverState> {
  HoverBloc() : super(AppbarInitial()) {
    on<HomeButtonEvent>((event, emit) => emit(HomeButtonState(color: neonColor)));
    on<AboutButtonEvent>((event, emit) => emit(AboutButtonState(color: neonColor)));
    on<ContactButtonEvent>((event, emit) => emit(ContactButtonState(color: neonColor)));
    on<ServiceButtonEvent>((event, emit) => emit(ServiceButtonState(color: neonColor)));
    on<ProjectButtonEvent>((event, emit) => emit(ProjectButtonState(color: neonColor)));

    on<GithubHoverEvent>((event, emit) => emit(GithubHoverState(color: neonColor, size: 5.0)));
    on<InstaHoverEvent>((event, emit) => emit(InstaHoverState(color: neonColor, size: 5.0)));
    on<LinkedInHoverEvent>((event, emit) => emit(LinkedInHoverState(color: neonColor, size: 5.0)));
    on<TwitterHoverEvent>((event, emit) => emit(TwitterHoverState(color: neonColor, size: 5.0)));
    on<StackHoverEvent>((event, emit) => emit(StackHoverState(color: neonColor, size: 5.0)));
    on<EmailHoverEvent>((event, emit) => emit(EmailHoverState(color: neonColor, size: 5.0)));

    on<ProfileImageEvent>((event, emit) => emit(ProfileImageState(height: 0.22, width: 0.22, blendMode: BlendMode.lighten)));

    on<WorkImageEvent>((event, emit) {
      emit(WorkImageState(selectedIndex: event.selectedIndex));
    });

    on<WorkContainerEvent>((event, emit) {
      emit(WorkContainerState(selectedIndex: event.selectedIndex));
    });

    on<ProfileImageBlendEvent>((event, emit) => emit(ProfileImageBlendState(blendMode: BlendMode.lighten)));

    on<HoverOutEvent>((event, emit) {
      emit(HoverOutState());
    });

    on<DataLoadEvent>((event, emit) {
      emit(DataLoadedState(experienceData: event.experienceData, selectedIndex: event.selectedIndex, color: tabColor));
    });

    on<GridViewEvent>((event, emit) {
      emit(GridViewState(
        color: event.color,
        padding: event.padding,
        selectedIndex: event.selectedIndex,
      ));
    });

    on<LoadMoreEvent>((event, emit) {
      emit(LoadMoreState(length: event.length));
    });

    on<WorkDataLoadEvent>((event, emit) {
      emit(WorkDataLoadedState(works: event.workData));
    });
  }
}
