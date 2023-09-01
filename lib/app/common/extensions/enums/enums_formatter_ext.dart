import 'package:score_live/app/common/extensions/enums.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

extension EnumsFormatter on StatsSwitch {
  String get statsSwitchHeaderFormatter => switch (this) {
        StatsSwitch.goals => AppConstVariables.goalsHeader,
        StatsSwitch.assists => AppConstVariables.assistsHeader,
      };
}
