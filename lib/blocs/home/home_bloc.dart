import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:personal_portfolio/config/constants/colors.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HoverEvent>((event, emit) {
      emit(HoverState(color: neonColor));
    });

    on<HoverOutEvent>((event, emit) {
      emit(HoverOutState());
    });

    on<AboutEvent>((event, emit) => {emit(AboutState(color: neonColor))});
  }
}
