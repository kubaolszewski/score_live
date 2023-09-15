import 'package:flutter/material.dart';
import '../../../../../../../common/widgets/wide_match_tile/wide_match_tile.dart';
import '../../../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../../data/models/match_model/match_model.dart';
import '../../../../../../common/theme/custom_text_style.dart';

class LastMatchesH2HView extends StatelessWidget {
  const LastMatchesH2HView({
    super.key,
    required this.teamsH2h,
    required this.amountOfFixtures,
  });

  final List<MatchModel> teamsH2h;
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
