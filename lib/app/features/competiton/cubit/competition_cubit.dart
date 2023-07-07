import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/repositories/competition_screen_repository.dart';

part 'competition_state.dart';
part 'competition_cubit.freezed.dart';

class CompetitionCubit extends Cubit<CompetitionState> {
  CompetitionCubit(this.competitionScreenRepository) : super(const CompetitionState());

  final CompetitionScreenRepository competitionScreenRepository;

  Future<void> searchingResults(String nameQuery) async {
    String yearFromActualDate = DateFormat('yyyy').format(DateTime.now());
    emit(state.copyWith(isLoading: true));
    try {
      final searchedLeagues = (await competitionScreenRepository.fetchLeaguesByName(nameQuery, yearFromActualDate));
      emit(state.copyWith(league: searchedLeagues, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  void switchBrowsingOptions(BrowsingOptions chosenOption) async {
    emit(state.copyWith(browsingOptions: chosenOption));
  }
}
