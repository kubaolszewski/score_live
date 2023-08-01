import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/event_text_without_icon.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class TeamsLineUpsDisplay extends StatelessWidget {
  const TeamsLineUpsDisplay({super.key, required this.lineUps, required this.isHomeTeam});

  final List<LineUpModel> lineUps;
  final bool isHomeTeam;

  @override
  Widget build(BuildContext context) {
    final homeTeamLineUp = lineUps[0].startXI;
    final String homeTeamName = lineUps[0].team?.name ?? AppConstVariables.stringPlaceholder;
    final String homeTeamLogo = lineUps[0].team?.logo ?? AppConstVariables.defaultTeamLogo;
    final String homeTeamFormation = lineUps[0].formation ?? AppConstVariables.stringPlaceholder;
    final awayTeamLineUp = lineUps[1].startXI;
    final String awayTeamName = lineUps[1].team?.name ?? AppConstVariables.stringPlaceholder;
    final String awayTeamLogo = lineUps[1].team?.logo ?? AppConstVariables.defaultTeamLogo;
    final String awayTeamFormation = lineUps[1].formation ?? AppConstVariables.stringPlaceholder;
    return Expanded(
      child: Column(
        crossAxisAlignment: isHomeTeam ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          if (isHomeTeam == true) ...[
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  CachedNetworkImage(
                      width: 32,
                      height: 32,
                      imageUrl: homeTeamLogo,
                      errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      homeTeamName,
                      textAlign: TextAlign.start,
                      style: const CustomTextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              homeTeamFormation,
              style: const CustomTextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            if (homeTeamLineUp != null)
              for (final player in homeTeamLineUp) ...[
                EventTextWithoutIcon(
                  time: player.player?.number.toString() ?? AppConstVariables.stringPlaceholder,
                  player: player.player?.name ?? AppConstVariables.stringPlaceholder,
                  isHomeTeam: true,
                ),
                const SizedBox(height: 5),
              ],
          ] else ...[
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      awayTeamName,
                      textAlign: TextAlign.end,
                      style: const CustomTextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(width: 10),
                  CachedNetworkImage(
                      width: 32,
                      height: 32,
                      imageUrl: awayTeamLogo,
                      errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              awayTeamFormation,
              style: const CustomTextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            if (awayTeamLineUp != null)
              for (final player in awayTeamLineUp) ...[
                EventTextWithoutIcon(
                  time: player.player?.number.toString() ?? AppConstVariables.stringPlaceholder,
                  player: player.player?.name ?? AppConstVariables.stringPlaceholder,
                  isHomeTeam: false,
                ),
                const SizedBox(height: 5),
              ]
          ]
        ],
      ),
    );
  }
}
