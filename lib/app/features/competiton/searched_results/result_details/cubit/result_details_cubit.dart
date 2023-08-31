import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/statistics_model/statistics_model.dart';
import 'package:score_live/repositories/competition/searched_result_details_repository.dart';
import 'package:score_live/service/api_responses_provider.dart';

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

      emit(state.copyWith(results: results, fixtures: fixtures, isLoading: false));
    } catch (error) {
      emit(state.copyWith(
        errorMessage: error.toString(),
        isLoading: false,
      ));
    }
  }

  void switchDetailsOptions(ResultOptions chosenOption) {
    emit(state.copyWith(resultOptions: chosenOption));
  }
}
