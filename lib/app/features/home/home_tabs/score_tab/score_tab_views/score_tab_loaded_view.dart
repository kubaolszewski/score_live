import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/wide_match_tile.dart';
import 'package:score_live/models/live_match_model.dart';

class ScoreTabLoadedView extends StatelessWidget {
  const ScoreTabLoadedView({
    super.key,
    required this.liveMatches,
  });

  final List<LiveMatchModel> liveMatches;

  @override
  Widget build(BuildContext context) {
    double width = double.infinity;
    const String stringPlaceholder = '';
    final String flag = liveMatches[0].league?.flag ?? stringPlaceholder;
    final String leagueName = liveMatches[0].league?.name ?? stringPlaceholder;
    
    if (liveMatches.isEmpty) {
      return const SizedBox(
        height: 200,
        child: Center(
          child: Text(
            'No matches were played on this date.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15,
                child: ClipOval(
                  child: SvgPicture.network(
                    flag,
                    fit: BoxFit.cover,
                    placeholderBuilder: (BuildContext context) => Container(
                      padding: const EdgeInsets.all(30.0),
                      child: const Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                leagueName,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: width,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: liveMatches.length,
            itemBuilder: (context, index) {
              final liveMatch = liveMatches[index];
              return WideMatchListTile(
                liveMatch: liveMatch,
              );
            },
          ),
        ),
      ],
    );
  }
}
