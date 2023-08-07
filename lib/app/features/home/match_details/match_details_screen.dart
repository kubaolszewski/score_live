import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details_view.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class MatchDetailsScreen extends StatelessWidget {
  const MatchDetailsScreen({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final int matchID = liveMatch.fixture?.id ?? AppConstVariables.intPlaceholder;
    final String teamsIdNumbers = ('${liveMatch.teams?.home?.id}-${liveMatch.teams?.away?.id}');
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Modular.get<HomeCubit>()),
        BlocProvider(
          create: (context) => Modular.get<MatchDetailsCubit>()
            ..fetchMatchInfo(
              teamsIdNumbers,
              matchID.toString(),
            ),
        ),
      ],
      child: MatchDetailsView(liveMatch: liveMatch),
    );
  }
}
