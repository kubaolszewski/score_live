import 'package:flutter/material.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchLineUpTab extends StatelessWidget {
  const MatchLineUpTab({super.key, required this.liveMatch, required this.lineUp});

  final LiveMatchModel liveMatch;
  final List<LineUpModel> lineUp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            height: 1000,
            color: AppColors.listTileGrey,
          ),
        ],
      ),
    );
  }
}
