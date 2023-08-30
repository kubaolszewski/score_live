import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/wide_match_tile.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class ResultsTab extends StatelessWidget {
  const ResultsTab({super.key, this.results});

  final List<MatchModel>? results;

  @override
  Widget build(BuildContext context) {
    if (results == null || results!.isEmpty) {
      return Center(
        child: Text(
          context.localizations.noMatchesFinished,
          textAlign: TextAlign.center,
          style: const CustomTextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
    }

    final matchweek = results?.last.league?.round ?? AppConstVariables.stringPlaceholder;

    return Column(
      children: [
        Text(
          matchweek,
          style: const CustomTextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: results!.length,
          itemBuilder: (context, index) {
            return WideMatchListTile(match: results![index]);
          },
        )
      ],
    );
  }
}
