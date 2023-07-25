import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/event_text_sample.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class LineUpsDisplay extends StatelessWidget {
  const LineUpsDisplay({super.key, required this.lineUps});

  final List<LineUpModel> lineUps;

  @override
  Widget build(BuildContext context) {
    final homeTeamLineUp = lineUps[0].startXI;
    final awayTeamLineUp = lineUps[1].startXI;
    final String homeTeamName = lineUps[0].team?.name ?? AppConstVariables.stringPlaceholder;
    final String awayTeamName = lineUps[1].team?.name ?? AppConstVariables.stringPlaceholder;
    final String homeTeamLogo = lineUps[0].team?.logo ?? AppConstVariables.defaultTeamLogo;
    final String awayTeamLogo = lineUps[1].team?.logo ?? AppConstVariables.defaultTeamLogo;
    final String homeTeamFormation = lineUps[0].formation ?? AppConstVariables.stringPlaceholder;
    final String awayTeamFormation = lineUps[1].formation ?? AppConstVariables.stringPlaceholder;
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CachedNetworkImage(
                          width: 32,
                          height: 32,
                          imageUrl: homeTeamLogo,
                          errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(homeTeamName,
                            style:
                                const CustomTextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(homeTeamFormation,
                        style: const CustomTextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 10),
                    if (homeTeamLineUp != null)
                      for (final player in homeTeamLineUp) ...[
                        EventTextSample(
                            leadingProperty: player.player?.number.toString() ?? AppConstVariables.stringPlaceholder,
                            player: player.player?.name ?? AppConstVariables.stringPlaceholder,
                            isHomeTeam: true),
                        const SizedBox(height: 5),
                      ],
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(awayTeamName,
                          style: const CustomTextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700)),
                      const SizedBox(width: 10),
                      CachedNetworkImage(
                        width: 32,
                        height: 32,
                        imageUrl: awayTeamLogo,
                        errorWidget: (context, url, error) => const Icon(
                          Icons.error,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(awayTeamFormation,
                      style: const CustomTextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 10),
                  if (awayTeamLineUp != null)
                    for (final awayPlayer in awayTeamLineUp) ...[
                      EventTextSample(
                          leadingProperty: awayPlayer.player?.number.toString() ?? AppConstVariables.stringPlaceholder,
                          player: awayPlayer.player?.name ?? AppConstVariables.stringPlaceholder,
                          isHomeTeam: false),
                      const SizedBox(height: 5),
                    ],
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
