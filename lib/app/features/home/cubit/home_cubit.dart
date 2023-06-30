import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/repositories/home_screen_repository.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/live_match_response.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeScreenRepository) : super(const HomeState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchLiveMatches() async {
    emit(state.copyWith(isLoading: true));
    try {
      final liveMatches = await homeScreenRepository.fetchLiveMatches();
      emit(state.copyWith(liveMatchResponse: liveMatches, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  void switchHomeOptions(HomeOptions chosenOption) async {
    final liveMatches = await homeScreenRepository.fetchLiveMatches();
    emit(state.copyWith(liveMatchResponse: liveMatches, homeOptions: chosenOption));
  }

  void switchDetailsOptions(DetailsOptions chosenOption) async {
    final liveMatches = await homeScreenRepository.fetchLiveMatches();

    emit(state.copyWith(liveMatchResponse: liveMatches, detailsOptions: chosenOption));
  }
}
