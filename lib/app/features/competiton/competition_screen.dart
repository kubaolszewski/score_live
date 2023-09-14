import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'competition_tabs/region_tab/cubit/region_tab_cubit.dart';
import 'competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import 'competition_view.dart';
import 'cubit/competition_cubit.dart';

class CompetitionScreen extends StatelessWidget {
  const CompetitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Modular.get<CompetitionCubit>()),
        BlocProvider(create: (context) => Modular.get<TopResultsTabCubit>()..fetchTopLeagues(DateTime.now())),
        BlocProvider(create: (context) => Modular.get<RegionTabCubit>()..fetchLeaguesByRegion(DateTime.now())),
      ],
      child: const CompetitionView(),
    );
  }
}
