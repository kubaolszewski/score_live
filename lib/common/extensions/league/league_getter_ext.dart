import '../../../data/models/league_model/league_model.dart';
import '../../constants/app_const_variables.dart';
import '../../constants/assets_paths.dart';

extension LeaguePropertiesGetter on LeagueModel {
  int get leagueId => league?.id ?? AppConstVariables.intPlaceholder;
  String get leagueFlag => country?.flag ?? AssetsPaths.defaultLeagueLogo;
  String get leagueRegion => country?.name ?? AppConstVariables.stringPlaceholder;
}
