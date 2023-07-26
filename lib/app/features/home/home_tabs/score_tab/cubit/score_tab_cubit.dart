import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

part 'score_tab_state.dart';
part 'score_tab_cubit.freezed.dart';

class ScoreTabCubit extends Cubit<ScoreTabState> {
  ScoreTabCubit(this.homeScreenRepository) : super(const LoadingMatchesState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchMatchesByDate(DateTime date) async {
    String formattedStringDate = DateFormat('yyyy-MM-dd').format(date);
    DateTime formattedDate = DateFormat('yyyy-MM-dd').parse(formattedStringDate);
    DateTime formattedActualDate = DateFormat('yyyy-MM-dd').parse(DateFormat('yyyy-MM-dd').format(DateTime.now()));
    try {
      if (formattedDate.isBefore(formattedActualDate) || formattedDate.isAtSameMomentAs(formattedActualDate)) {
        emit(const LoadingMatchesState());
        final matchesByDate =
            await homeScreenRepository.fetchMatchesByDate(AppConstVariables.fullTime, formattedStringDate);
        if (matchesByDate != null) {
          emit(MatchesLoadedState(matchesByDate));
        }
      } else {
        emit(const MatchesLoadedState([]));
      }
    } catch (error) {
      emit(ErrorMatchesState(error.toString()));
    }
  }
}
