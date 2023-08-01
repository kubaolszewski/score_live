import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

extension EventsValidation on MatchEventsModel {
  int get teamIdFromEvent => team?.id ?? AppConstVariables.intPlaceholder;
  int get timeElapsed => time?.elapsed ?? AppConstVariables.intPlaceholder;
  bool validFirstHalfEvents(int teamId) {
    if (team?.id != null && time?.elapsed != null && player?.name != null) {
      if (teamId == teamIdFromEvent && timeElapsed <= 45) return true;
    }
    return false;
  }

  bool validSecondHalfEvents(int teamId) {
    if (team?.id != null && time?.elapsed != null && player?.name != null) {
      if (teamId == teamIdFromEvent && timeElapsed > 45) return true;
    }
    return false;
  }
}
