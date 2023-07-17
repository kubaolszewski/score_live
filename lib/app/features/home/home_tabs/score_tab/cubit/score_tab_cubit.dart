import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

part 'score_tab_state.dart';
part 'score_tab_cubit.freezed.dart';

class ScoreTabCubit extends Cubit<ScoreTabState> {
  ScoreTabCubit(this.homeScreenRepository) : super(const LoadingMatchesState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchMatchesByDate(DateTime date) async {
    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    emit(const LoadingMatchesState());
    try {
      final liveMatches = await homeScreenRepository.fetchMatchesByDate(formattedDate);
      emit(MatchesLoadedState(liveMatches!));
    } catch (error) {
      emit(ErrorMatchesState(error.toString()));
    }
  }
}
