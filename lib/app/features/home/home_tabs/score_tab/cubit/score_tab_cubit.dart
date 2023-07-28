import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/core/date_formatter_extension.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

part 'score_tab_state.dart';
part 'score_tab_cubit.freezed.dart';

class ScoreTabCubit extends Cubit<ScoreTabState> {
  ScoreTabCubit(this.homeScreenRepository) : super(const LoadingMatchesState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchMatchesByDate(DateTime date) async {
    final formattedQueryDate = DateFormat(AppConstVariables.dateYyyyMmDdDashFormat).format(date);
    final formattedDate = DateFormat(AppConstVariables.dateYyyyMmDdDashFormat).parse(formattedQueryDate);
    final formattedActualDate = DateTime.now().formatDateToDateTime();
    try {
      if (formattedDate.isBefore(formattedActualDate) || formattedDate.isAtSameMomentAs(formattedActualDate)) {
        emit(const LoadingMatchesState());
        final matchesByDate =
            await homeScreenRepository.fetchMatchesByDate(AppConstVariables.fullTime, formattedQueryDate);
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
