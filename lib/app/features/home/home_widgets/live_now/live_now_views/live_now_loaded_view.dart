import 'package:flutter/material.dart';
import '../../../../../common/widgets/live_match_tile/live_match_tile.dart';
import '../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../../models/match_model/match_model.dart';
import '../../../../../../presentation/constants/text_styles.dart';

class LiveNowLoadedView extends StatelessWidget {
  const LiveNowLoadedView({
    super.key,
    required this.liveMatches,
  });

  final List<MatchModel> liveMatches;

  @override
  Widget build(BuildContext context) {
    if (liveMatches.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Text(
            context.localizations.noMatchesLive,
            style: const CustomTextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
      );
    }
    return SizedBox(
      height: 220,
      child: ListView.builder(
        physics: const PageScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: liveMatches.length,
        itemBuilder: (context, index) {
          final liveMatch = liveMatches[index];
          return LiveMatchTile(
            liveMatch: liveMatch,
          );
        },
      ),
    );
  }
}
