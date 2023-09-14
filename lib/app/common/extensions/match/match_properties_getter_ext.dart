import '../../../../models/match_model/match_model.dart';
import '../../../../presentation/constants/app_const_variables.dart';

extension MatchPropertiesGetter on MatchModel {
  String get homeTeamLogo => teams?.home?.logo ?? AppConstVariables.defaultTeamLogo;
  String get awayTeamLogo => teams?.away?.logo ?? AppConstVariables.defaultTeamLogo;
  int get homeTeamId => teams?.home?.id ?? AppConstVariables.intPlaceholder;
  int get awayTeamId => teams?.away?.id ?? AppConstVariables.intPlaceholder;
  String get yearFromSeason => fixture?.date ?? AppConstVariables.stringPlaceholder;
  int get matchId => fixture?.id ?? AppConstVariables.intPlaceholder;
  int get leagueId => league?.id ?? AppConstVariables.intPlaceholder;
}
