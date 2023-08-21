import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details_view.dart';
import 'package:score_live/core/date_formatter_ext.dart';
import 'package:score_live/core/match_properties_getter_ext.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class MatchDetailsScreen extends StatelessWidget {
  const MatchDetailsScreen({
    super.key,
    required this.liveMatch,
  });

  final MatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final teamsIdNumbers = ('${liveMatch.homeTeamId}-${liveMatch.awayTeamId}');
    final matchID = liveMatch.fixture?.id ?? AppConstVariables.intPlaceholder;
    final leagueId = liveMatch.league?.id ?? AppConstVariables.intPlaceholder;
    final yearFromSeason = liveMatch.yearFromSeason.formatDateToYyyyMmDdString('yyyy');
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Modular.get<HomeCubit>()),
        BlocProvider(
          create: (context) => Modular.get<MatchDetailsCubit>()
            ..fetchMatchInfo(
              teamsIdNumbers,
              matchID.toString(),
              leagueId.toString(),
              yearFromSeason,
            ),
        ),
      ],
      child: MatchDetailsView(liveMatch: liveMatch),
    );
  }
}
