
import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/live_match_tile.dart';

class LiveNowView extends StatelessWidget {
  const LiveNowView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          LiveMatchTile(),
          LiveMatchTile(),
          LiveMatchTile(),
        ],
      ),
    );
  }
}
