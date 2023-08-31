import 'package:score_live/app/common/extensions/enums.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

extension EnumsFormatter on StatsSwitch {
  String statsSwitchHeaderFormatter() {
    if (name == 'goals') {
      return AppConstVariables.goalsHeader;
    }
    if (name == 'assists') {
      return AppConstVariables.assistsHeader;
    }
    return '';
  }
}
