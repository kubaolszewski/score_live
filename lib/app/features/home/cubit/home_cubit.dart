import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/models/match_events_model.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void switchDate(DateTime newDate) {
    emit(state.copyWith(date: newDate));
  }

  void switchHomeOptions(HomeOptions chosenOption) async {
    emit(state.copyWith(homeOptions: chosenOption));
  }
}
