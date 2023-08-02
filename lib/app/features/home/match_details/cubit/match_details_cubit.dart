import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/models/statistics_model/statistics_model.dart';
import 'package:score_live/repositories/match_details_repository.dart';

part 'match_details_state.dart';
part 'match_details_cubit.freezed.dart';

class MatchDetailsCubit extends Cubit<MatchDetailsState> {
  MatchDetailsCubit(this.matchDetailsRepository) : super(MatchDetailsState());

  final MatchDetailsRepository matchDetailsRepository;

  Future<void> fetchMatchInfo(String teamsIdNumbers, String matchID) async {
    emit(state.copyWith(isLoading: true));
    try {
      final matchEvents = await matchDetailsRepository.fetchMatchEvents(matchID);
      final matchLineUps = await matchDetailsRepository.fetchMatchLineUps(matchID);
      final matchStats = await matchDetailsRepository.fetchMatchStats(matchID);
      final teamsH2h = await matchDetailsRepository.fetchTeamsH2h(teamsIdNumbers, matchID);
      if (teamsH2h != null && teamsH2h.isNotEmpty) {
        emit(state.copyWith(
          matchEvents: matchEvents,
          matchLineUps: matchLineUps,
          matchStats: matchStats,
          teamsH2h: teamsH2h,
          isLoading: false,
        ));
      }
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  void switchDetailsOptions(DetailsOptions chosenOption) {
    emit(state.copyWith(detailsOptions: chosenOption));
  }
}
