import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

part 'score_tab_state.dart';
part 'score_tab_cubit.freezed.dart';

class ScoreTabCubit extends Cubit<ScoreTabState> {
  ScoreTabCubit(this.homeScreenRepository) : super(const ScoreTabState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchMatchesByDate(DateTime date) async {
    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    emit(state.copyWith(isLoading: true));
    try {
      final liveMatches = await homeScreenRepository.fetchMatchesByDate(formattedDate);
      emit(state.copyWith(liveMatchModel: liveMatches, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }
}
