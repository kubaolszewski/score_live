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

  Future<List<Object>> combineTeamsAndLeaguesList(String nameQuery) async {
    String yearFromActualDate = DateFormat('yyyy').format(DateTime.now());
    final searchedTeams = await competitionScreenRepository.fetchTeamsByName(nameQuery);
    final searchedLeagues = await competitionScreenRepository.fetchLeaguesByName(nameQuery, yearFromActualDate);
    final combinedList = [searchedTeams, ...searchedLeagues];
    return combinedList;
  }

  Future<void> searchingLeaguesByCountry(String nameQuery) async {
    String yearFromActualDate = DateFormat('yyyy').format(DateTime.now());
    emit(state.copyWith(isLoading: true));
    try {
      final searchedResults = await competitionScreenRepository.fetchLeaguesByCountry(nameQuery, yearFromActualDate);
      emit(state.copyWith(leagueResults: searchedResults, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }
}
