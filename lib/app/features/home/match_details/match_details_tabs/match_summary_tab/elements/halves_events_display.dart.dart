import 'package:flutter/widgets.dart';
import 'package:score_live/app/custom_widgets/event_text_samples.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/models/match_events_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class FirstHalfEventsDisplay extends StatelessWidget {
  const FirstHalfEventsDisplay({
    super.key,
    required this.liveMatch,
    required this.matchEvents,
  });

  final LiveMatchModel liveMatch;
  final List<MatchEventsModel> matchEvents;

  @override
  Widget build(BuildContext context) {
    const int intPlaceholder = 0;
    final int homeTeamID = liveMatch.teams?.home?.id ?? intPlaceholder;
    final int awayTeamID = liveMatch.teams?.away?.id ?? intPlaceholder;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.listTileGrey,
      ),
      height: 200,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      for (final event in matchEvents) ...[
                        if (event.team?.id != null && event.time?.elapsed != null && event.player?.name != null)
                          if (homeTeamID == event.team?.id && event.time!.elapsed! < 45)
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                              child: HomeEventTextSample(
                                  time: event.time?.elapsed.toString() ?? '', player: event.player?.name ?? ''),
                            )
                          else
                            const SizedBox(height: 0),
                      ]
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      for (final event in matchEvents) ...[
                        if (event.team?.id != null && event.time?.elapsed != null && event.player?.name != null)
                          if (awayTeamID == event.team?.id && event.time!.elapsed! < 45)
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                              child: AwayEventTextSample(
                                  time: event.time?.elapsed.toString() ?? '', player: event.player?.name ?? ''),
                            )
                          else
                            const SizedBox(height: 0),
                      ]
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SecondHalfEventsDisplay extends StatelessWidget {
  const SecondHalfEventsDisplay({
    super.key,
    required this.liveMatch,
    required this.matchEvents,
  });

  final LiveMatchModel liveMatch;
  final List<MatchEventsModel> matchEvents;

  @override
  Widget build(BuildContext context) {
    final int homeTeamID = liveMatch.teams?.home?.id ?? 0;
    final int awayTeamID = liveMatch.teams?.away?.id ?? 0;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.listTileGrey,
      ),
      height: 200,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      for (final event in matchEvents) ...[
                        if (event.team?.id != null && event.time?.elapsed != null && event.player?.name != null)
                          if (homeTeamID == event.team?.id && event.time!.elapsed! > 45)
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                              child: HomeEventTextSample(
                                  time: event.time?.elapsed.toString() ?? '', player: event.player?.name ?? ''),
                            )
                          else
                            const SizedBox(height: 0),
                      ]
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      for (final event in matchEvents) ...[
                        if (event.team?.id != null && event.time?.elapsed != null && event.player?.name != null)
                          if (awayTeamID == event.team?.id && event.time!.elapsed! > 45)
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                              child: AwayEventTextSample(
                                  time: event.time?.elapsed.toString() ?? '', player: event.player?.name ?? ''),
                            )
                          else
                            const SizedBox(height: 0),
                      ]
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
