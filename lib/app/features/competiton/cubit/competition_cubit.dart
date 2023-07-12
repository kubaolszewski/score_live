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
  CompetitionCubit(this.competitionScreenRepository) : super(const CompetitionState());

  final CompetitionScreenRepository competitionScreenRepository;

  Future<void> searchingTeamsByName(String nameQuery) async {
    emit(state.copyWith(isLoading: true));
    try {
      final searchedResults = await competitionScreenRepository.fetchTeamsByName(nameQuery);
      emit(state.copyWith(teamResults: searchedResults, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  Future<void> searchingLeaguesByName(String nameQuery) async {
    String yearFromActualDate = DateFormat('yyyy').format(DateTime.now());
    emit(state.copyWith(isLoading: true));
    try {
      final searchedResults = await competitionScreenRepository.fetchLeaguesByName(nameQuery, yearFromActualDate);
      emit(state.copyWith(leagueResults: searchedResults, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  Future<void> searchingLeaguesByRegion(String regionQuery) async {
    String yearFromActualDate = DateFormat('yyyy').format(DateTime.now());
    emit(state.copyWith(isLoading: true));
    try {
      final searchedResults = await competitionScreenRepository.fetchLeaguesByRegion(regionQuery, yearFromActualDate);
      emit(state.copyWith(leagueResults: searchedResults, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  void switchSearching(String searchingValue) {
    switch (searchingValue) {
      case 'Team':
        emit(state.copyWith(searchTypes: SearchTypes.teamName));
      case 'League (name)':
        emit(state.copyWith(searchTypes: SearchTypes.leagueName));
      case 'League (regional)':
        emit(state.copyWith(searchTypes: SearchTypes.leagueRegion));
    }
  }

  void switchBrowsingOptions(BrowsingOptions chosenOption) {
    emit(state.copyWith(browsingOptions: chosenOption));
  }
}
