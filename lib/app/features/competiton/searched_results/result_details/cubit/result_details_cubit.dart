import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/statistics_model/statistics_model.dart';
import 'package:score_live/service/api_responses_provider.dart';

import '../../../../../../models/match_model/match_model.dart';

part 'result_details_state.dart';
part 'result_details_cubit.freezed.dart';

class ResultDetailsCubit extends Cubit<ResultDetailsState> {
  ResultDetailsCubit() : super(ResultDetailsState());

  void switchDetailsOptions(ResultOptions chosenOption) {
    emit(state.copyWith(resultOptions: chosenOption));
  }
}
