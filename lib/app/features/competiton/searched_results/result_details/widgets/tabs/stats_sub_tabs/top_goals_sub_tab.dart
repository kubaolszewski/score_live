import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '/presentation/constants/text_styles.dart';
import '/presentation/constants/app_colors.dart';
import '/models/topscorers_model/top_scorers_model.dart';

class TopGoalsSubTab extends StatelessWidget {
  const TopGoalsSubTab({
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
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '#',
                        style: CustomTextStyle(
                            fontSize: 16, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Player',
                        style: CustomTextStyle(
                            fontSize: 16, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Text(
                    'amount',
                    style:
                        CustomTextStyle(fontSize: 16, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Divider(color: Colors.grey, thickness: 0.5),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 5,
              itemBuilder: (context, index) {
                final player = topGoals[index];
                final playerName = player.player.name;
                final playerPhoto = player.player.photo;
                final playerTeam = player.statistics[0].team.name;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            (index + 1).toString(),
                            style: const CustomTextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(width: 16),
                          CircleAvatar(
                            radius: 28,
                            child: ClipOval(
                              child: CachedNetworkImage(
                                imageUrl: playerPhoto,
                                fit: BoxFit.fill,
                                progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(
                                    value: downloadProgress.progress, color: AppColors.mainThemePink),
                                errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(playerName,
                                  style: const CustomTextStyle(
                                      fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w900)),
                              const SizedBox(height: 6),
                              Text(playerTeam,
                                  style: const CustomTextStyle(
                                      fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                      const Text('amount',
                          style: CustomTextStyle(
                              fontSize: 16, color: AppColors.mainThemePink, fontWeight: FontWeight.w900))
                    ],
                  ),
                );
              },
            ),
          ],
        ));
  }
}
