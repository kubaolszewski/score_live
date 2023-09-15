import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../cubit/home_cubit.dart';
import 'cubit/match_details_cubit.dart';
import 'match_details_view.dart';
import '../../../../common/extensions/date/date_formatter_ext.dart';
import '../../../../common/extensions/match/match_properties_getter_ext.dart';
import '../../../data/models/match_model/match_model.dart';

class MatchDetailsScreen extends StatelessWidget {
  const MatchDetailsScreen({
    super.key,
    required this.liveMatch,
  });

  final MatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final teamsIdNumbers = ('${liveMatch.homeTeamId}-${liveMatch.awayTeamId}');
    final matchId = liveMatch.matchId;
    final leagueId = liveMatch.leagueId;
    final yearFromSeason = liveMatch.yearFromSeason.formatDateToYyyyMmDdString('yyyy');

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Modular.get<HomeCubit>()),
        BlocProvider(
          create: (context) => Modular.get<MatchDetailsCubit>()
            ..fetchMatchInfo(
              teamsIdNumbers,
              matchId.toString(),
              leagueId.toString(),
              yearFromSeason,
            ),
        ),
      ],
      child: MatchDetailsView(liveMatch: liveMatch),
    );
  }
}
