import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../features/home/match_details/match_details_screen.dart';
import '../../extensions/navigation/navigation_on_string_ext.dart';
import 'elements/wide_match_tile_date.dart';
import 'elements/wide_match_tile_result.dart';
import 'elements/wide_match_tile_teams_display.dart';
import '../../../data/models/match_model/match_model.dart';
import '../../constants/app_colors.dart';

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
        onTap: isBrowsingH2HTab == true
            ? null
            : () => Modular.to.pushNamed(MatchDetailsScreen.path.relativePath, arguments: match),
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
