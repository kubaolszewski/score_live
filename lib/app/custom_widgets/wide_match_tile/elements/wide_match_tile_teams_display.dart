import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class WideMatchTileTeamsDisplay extends StatelessWidget {
  const WideMatchTileTeamsDisplay({super.key, required this.match});

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    final String homeTeamLogo = match.teams?.home?.logo ?? AppConstVariables.defaultTeamLogo;
    final String awayTeamLogo = match.teams?.away?.logo ?? AppConstVariables.defaultTeamLogo;
    final String homeTeamName = match.teams?.home?.name ?? context.localizations.unknownHomeTeam;
    final String awayTeamName = match.teams?.away?.name ?? context.localizations.unknownAwayTeam;
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: homeTeamLogo,
                  width: 26,
                  height: 26,
                  fit: BoxFit.fill,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(value: downloadProgress.progress, color: AppColors.mainThemePink),
                  errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                ),
                const SizedBox(width: 10),
                Text(
                  homeTeamName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: awayTeamLogo,
                  width: 26,
                  height: 26,
                  fit: BoxFit.fill,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(value: downloadProgress.progress, color: AppColors.mainThemePink),
                  errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                ),
                const SizedBox(width: 10),
                Text(
                  awayTeamName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
