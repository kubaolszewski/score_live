import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/league_badge.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/wide_match_tile.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class ScoreTabLoadedView extends StatelessWidget {
  const ScoreTabLoadedView({
    super.key,
    required this.matchesByDate,
  });

  final List<LiveMatchModel> matchesByDate;

  @override
  Widget build(BuildContext context) {
    double width = AppConstVariables.widthInfinity;

    if (matchesByDate.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Text(
            context.localizations.noMatchesFinished,
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
        itemCount: matchesByDate.length,
        itemBuilder: (context, index) {
          final match = matchesByDate[index];
          final String flag = match.league?.flag ?? AppConstVariables.defaultLeagueLogo;
          final String leagueName = match.league?.name ?? context.localizations.unknownLeague;
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
