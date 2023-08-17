import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/models/team_model/team_model.dart';
import 'package:score_live/repositories/competition_screen_repository.dart';

part 'competition_state.dart';
part 'competition_cubit.freezed.dart';

class CompetitionCubit extends Cubit<CompetitionState> {
  CompetitionCubit(this.competitionScreenRepository) : super(CompetitionState());

  final CompetitionScreenRepository competitionScreenRepository;

  void switchBrowsingOptions(BrowsingOptions chosenOption) {
    emit(state.copyWith(browsingOptions: chosenOption));
  }

  void switchSearching(String dropdownValue) {
    switch (dropdownValue) {
      case 'Team':
        emit(state.copyWith(searchTypes: SearchTypes.team));
      case 'League':
        emit(state.copyWith(searchTypes: SearchTypes.league));
    }
  }

  Future<void> searchingTeams(String nameQuery) async {
    emit(state.copyWith(isLoading: true));
    try {
      final searchedResults = await competitionScreenRepository.fetchTeams(nameQuery);
      emit(state.copyWith(teamResults: searchedResults, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  Future<void> searchingLeaguesByName(String nameQuery) async {
    String yearFromActualDate = DateFormat('yyyy').format(DateTime.now());
    emit(state.copyWith(isLoading: true));

    try {
      final searchedLeaguesByName = await competitionScreenRepository.fetchLeaguesByName(nameQuery, yearFromActualDate);
      final searchedLeaguesByCountry =
          await competitionScreenRepository.fetchLeaguesByCountry(nameQuery, yearFromActualDate);

      final combinedResults = [...searchedLeaguesByName, ...searchedLeaguesByCountry];

      emit(state.copyWith(leagueResults: combinedResults, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }
}
