import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../extensions/context/applocalization_context.dart';
import '../../../extensions/date/date_formatter_ext.dart';
import '../../../../data/models/match_model/match_model.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_const_variables.dart';
import '../../../extensions/match/match_properties_getter_ext.dart';
import '../../../theme/custom_text_style.dart';

class MatchResultDisplay extends StatelessWidget {
  const MatchResultDisplay({super.key, required this.liveMatch});

  final MatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final String homeTeamName = liveMatch.teams?.home?.name ?? context.localizations.unknownHomeTeam;
    final String awayTeamName = liveMatch.teams?.away?.name ?? context.localizations.unknownAwayTeam;
    final String homeTeamLogo = liveMatch.homeTeamLogo;
    final String awayTeamLogo = liveMatch.awayTeamLogo;
    final String matchStatusShort = liveMatch.matchStatusShort;
    final String matchStatusLong = liveMatch.matchStatusLong;
    final String matchStartingHourFormatted = liveMatch.matchStartTime.hourFromDate();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: SizedBox(
              child: Column(
                children: [
                  CachedNetworkImage(
                    width: 36,
                    height: 36,
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
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              matchStatusShort == AppConstVariables.matchNotStarted ||
                      matchStatusShort == AppConstVariables.matchTimeToBeDefined
                  ? Column(
                      children: [
                        Text(
                          matchStatusLong,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          matchStartingHourFormatted,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      '${liveMatch.goals!.home} - '
                      '${liveMatch.goals!.away}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ],
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: SizedBox(
            child: Column(
              children: [
                CachedNetworkImage(
                  width: 36,
                  height: 36,
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
    );
  }
}
