import '../enums.dart';
import '../../constants/app_const_variables.dart';

extension EnumsFormatter on StatsSwitch {
  String get statsSwitchHeaderFormatter => switch (this) {
        StatsSwitch.goals => AppConstVariables.goalsHeader,
        StatsSwitch.assists => AppConstVariables.assistsHeader,
      };
}
