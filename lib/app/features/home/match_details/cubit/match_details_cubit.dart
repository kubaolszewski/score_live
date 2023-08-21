import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/models/standings_model/standings_model.dart';
import 'package:score_live/models/statistics_model/statistics_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/repositories/home/match_details_repository.dart';

part 'match_details_state.dart';
part 'match_details_cubit.freezed.dart';

class MatchDetailsCubit extends Cubit<MatchDetailsState> {
  MatchDetailsCubit(this.matchDetailsRepository) : super(MatchDetailsState());

  final MatchDetailsRepository matchDetailsRepository;

  Future<void> fetchMatchInfo(String teamsIdNumbers, String matchID, String leagueId, String yearFromSeason) async {
    emit(state.copyWith(isLoading: true));
    try {
      final matchEvents = await matchDetailsRepository.fetchMatchEvents(matchID);
      final matchLineUps = await matchDetailsRepository.fetchMatchLineUps(matchID);
      final matchStats = await matchDetailsRepository.fetchMatchStats(matchID);
      final teamsH2h = await matchDetailsRepository.fetchTeamsH2h(teamsIdNumbers, matchID);
      final teamStandings = await matchDetailsRepository.fetchTeamStandings(leagueId, yearFromSeason);
      final detailsIsEmptyCheck = matchEvents.isNotEmpty &&
          matchLineUps.isNotEmpty &&
          matchStats.isNotEmpty &&
          teamsH2h.isNotEmpty &&
          teamStandings.isNotEmpty;
      if (detailsIsEmptyCheck) {
        emit(state.copyWith(
          matchEvents: matchEvents,
          matchLineUps: matchLineUps,
          matchStats: matchStats,
          teamsH2h: teamsH2h,
          teamStandings: teamStandings,
          isLoading: false,
        ));
      }
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  (int, int, int) winsCounter(int teamId, int amountOfFixtures) {
    int team1Wins = 0;
    int draws = 0;

    for (final fixture in state.teamsH2h) {
      final didHomeTeamWon = fixture.teams?.home?.winner;
      final didAwayTeamWon = fixture.teams?.away?.winner;
      final homeTeamId = fixture.teams?.home?.id ?? AppConstVariables.intPlaceholder;
      final awayTeamId = fixture.teams?.away?.id ?? AppConstVariables.intPlaceholder;

      if (homeTeamId == teamId) {
        if (didHomeTeamWon != null && didHomeTeamWon) team1Wins++;
      } else if (awayTeamId == teamId) {
        if (didAwayTeamWon != null && didAwayTeamWon) team1Wins++;
      }
      if (didHomeTeamWon == null && didAwayTeamWon == null) draws++;
    }

    int team2Wins = amountOfFixtures - team1Wins - draws;

    return (team1Wins, team2Wins, draws);
  }

  void switchDetailsOptions(DetailsOptions chosenOption) {
    emit(state.copyWith(detailsOptions: chosenOption));
  }
}
