import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details_view.dart';
import 'package:score_live/models/live_match_model.dart';

class MatchDetailsScreen extends StatelessWidget {
  MatchDetailsScreen({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;
  final homeCubit = Modular.get<HomeCubit>();
  final matchDetailsCubit = Modular.get<MatchDetailsCubit>();

  @override
  Widget build(BuildContext context) {
    const int intPlaceholder = 0;
    final int teamID = liveMatch.fixture?.id ?? intPlaceholder;
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(create: (context) => homeCubit),
        BlocProvider(create: (context) => matchDetailsCubit..fetchMatchEvents(teamID.toString())),
      ],
      child: MatchDetailsView(liveMatch: liveMatch),
    );
  }
}
