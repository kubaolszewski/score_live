import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';

class MatchDetailsTabBar extends StatelessWidget {
  MatchDetailsTabBar({super.key});

  final matchDetailsCubit = Modular.get<MatchDetailsCubit>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              matchDetailsCubit.switchDetailsOptions(DetailsOptions.summary);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: Colors.pink,
              ))),
              child: Text(
                context.localizations.matchDetailsSummary,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 30),
          GestureDetector(
            onTap: () {
              matchDetailsCubit.switchDetailsOptions(DetailsOptions.lineUp);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: Colors.pink,
              ))),
              child: Text(
                context.localizations.matchDetailsLineUp,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 30),
          GestureDetector(
            onTap: () {
              matchDetailsCubit.switchDetailsOptions(DetailsOptions.stats);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: Colors.pink,
              ))),
              child: Text(
                context.localizations.matchDetailsStats,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 30),
          GestureDetector(
            onTap: () {
              matchDetailsCubit.switchDetailsOptions(DetailsOptions.h2H);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: Colors.pink,
              ))),
              child: Text(
                context.localizations.matchDetailsH2H,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 30),
          GestureDetector(
            onTap: () {
              matchDetailsCubit.switchDetailsOptions(DetailsOptions.standings);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: Colors.pink,
              ))),
              child: Text(
                context.localizations.matchDetailsStandings,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
