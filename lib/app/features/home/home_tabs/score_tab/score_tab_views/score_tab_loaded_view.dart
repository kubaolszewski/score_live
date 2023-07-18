import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/wide_match_tile.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';

class ScoreTabLoadedView extends StatelessWidget {
  const ScoreTabLoadedView({
    super.key,
    required this.matchesByDate,
  });

  final List<LiveMatchModel> matchesByDate;

  @override
  Widget build(BuildContext context) {
    double width = double.infinity;
    const String stringPlaceholder = '';
    final String flag = matchesByDate[0].league?.flag ?? stringPlaceholder;
    final String leagueName = matchesByDate[0].league?.name ?? stringPlaceholder;

    if (matchesByDate.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Text(
            context.localizations.noMatchesAtDate,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 24),
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
            itemCount: matchesByDate.length,
            itemBuilder: (context, index) {
              final match = matchesByDate[index];
              return WideMatchListTile(
                match: match,
              );
            },
          ),
        ),
      ],
    );
  }
}
