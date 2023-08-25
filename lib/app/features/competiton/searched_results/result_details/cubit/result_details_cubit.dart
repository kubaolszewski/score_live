import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/core/date_formatter_ext.dart';

import '../../../../../../models/match_model/match_model.dart';
import '../../../../../../repositories/competition/searched_result_details_repository.dart';

part 'result_details_state.dart';
part 'result_details_cubit.freezed.dart';

class ResultDetailsCubit extends Cubit<ResultDetailsState> {
  ResultDetailsCubit(this.searchedResultDetailsRepository) : super(ResultDetailsState());

  final SearchedResultDetailsRepository searchedResultDetailsRepository;

  Future<void> fetchLeagueResult(String resultId) async {
    String yearFromActualDate = DateFormat('yyyy').format(DateTime.now().formatDateToDateTime());
    try {
      final leagueDetails =
          await searchedResultDetailsRepository.fetchResultsDetailsByLeagueId(resultId, yearFromActualDate);
      if (leagueDetails != null) {
        emit(state.copyWith(leagueDetails: leagueDetails));
      }
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  Future<void> fetchTeamResult(String resultId) async {
    String yearFromActualDate = DateFormat('yyyy').format(DateTime.now().formatDateToDateTime());
    try {
      final teamDetails =
          await searchedResultDetailsRepository.fetchResultsDetailsByTeamId(resultId, yearFromActualDate);
      if (teamDetails != null) {
        emit(state.copyWith(teamDetails: teamDetails));
      }
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }
}
