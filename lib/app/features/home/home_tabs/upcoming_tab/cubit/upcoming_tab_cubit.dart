import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

part 'upcoming_tab_state.dart';
part 'upcoming_tab_cubit.freezed.dart';

class UpcomingTabCubit extends Cubit<UpcomingTabState> {
  UpcomingTabCubit(this.homeScreenRepository) : super(const LoadingMatchesState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchUpcomingMatches() async {
    emit(const LoadingMatchesState());
    try {
      final upcomingMatches = await homeScreenRepository.fetchUpcomingMatches();
      if (upcomingMatches!.isNotEmpty) {
        emit(MatchesLoadedState(upcomingMatches));
      }
    } catch (error) {
      emit(ErrorMatchesState(error.toString()));
    }
  }
}
