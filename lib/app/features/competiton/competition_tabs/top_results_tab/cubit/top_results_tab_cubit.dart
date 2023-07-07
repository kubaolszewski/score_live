import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/repositories/competition_screen_repository.dart';

part 'top_results_tab_state.dart';
part 'top_results_tab_cubit.freezed.dart';

class TopResultsTabCubit extends Cubit<TopResultsTabState> {
  TopResultsTabCubit(this.competitionScreenRepository) : super(const TopResultsTabState());

  final CompetitionScreenRepository competitionScreenRepository;

  Future<void> fetchLeagues(DateTime date) async {
    String yearFromActualDate = DateFormat('yyyy').format(date);
    emit(state.copyWith(isLoading: true));
    try {
      final leagues = await competitionScreenRepository.fetchLeagues(yearFromActualDate);
      emit(state.copyWith(leagueModel: leagues, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }
}
