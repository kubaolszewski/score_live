import 'package:flutter/material.dart';
import '../../../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../../data/models/match_model/match_model.dart';
import '../../../../../../common/constants/app_const_variables.dart';
import '../../../../../../common/theme/custom_text_style.dart';

import '../../../../../../../common/widgets/wide_match_tile/wide_match_tile.dart';

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

    final matchweek = results?[0].league?.round ?? AppConstVariables.stringPlaceholder;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            matchweek,
            style: CustomTextStyle(fontSize: 16, color: Colors.grey[400]!, fontWeight: FontWeight.w700),
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
