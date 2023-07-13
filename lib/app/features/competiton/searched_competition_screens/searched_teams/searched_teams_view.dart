import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/search_list_tile.dart';
import 'package:score_live/models/team_model/team_model.dart';

class SearchedTeamsView extends StatelessWidget {
  const SearchedTeamsView({
    super.key,
    required this.width,
    required this.height,
    required this.results,
  });

  final double width;
  final double height;
  final List<TeamModel> results;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height,
        child: ListView.builder(
          itemCount: results.length,
          itemBuilder: (context, index) {
            final team = results[index];
            final String teamFlag = team.team?.logo ?? '';
            final String teamRegion = team.team?.country ?? '';
            final String teamName = team.team?.name ?? '';
            return SearchListTile(flag: teamFlag, region: teamRegion, name: teamName);
          },
        ),
      ),
    );
  }
}
