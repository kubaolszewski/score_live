import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/search_list_tile.dart';
import 'package:score_live/models/team_model/team_model.dart';

class SearchedTeamsView extends StatelessWidget {
  const SearchedTeamsView({super.key, required this.results});

  final List<TeamModel> results;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = double.infinity;
    const String stringPlaceholder = '';
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height,
        child: ListView.builder(
          itemCount: results.length,
          itemBuilder: (context, index) {
            final team = results[index];
            final String teamFlag = team.team?.logo ?? stringPlaceholder;
            final String teamRegion = team.team?.country ?? stringPlaceholder;
            final String teamName = team.team?.name ?? stringPlaceholder;
            return SearchListTile(flag: teamFlag, region: teamRegion, name: teamName);
          },
        ),
      ),
    );
  }
}
