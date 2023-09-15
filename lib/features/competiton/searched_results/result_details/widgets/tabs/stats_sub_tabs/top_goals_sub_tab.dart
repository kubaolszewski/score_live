import 'package:flutter/material.dart';

import '../../../../../../../common/theme/custom_text_style.dart';
import '../../../../../../../common/constants/app_colors.dart';
import '../../../../../../../data/models/topscorers_model/top_scorers_model.dart';
import 'widgets/top_player_list_tile.dart';

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
                    'Goals',
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
                final playerPhoto = topGoals[index].player.photo;
                final playerName = topGoals[index].player.name;
                final playerTeam = topGoals[index].statistics[0].team.name;
                return TopPlayerListTile(
                    playerPhoto: playerPhoto, playerName: playerName, playerTeam: playerTeam, index: index);
              },
            ),
          ],
        ));
  }
}
