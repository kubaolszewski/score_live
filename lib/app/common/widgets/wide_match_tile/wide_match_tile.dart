import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'elements/wide_match_tile_date.dart';
import 'elements/wide_match_tile_result.dart';
import 'elements/wide_match_tile_teams_display.dart';
import '../../../features/home/home_module.dart';
import '../../../../models/match_model/match_model.dart';
import '../../../../presentation/constants/app_colors.dart';

class WideMatchListTile extends StatelessWidget {
  const WideMatchListTile({
    super.key,
    required this.match,
    this.isBrowsingH2HTab,
  });

  final MatchModel match;
  final bool? isBrowsingH2HTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: InkWell(
        onTap:
            isBrowsingH2HTab == true ? null : () => Modular.to.pushNamed(HomePath.matchDetailsPath, arguments: match),
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
