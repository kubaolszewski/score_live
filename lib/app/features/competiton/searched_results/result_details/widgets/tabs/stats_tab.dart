import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:score_live/app/common/extensions/context/applocalization_context.dart';
import 'package:score_live/app/common/extensions/enums.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

import '../../../../../../../models/topscorers_model/topscorers_model.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key, required this.topGoals, required this.topAssists, required this.statsSwitch});

  final StatsSwitch statsSwitch;
  final List<TopScorersModel> topGoals;
  final List<TopScorersModel> topAssists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          const StatsHeaderWithSwitch(),
          const SizedBox(height: 20),
          // if (topGoals.isEmpty || topAssists.isEmpty) ...[
          //   SizedBox(
          //     height: 200,
          //     child: Center(
          //       child: Text(
          //         context.localizations.noStats,
          //         textAlign: TextAlign.center,
          //         style: const CustomTextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          //       ),
          //     ),
          //   )
          // ],
          Builder(
            builder: (context) => switch (statsSwitch) {
              StatsSwitch.goals => TopGoalsBoard(topGoals: topGoals),
              StatsSwitch.assists => const SizedBox(),
            },
          )
        ],
      ),
    );
  }
}

class TopGoalsBoard extends StatelessWidget {
  const TopGoalsBoard({
    super.key,
    required this.topGoals,
  });

  final List<TopScorersModel> topGoals;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.listTileGrey,
        borderRadius: BorderRadius.circular(6),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: topGoals.length,
        itemBuilder: (context, index) {
          debugPrint(topGoals.length.toString());
          final topScorer = topGoals[index];
          final playerPhoto = topScorer.player.photo;
          final playerName = topScorer.player.name;
          final playerClub = topScorer.statistics[0].team.name;
          return Row(
            children: [
              Text(
                index.toString(),
                style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700),
              ),
              CircleAvatar(
                radius: 32,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: playerPhoto,
                    fit: BoxFit.fill,
                    progressIndicatorBuilder: (context, url, downloadProgress) =>
                        CircularProgressIndicator(value: downloadProgress.progress, color: AppColors.mainThemePink),
                    errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(playerName,
                      style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
                  Text(playerClub,
                      style: const CustomTextStyle(
                          fontSize: 12, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700)),
                ],
              ),
              const Text('amount',
                  style: CustomTextStyle(fontSize: 12, color: AppColors.mainThemePink, fontWeight: FontWeight.w700))
            ],
          );
        },
      ),
    );
  }
}

class StatsHeaderWithSwitch extends StatelessWidget {
  const StatsHeaderWithSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppConstVariables.goalsHeader,
            style: CustomTextStyle(fontSize: 20, color: Colors.grey[400]!, fontWeight: FontWeight.w700),
          ),
          const Row(
            children: [
              // TODO :Replace with IconButton later
              Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 24,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 24,
              ),
            ],
          )
        ],
      ),
    );
  }
}
