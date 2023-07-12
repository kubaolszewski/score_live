import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/repositories/competition_screen_repository.dart';

part 'region_tab_state.dart';
part 'region_tab_cubit.freezed.dart';

class RegionTabCubit extends Cubit<RegionTabState> {
  RegionTabCubit(this.competitionScreenRepository) : super(const RegionTabState());

  final CompetitionScreenRepository competitionScreenRepository;

  Future<void> fetchLeaguesByRegion(DateTime date) async {
    String formattedDate = DateFormat('yyyy').format(date);
    emit(state.copyWith(isLoading: true));
    try {
      final leaguesFromRegion = await competitionScreenRepository.fetchLeaguesByRegion('Spain', formattedDate);
      emit(state.copyWith(leagueModel: leaguesFromRegion, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }
}
