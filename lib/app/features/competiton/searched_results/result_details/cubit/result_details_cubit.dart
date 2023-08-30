import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/statistics_model/statistics_model.dart';
import 'package:score_live/repositories/competition/searched_result_details_repository.dart';
import 'package:score_live/service/api_responses_provider.dart';

import '../../../../../../models/match_model/match_model.dart';
import '../../../../../../presentation/constants/app_const_variables.dart';

part 'result_details_state.dart';
part 'result_details_cubit.freezed.dart';

class ResultDetailsCubit extends Cubit<ResultDetailsState> {
  ResultDetailsCubit(this._searchedResultDetailsRepository) : super(ResultDetailsState());

  final SearchedResultDetailsRepository _searchedResultDetailsRepository;

  final actualDateFormattedToString = DateFormat(AppConstVariables.dateYyyyMmDdDashFormat).format(DateTime.now());

  Future<void> fetchResult(String leagueId) async {
    const statusListing = AppConstVariables.statusListing;

    final yearFromActualDate = DateFormat('yyyy').format(DateTime.now());
    emit(state.copyWith(isLoading: true));
    try {
      final results =
          await _searchedResultDetailsRepository.fetchResultsByLeagueId(leagueId, statusListing, yearFromActualDate);
      emit(state.copyWith(
          results: results!.where((element) => element.fixture?.date == actualDateFormattedToString).toList(),
          isLoading: false));
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
