import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../extensions/context/applocalization_context.dart';
import '../../../../data/models/match_model/match_model.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_const_variables.dart';
import '../../../extensions/match/match_properties_getter_ext.dart';
import '../../../theme/custom_text_style.dart';

class LiveMatchTileTeamsDisplay extends StatelessWidget {
  const LiveMatchTileTeamsDisplay({super.key, required this.liveMatch});

  final MatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final String homeTeamName = liveMatch.teams?.home?.name ?? context.localizations.unknownHomeTeam;
    final String awayTeamName = liveMatch.teams?.away?.name ?? context.localizations.unknownAwayTeam;
    final String homeTeamLogo = liveMatch.homeTeamLogo;
    final String awayTeamLogo = liveMatch.awayTeamLogo;
    final String matchStatusShort = liveMatch.matchStatusShort;
    final String matchStatusLong = liveMatch.matchStatusLong;
    final int homeGoals = liveMatch.homeTeamGoals;
    final int awayGoals = liveMatch.awayTeamGoals;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        width: 370,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
                      width: 40,
                      height: 40,
                      imageUrl: homeTeamLogo,
                      fit: BoxFit.fill,
                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                          CircularProgressIndicator(value: downloadProgress.progress, color: AppColors.mainThemePink),
                      errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                    ),
                    Text(homeTeamName,
                        textAlign: TextAlign.center,
                        style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  matchStatusShort == AppConstVariables.matchNotStarted ||
                          matchStatusShort == AppConstVariables.matchTimeToBeDefined
                      ? Text(
                          matchStatusLong,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : Text(
                          '$homeGoals - $awayGoals',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
                      width: 40,
                      height: 40,
                      imageUrl: awayTeamLogo,
                      fit: BoxFit.fill,
                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                          CircularProgressIndicator(value: downloadProgress.progress, color: AppColors.mainThemePink),
                      errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                    ),
                    Text(awayTeamName,
                        textAlign: TextAlign.center,
                        style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
