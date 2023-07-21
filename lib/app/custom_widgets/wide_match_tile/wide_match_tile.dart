import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/elements/wide_match_tile_date.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/elements/wide_match_tile_result.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/elements/wide_match_tile_teams_display.dart';
import 'package:score_live/app/features/home/home_module.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class WideMatchListTile extends StatelessWidget {
  const WideMatchListTile({
    super.key,
    required this.match,
  });

  final LiveMatchModel match;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: InkWell(
        onTap: () {
          Modular.to.pushNamed(HomePath.matchDetailsPath, arguments: match);
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.listTileGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              WideMatchTileDate(match: match),
              WideMatchTileTeamsDisplay(match: match),
              WideMatchTileResult(match: match),
            ],
          ),
        ),
      ),
    );
  }
}
