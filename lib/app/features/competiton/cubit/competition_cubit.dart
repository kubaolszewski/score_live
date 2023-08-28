import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/core/date_formatter_ext.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/models/team_model/team_model.dart';
import 'package:score_live/repositories/competition/competition_screen_repository.dart';

import '../../../../models/match_model/match_model.dart';

part 'competition_state.dart';
part 'competition_cubit.freezed.dart';

class CompetitionCubit extends Cubit<CompetitionState> {
  CompetitionCubit(this.competitionScreenRepository) : super(CompetitionState());

  final CompetitionScreenRepository competitionScreenRepository;

  void switchBrowsingOptions(BrowsingOptions chosenOption) {
    emit(state.copyWith(browsingOptions: chosenOption));
  }

  void switchSearching(SearchTypes dropdownValue) {
    switch (dropdownValue) {
      case SearchTypes.team:
        emit(state.copyWith(searchTypes: SearchTypes.team));
      case SearchTypes.league:
        emit(state.copyWith(searchTypes: SearchTypes.league));
    }
  }

  Future<void> searchingTeams(String nameQuery) async {
    emit(state.copyWith(isLoading: true));
    try {
      final searchedResults = await competitionScreenRepository.fetchTeams(nameQuery);
      emit(state.copyWith(teamResults: searchedResults, isLoading: false, searchTypes: SearchTypes.team));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  Future<void> searchingLeagues(String nameQuery) async {
    String yearFromActualDate = DateFormat('yyyy').format(DateTime.now());
    emit(state.copyWith(isLoading: true));

    try {
      final searchedLeaguesByName = await competitionScreenRepository.fetchLeaguesByName(nameQuery, yearFromActualDate);
      final searchedLeaguesByCountry =
          await competitionScreenRepository.fetchLeaguesByCountry(nameQuery, yearFromActualDate);

      final combinedResults = [...searchedLeaguesByName, ...searchedLeaguesByCountry];
      emit(state.copyWith(leagueResults: combinedResults, isLoading: false, searchTypes: SearchTypes.league));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  Future<void> fetchDetails(String resultId) async {
    String yearFromActualDate = DateFormat('yyyy').format(DateTime.now().formatDateToDateTime());
    try {
      switch (state.searchTypes) {
        case SearchTypes.team:
          final teamDetails =
              await competitionScreenRepository.fetchResultsDetailsByTeamId(resultId, yearFromActualDate);
          emit(state.copyWith(teamDetails: teamDetails));
        case SearchTypes.league:
          final leagueDetails =
              await competitionScreenRepository.fetchResultsDetailsByLeagueId(resultId, yearFromActualDate);
          emit(state.copyWith(leagueDetails: leagueDetails));
      }
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }
}
