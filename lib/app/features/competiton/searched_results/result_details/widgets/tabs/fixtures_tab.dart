import 'package:flutter/material.dart';
import '../../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../../../models/match_model/match_model.dart';
import '../../../../../../../presentation/constants/app_const_variables.dart';
import '../../../../../../../presentation/constants/text_styles.dart';

import '../../../../../../common/widgets/wide_match_tile/wide_match_tile.dart';

class FixturesTab extends StatelessWidget {
  const FixturesTab({super.key, this.fixtures});

  final List<MatchModel>? fixtures;

  @override
  Widget build(BuildContext context) {
    if (fixtures == null || fixtures!.isEmpty) {
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

    final matchweek = fixtures?[0].league?.round ?? AppConstVariables.stringPlaceholder;
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
          itemCount: fixtures!.length,
          itemBuilder: (context, index) {
            return WideMatchListTile(match: fixtures![index]);
          },
        )
      ],
    );
  }
}
