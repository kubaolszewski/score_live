import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/match_properties_getter_ext.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class TeamsH2HRatioView extends StatelessWidget {
  const TeamsH2HRatioView({
    super.key,
    required this.match,
    required this.amountOfFixtures,
  });

  final LiveMatchModel match;
  final int amountOfFixtures;

  MatchDetailsCubit _matchDetailsCubit(BuildContext context) => context.read<MatchDetailsCubit>();

  @override
  Widget build(BuildContext context) {
    final homeTeamWins = _matchDetailsCubit(context).winsCounter(match.homeTeamId, amountOfFixtures).$1;
    final awayTeamWins = _matchDetailsCubit(context).winsCounter(match.homeTeamId, amountOfFixtures).$2;
    final draws = _matchDetailsCubit(context).winsCounter(match.homeTeamId, amountOfFixtures).$3;
    return Row(
      children: [
        Expanded(
          child: Text(
            context.localizations.matchesNumber,
            style: const CustomTextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.localizations.totalWins,
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CachedNetworkImage(imageUrl: match.homeTeamLogo, width: 20, height: 20),
                  ),
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                          height: 6,
                        ),
                        Container(
                            decoration:
                                BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.mainThemePink),
                            height: 6,
                            width: homeTeamWins / amountOfFixtures * AppConstVariables.h2hRatioBar),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text('$homeTeamWins',
                      textAlign: TextAlign.end,
                      style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CachedNetworkImage(imageUrl: match.awayTeamLogo, width: 20, height: 20),
                  ),
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                          height: 6,
                        ),
                        Container(
                            decoration:
                                BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.statsBarGrey),
                            height: 6,
                            width: awayTeamWins / amountOfFixtures * AppConstVariables.h2hRatioBar),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text('$awayTeamWins',
                      textAlign: TextAlign.end,
                      style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
                ],
              ),
              const SizedBox(height: 12),
              Text('$draws ${context.localizations.draws}',
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
            ],
          ),
        ),
      ],
    );
  }
}
