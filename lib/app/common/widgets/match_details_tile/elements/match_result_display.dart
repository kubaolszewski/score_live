import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../extensions/context/applocalization_context.dart';
import '../../../extensions/date/date_formatter_ext.dart';
import '../../../../../models/match_model/match_model.dart';
import '../../../../../presentation/constants/app_colors.dart';
import '../../../../../presentation/constants/app_const_variables.dart';
import '../../../../../presentation/constants/text_styles.dart';

class MatchResultDisplay extends StatelessWidget {
  const MatchResultDisplay({super.key, required this.liveMatch});

  final MatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final String homeTeamLogo = liveMatch.teams?.home?.logo ?? AppConstVariables.defaultTeamLogo;
    final String awayTeamLogo = liveMatch.teams?.away?.logo ?? AppConstVariables.defaultTeamLogo;
    final String homeTeamName = liveMatch.teams?.home?.name ?? context.localizations.unknownHomeTeam;
    final String awayTeamName = liveMatch.teams?.away?.name ?? context.localizations.unknownAwayTeam;
    final String matchStatusShort = liveMatch.fixture?.status?.short ?? AppConstVariables.stringPlaceholder;
    final String matchStatusLong = liveMatch.fixture?.status?.long ?? AppConstVariables.stringPlaceholder;
    final String matchStartingHour = liveMatch.fixture?.date ?? AppConstVariables.stringPlaceholder;
    final String matchStartingHourFormatted = matchStartingHour.hourFromDate();
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
                  Text(homeTeamName, textAlign: TextAlign.center, style: CommonTextStyles.basicWhiteTextWithWeight),
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
                Text(awayTeamName, textAlign: TextAlign.center, style: CommonTextStyles.basicWhiteTextWithWeight),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
