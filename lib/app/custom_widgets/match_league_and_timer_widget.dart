
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchLeagueInfoAndTimerWidget extends StatelessWidget {
  const MatchLeagueInfoAndTimerWidget({
    super.key,
    required this.flag,
    required this.leagueName,
    required this.liveMatch,
  });

  final String flag;
  final String leagueName;
  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
              style: const TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Container(
          height: 30,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: AppColors.liveTimerBackground,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: liveMatch.fixture!.status!.short! == 'TBD' ||
                        liveMatch.fixture!.status!.short! == 'NS' ||
                        liveMatch.fixture!.status!.short! == 'SUSP'
                    ? Colors.red
                    : Colors.green,
              ),
              Text(
                liveMatch.fixture!.status!.short!,
                style: TextStyle(
                    color: liveMatch.fixture!.status!.short! == 'TBD' ||
                            liveMatch.fixture!.status!.short! == 'NS' ||
                            liveMatch.fixture!.status!.short! == 'SUSP'
                        ? Colors.black
                        : Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}