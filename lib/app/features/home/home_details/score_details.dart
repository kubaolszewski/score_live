import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile.dart';

class ScoreDetails extends StatelessWidget {
  const ScoreDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15,
              ),
              SizedBox(width: 10),
              Text(
                'League name',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        WideMatchListTile(),
        WideMatchListTile(),
        WideMatchListTile(),
        WideMatchListTile(),
        WideMatchListTile(),
      ],
    );
  }
}
