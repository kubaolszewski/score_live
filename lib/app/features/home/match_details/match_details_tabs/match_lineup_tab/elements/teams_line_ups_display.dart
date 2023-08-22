import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:score_live/app/common/widgets/event_text_without_icon.dart';
import 'package:score_live/app/common/extensions/line_ups/line_ups_getter_ext.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class TeamsLineUpsDisplay extends StatelessWidget {
  const TeamsLineUpsDisplay({super.key, required this.lineUps, required this.isHomeTeam});

  final List<LineUpModel> lineUps;
  final bool isHomeTeam;

  @override
  Widget build(BuildContext context) {
    final homeTeamLineUp = lineUps[0].startXI;
    final awayTeamLineUp = lineUps[1].startXI;

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
                      imageUrl: lineUps.homeTeamLogo,
                      errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      lineUps.homeTeamName,
                      textAlign: TextAlign.start,
                      style: const CustomTextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              lineUps.homeTeamFormation,
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
                  time: player.playerNumber.toString(),
                  player: player.playerName,
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
                      lineUps.awayTeamName,
                      textAlign: TextAlign.end,
                      style: const CustomTextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(width: 10),
                  CachedNetworkImage(
                      width: 32,
                      height: 32,
                      imageUrl: lineUps.awayTeamLogo,
                      errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              lineUps.awayTeamFormation,
              style: const CustomTextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            if (awayTeamLineUp != null)
              for (final player in awayTeamLineUp) ...[
                EventTextWithoutIcon(
                  time: player.playerNumber.toString(),
                  player: player.playerName,
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
