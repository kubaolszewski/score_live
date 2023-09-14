import 'package:flutter/material.dart';
import 'elements/teams_line_ups_display.dart';
import '../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../../models/line_up_model/line_up_model.dart';
import '../../../../../../models/match_model/match_model.dart';
import '../../../../../../presentation/constants/app_colors.dart';
import '../../../../../../presentation/constants/text_styles.dart';

class MatchLineUpTab extends StatelessWidget {
  const MatchLineUpTab({
    super.key,
    required this.liveMatch,
    required this.lineUps,
  });

  final MatchModel liveMatch;
  final List<LineUpModel> lineUps;

  @override
  Widget build(BuildContext context) {
    if (lineUps.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Text(
            context.localizations.noLineUps,
            textAlign: TextAlign.center,
            style: const CustomTextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(8.0),
      color: AppColors.listTileGrey,
      child: ListView(
        shrinkWrap: true,
        primary: false,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamsLineUpsDisplay(lineUps: lineUps, isHomeTeam: true),
              TeamsLineUpsDisplay(lineUps: lineUps, isHomeTeam: false),
            ],
          )
        ],
      ),
    );
  }
}
