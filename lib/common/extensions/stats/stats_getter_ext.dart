import '../../../data/models/statistics_model/statistics_model.dart';
import '../../constants/app_const_variables.dart';

extension StatsGetter on List<StatisticsModel> {
  StatisticsModel get homeTeam => elementAt(0);
  StatisticsModel get awayTeam => elementAt(1);

  String get homeTeamLogo => homeTeam.team?.logo ?? AppConstVariables.defaultTeamLogo;
  String get awayTeamLogo => awayTeam.team?.logo ?? AppConstVariables.defaultTeamLogo;
  String get shotsTotal => homeTeam.statistics?[2].type ?? AppConstVariables.stringPlaceholder;
  int get homeShotsTotal => homeTeam.statistics?[2].value ?? AppConstVariables.intPlaceholder;
  int get awayShotsTotal => awayTeam.statistics?[2].value ?? AppConstVariables.intPlaceholder;
  String get shotsOnGoal => homeTeam.statistics?[0].type ?? AppConstVariables.stringPlaceholder;
  int get homeShotsOnGoal => homeTeam.statistics?[0].value ?? AppConstVariables.intPlaceholder;
  int get awayShotsOnGoal => awayTeam.statistics?[0].value ?? AppConstVariables.intPlaceholder;
  String get fouls => homeTeam.statistics?[6].type ?? AppConstVariables.stringPlaceholder;
  int get homeFouls => homeTeam.statistics?[6].value ?? AppConstVariables.intPlaceholder;
  int get awayFouls => awayTeam.statistics?[6].value ?? AppConstVariables.intPlaceholder;
  String get corners => homeTeam.statistics?[7].type ?? AppConstVariables.stringPlaceholder;
  int get homeCorners => homeTeam.statistics?[7].value ?? AppConstVariables.intPlaceholder;
  int get awayCorners => awayTeam.statistics?[7].value ?? AppConstVariables.intPlaceholder;
  String get ballPossession => homeTeam.statistics?[9].type ?? AppConstVariables.stringPlaceholder;
  int get homeBallPossession => homeTeam.statistics?[9].filterBallPossession ?? AppConstVariables.intPlaceholder;
  int get awayBallPossession => awayTeam.statistics?[9].filterBallPossession ?? AppConstVariables.intPlaceholder;
}
