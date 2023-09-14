import 'package:flutter/material.dart';
import '../../../features/home/match_details/match_details_widgets/match_goals_widget.dart';
import '../header_with_league_and_timer/header_with_league_and_timer.dart';
import 'elements/match_result_display.dart';
import '../../../../models/match_model/match_model.dart';
import '../../../../presentation/constants/app_colors.dart';

class MatchDetailsTile extends StatelessWidget {
  const MatchDetailsTile({
    super.key,
    required this.leagueName,
    required this.liveMatch,
  });

  final String leagueName;
  final MatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.listTileGrey,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              HeaderWithLeagueAndTimer(liveMatch: liveMatch),
              const SizedBox(height: 5),
              MatchResultDisplay(liveMatch: liveMatch),
              const SizedBox(height: 5),
              const Divider(color: Colors.grey, thickness: 0.5),
              const SizedBox(height: 5),
              MatchGoalsWidget(liveMatch),
            ],
          ),
        ),
      ),
    );
  }
}
