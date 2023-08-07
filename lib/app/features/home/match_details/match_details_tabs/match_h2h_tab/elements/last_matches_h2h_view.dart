import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/wide_match_tile.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class LastMatchesH2HView extends StatelessWidget {
  const LastMatchesH2HView({
    super.key,
    required this.teamsH2h,
    required this.amountOfFixtures,
  });

  final List<LiveMatchModel> teamsH2h;
  final int amountOfFixtures;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(context.localizations.lastMatchesHeader,
            style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
        const SizedBox(height: 16),
        ListView.builder(
          itemCount: amountOfFixtures,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) => WideMatchListTile(
            match: teamsH2h[index],
            isBrowsingH2HTab: true,
          ),
        ),
      ],
    );
  }
}
