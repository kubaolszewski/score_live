import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/repositories/match_details_repository.dart';

part 'match_details_state.dart';
part 'match_details_cubit.freezed.dart';

class MatchDetailsCubit extends Cubit<MatchDetailsState> {
  MatchDetailsCubit(this.matchDetailsRepository) : super(MatchDetailsState());

  final MatchDetailsRepository matchDetailsRepository;

  Future<void> fetchMatchEvents(String teamsIdNumbers, String matchID) async {
    emit(state.copyWith(isLoading: true));
    try {
      final matchEvents = await matchDetailsRepository.fetchMatchEvents(matchID);
      final lineUps = await matchDetailsRepository.fetchMatchLineUps(matchID);
      final teamsH2h = await matchDetailsRepository.fetchTeamsH2h(teamsIdNumbers, matchID);
      if (teamsH2h!.isNotEmpty) {
        emit(state.copyWith(lineUps: lineUps, matchEvents: matchEvents, teamsH2h: teamsH2h, isLoading: false));
      }
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  int homeWinsCounter() {
    return state.teamsH2h
        .where((element) => element.teams?.home?.winner == true && element.teams?.home?.winner != null)
        .length;
  }

  int awayWinsCounter() {
    return state.teamsH2h
        .where((element) => element.teams?.away?.winner == true && element.teams?.away?.winner != null)
        .length;
  }

  int drawsCounter() {
    return state.teamsH2h
        .where((element) => element.teams?.home?.winner == null || element.teams?.away?.winner == null)
        .length;
  }

  void switchDetailsOptions(DetailsOptions chosenOption) {
    emit(state.copyWith(detailsOptions: chosenOption));
  }
}
