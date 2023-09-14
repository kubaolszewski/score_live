import '../../../data/models/match_model/match_model.dart';
import '../../constants/app_const_variables.dart';
import '../../constants/assets_paths.dart';

extension MatchPropertiesGetter on MatchModel {
  String get homeTeamLogo => teams?.home?.logo ?? AssetsPaths.defaultTeamLogo;
  String get awayTeamLogo => teams?.away?.logo ?? AssetsPaths.defaultTeamLogo;
  int get homeTeamId => teams?.home?.id ?? AppConstVariables.intPlaceholder;
  int get awayTeamId => teams?.away?.id ?? AppConstVariables.intPlaceholder;
  String get yearFromSeason => fixture?.date ?? AppConstVariables.stringPlaceholder;
  int get matchId => fixture?.id ?? AppConstVariables.intPlaceholder;
  int get leagueId => league?.id ?? AppConstVariables.intPlaceholder;
}
