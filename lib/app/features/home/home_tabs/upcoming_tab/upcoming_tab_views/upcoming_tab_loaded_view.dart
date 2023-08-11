import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/league_badge.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/wide_match_tile.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class UpcomingTabLoadedView extends StatelessWidget {
  const UpcomingTabLoadedView({
    super.key,
    required this.upcomingMatches,
  });

  final List<MatchModel> upcomingMatches;

  @override
  Widget build(BuildContext context) {
    double width = AppConstVariables.widthInfinity;

    if (upcomingMatches.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Text(
            context.localizations.pastMatchesCheck,
            textAlign: TextAlign.center,
            style: const CustomTextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      );
    }

    return SizedBox(
      width: width,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: upcomingMatches.length,
        itemBuilder: (context, index) {
          final match = upcomingMatches[index];
          final String flag = match.league?.flag ?? AppConstVariables.defaultLeagueLogo;
          final String leagueName = match.league?.name ?? AppConstVariables.stringPlaceholder;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                child: LeagueBadge(flag: flag, leagueName: leagueName),
              ),
              WideMatchListTile(
                match: match,
              ),
            ],
          );
        },
      ),
    );
  }
}
