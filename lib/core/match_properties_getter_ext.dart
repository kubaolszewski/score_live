import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

extension MatchPropertiesGetter on LiveMatchModel {
  String get homeTeamLogo => teams?.home?.logo ?? AppConstVariables.defaultTeamLogo;
  String get awayTeamLogo => teams?.away?.logo ?? AppConstVariables.defaultTeamLogo;
  int get homeTeamId => teams?.home?.id ?? AppConstVariables.intPlaceholder;
  int get awayTeamId => teams?.away?.id ?? AppConstVariables.intPlaceholder;
}
