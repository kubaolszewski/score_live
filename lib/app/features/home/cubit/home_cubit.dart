import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/core/enums.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void switchHomeOptions(HomeOptions chosenOption) {
    emit(
      HomeState(homeOptions: chosenOption),
    );
  }

  void switchDetailsOptions(DetailsOptions chosenOption) {
    emit(
      HomeState(detailsOptions: chosenOption),
    );
  }
}
