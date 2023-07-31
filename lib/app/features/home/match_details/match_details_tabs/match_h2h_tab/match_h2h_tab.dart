import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/wide_match_tile.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class MatchH2HTab extends StatelessWidget {
  const MatchH2HTab({super.key, required this.match, required this.teamsH2h});

  final LiveMatchModel match;
  final List<LiveMatchModel> teamsH2h;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.listTileGrey,
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  '12 Matches',
                  style: CustomTextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Total Wins',
                        style: CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Expanded(
                          child: Image(
                            image: NetworkImage("https://media-3.api-sports.io/football/teams/33.png"),
                            width: 20,
                            height: 20,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                                height: 6,
                                width: 148,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4), color: AppColors.mainThemePink),
                                  height: 6,
                                  width: 148),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(9.toString(),
                            textAlign: TextAlign.end,
                            style:
                                const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Expanded(
                          child: Image(
                            image: NetworkImage("https://media-3.api-sports.io/football/teams/63.png"),
                            width: 20,
                            height: 20,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                                height: 6,
                                width: 148,
                              ),
                              Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                                  height: 6,
                                  width: 148),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(1.toString(),
                            textAlign: TextAlign.end,
                            style:
                                const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text('2 Draws',
                        style: CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          const SizedBox(height: 32),
          const Text('LAST 5 MATCHES',
              style: CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
          const SizedBox(height: 16),
          ListView(
            shrinkWrap: true,
            primary: false,
            children: [
              for (int i = 0; i < 5; i++) WideMatchListTile(match: match),
            ],
          )
        ],
      ),
    );
  }
}
