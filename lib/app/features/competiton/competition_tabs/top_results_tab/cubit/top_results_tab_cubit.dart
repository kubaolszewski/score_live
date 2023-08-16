import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/repositories/competition_screen_repository.dart';

part 'top_results_tab_state.dart';
part 'top_results_tab_cubit.freezed.dart';

class TopResultsTabCubit extends Cubit<TopResultsTabState> {
  TopResultsTabCubit(this.competitionScreenRepository) : super(const LoadingResultsState());

  final CompetitionScreenRepository competitionScreenRepository;

  Future<void> fetchTopLeagues(DateTime date) async {
    String yearFromActualDate = DateFormat('yyyy').format(date);
    emit(const LoadingResultsState());
    try {
      final leagues = await competitionScreenRepository.fetchTopLeagues(yearFromActualDate);
      emit(ResultsLoadedState(leagues));
    } catch (error) {
      emit(ErrorResultsState(error.toString()));
    }
  }
}
