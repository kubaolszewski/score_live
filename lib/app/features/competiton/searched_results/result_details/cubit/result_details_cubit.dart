import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/standings_model/standings_model.dart';
import 'package:score_live/models/topscorers_model/topscorers_model.dart';
import 'package:score_live/repositories/competition/searched_result_details_repository.dart';

import '../../../../../../models/match_model/match_model.dart';
import '../../../../../common/extensions/enums.dart';

part 'result_details_state.dart';
part 'result_details_cubit.freezed.dart';

class ResultDetailsCubit extends Cubit<ResultDetailsState> {
  ResultDetailsCubit(this._searchedResultDetailsRepository) : super(ResultDetailsState());

  final SearchedResultDetailsRepository _searchedResultDetailsRepository;

  Future<void> fetchTabsData(String leagueId) async {
    final yearFromActualDate = DateFormat('yyyy').format(DateTime.now());

    emit(state.copyWith(isLoading: true));
    try {
      final results = await _searchedResultDetailsRepository.fetchResultsByLeagueId(leagueId, yearFromActualDate);
      final fixtures = await _searchedResultDetailsRepository.fetchFixturesByLeagueId(leagueId, yearFromActualDate);
      final standings = await _searchedResultDetailsRepository.fetchStandings(leagueId, yearFromActualDate);
      final topScorers = await _searchedResultDetailsRepository.fetchTopScorers(leagueId, yearFromActualDate);
      emit(state.copyWith(
          results: results, fixtures: fixtures, standings: standings, topScorers: topScorers, isLoading: false));
    } catch (error) {
      emit(state.copyWith(
        errorMessage: error.toString(),
        isLoading: false,
      ));
    }
  }

  void switchStats(StatsSwitch nextStat) {
    emit(state.copyWith(statsSwitch: nextStat));
  }

  void switchDetailsOptions(ResultOptions chosenOption) {
    emit(state.copyWith(resultOptions: chosenOption));
  }
}
