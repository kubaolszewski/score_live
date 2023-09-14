import '../../../data/models/line_up_model/line_up_model.dart';
import '../../../data/models/line_up_model/start_xi/start_xi.dart';
import '../../constants/app_const_variables.dart';
import '../../constants/assets_paths.dart';

extension LineUpsGetter on List<LineUpModel> {
  LineUpModel get homeTeam => elementAt(0);
  LineUpModel get awayTeam => elementAt(1);

  String get homeTeamName => homeTeam.team?.name ?? AppConstVariables.stringPlaceholder;
  String get homeTeamLogo => homeTeam.team?.logo ?? AssetsPaths.defaultLeagueLogo;
  String get homeTeamFormation => homeTeam.formation ?? AppConstVariables.stringPlaceholder;
  String get awayTeamName => awayTeam.team?.name ?? AppConstVariables.stringPlaceholder;
  String get awayTeamLogo => awayTeam.team?.logo ?? AssetsPaths.defaultLeagueLogo;
  String get awayTeamFormation => awayTeam.formation ?? AppConstVariables.stringPlaceholder;
}

extension StartXiGetter on StartXI {
  int get playerNumber => player?.number ?? AppConstVariables.intPlaceholder;
  String get playerName => player?.name ?? AppConstVariables.stringPlaceholder;
}
