import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:personal_portfolio/config/constants/colors.dart';

part 'appbar_event.dart';
part 'appbar_state.dart';

class AppbarBloc extends Bloc<AppbarEvent, AppbarState> {
  AppbarBloc() : super(AppbarInitial()) {
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
    on<HoverOutEvent>((event, emit) => {emit(HoverOutState())});
  }
}
