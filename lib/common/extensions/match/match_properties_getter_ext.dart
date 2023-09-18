import '../../../data/models/match_model/match_model.dart';
import '../../constants/app_const_variables.dart';
import '../../constants/assets_paths.dart';

extension MatchPropertiesGetter on MatchModel {
  String get homeTeamLogo => teams?.home?.logo ?? AssetsPaths.defaultTeamLogo;
  String get awayTeamLogo => teams?.away?.logo ?? AssetsPaths.defaultTeamLogo;
  int get homeTeamId => teams?.home?.id ?? AppConstVariables.intPlaceholder;
  int get awayTeamId => teams?.away?.id ?? AppConstVariables.intPlaceholder;
  int get homeTeamGoals => goals?.home ?? AppConstVariables.intPlaceholder;
  int get awayTeamGoals => goals?.away ?? AppConstVariables.intPlaceholder;

  String get yearFromSeason => fixture?.date ?? AppConstVariables.stringPlaceholder;
  int get matchId => fixture?.id ?? AppConstVariables.intPlaceholder;

  int get leagueId => league?.id ?? AppConstVariables.intPlaceholder;
  String get leagueFlag => league?.flag ?? AssetsPaths.defaultLeagueLogo;

  int get matchTimeElapsed => fixture?.status?.elapsed ?? AppConstVariables.intPlaceholder;
  String get matchStatusShort => fixture?.status?.short ?? AppConstVariables.stringPlaceholder;
  String get matchStatusLong => fixture?.status?.long ?? AppConstVariables.stringPlaceholder;
  String get matchStartTime => fixture?.date ?? AppConstVariables.stringPlaceholder;

  int get halfTimeHomeGoals => score?.halftime?.home ?? AppConstVariables.intPlaceholder;
  int get halfTimeAwayGoals => score?.halftime?.away ?? AppConstVariables.intPlaceholder;
  int get fullTimeHomeGoals => score?.fulltime?.home ?? AppConstVariables.intPlaceholder;
  int get fullTimeAwayGoals => score?.fulltime?.away ?? AppConstVariables.intPlaceholder;
}
