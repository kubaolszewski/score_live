import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/repositories/competition/competition_screen_repository.dart';

part 'region_tab_state.dart';
part 'region_tab_cubit.freezed.dart';

class RegionTabCubit extends Cubit<RegionTabState> {
  RegionTabCubit(this.competitionScreenRepository) : super(const LoadingLeaguesState());

  final CompetitionScreenRepository competitionScreenRepository;

  Future<void> fetchLeaguesByRegion(DateTime date) async {
    String formattedDate = DateFormat('yyyy').format(date);
    emit(const LoadingLeaguesState());
    try {
      final leaguesFromRegion = await competitionScreenRepository.fetchLeaguesByCountry('Spain', formattedDate);
      emit(LeaguesLoadedState(leaguesFromRegion));
    } catch (error) {
      emit(ErrorLeaguesState(error.toString()));
    }
  }
}
