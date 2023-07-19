import 'package:flutter/widgets.dart';
import 'package:score_live/app/custom_widgets/event_text_sample.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class HalvesEventsDisplay extends StatelessWidget {
  const HalvesEventsDisplay({super.key, required this.liveMatch, required this.matchEvents, required this.isHalfTime});

  final LiveMatchModel liveMatch;
  final List<MatchEventsModel> matchEvents;
  final bool isHalfTime;

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
                      if (isHalfTime == true)
                        for (final event in matchEvents) ...[
                          if (event.team?.id != null && event.time?.elapsed != null && event.player?.name != null)
                            if (homeTeamID == event.team?.id && event.time!.elapsed! < 45)
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                                child: EventTextSample(
                                    time: event.time?.elapsed.toString() ?? '',
                                    player: event.player?.name ?? '',
                                    isHomeTeam: true),
                              )
                            else
                              const SizedBox.shrink(),
                        ]
                      else
                        for (final event in matchEvents) ...[
                          if (event.team?.id != null && event.time?.elapsed != null && event.player?.name != null)
                            if (homeTeamID == event.team?.id && event.time!.elapsed! > 45)
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                                child: EventTextSample(
                                    time: event.time?.elapsed.toString() ?? '',
                                    player: event.player?.name ?? '',
                                    isHomeTeam: true),
                              )
                            else
                              const SizedBox.shrink(),
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
                      if (isHalfTime == true)
                        for (final event in matchEvents) ...[
                          if (event.team?.id != null && event.time?.elapsed != null && event.player?.name != null)
                            if (awayTeamID == event.team?.id && event.time!.elapsed! < 45)
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                                child: EventTextSample(
                                    time: event.time?.elapsed.toString() ?? '',
                                    player: event.player?.name ?? '',
                                    isHomeTeam: false),
                              )
                            else
                              const SizedBox.shrink(),
                        ]
                      else
                        for (final event in matchEvents) ...[
                          if (event.team?.id != null && event.time?.elapsed != null && event.player?.name != null)
                            if (awayTeamID == event.team?.id && event.time!.elapsed! > 45)
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                                child: EventTextSample(
                                    time: event.time?.elapsed.toString() ?? '',
                                    player: event.player?.name ?? '',
                                    isHomeTeam: false),
                              )
                            else
                              const SizedBox.shrink(),
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
