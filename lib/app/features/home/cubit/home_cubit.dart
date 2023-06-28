import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/live_match_tile_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  Future<void> fetchLiveMatches () async {
    // try {final liveMatches = await 
      
    // } catch (error) {
      
    // }
  }

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
