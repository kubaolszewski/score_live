import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cubit/home_cubit.dart';
import 'home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'home_tabs/upcoming_tab/cubit/upcoming_tab_cubit.dart';
import 'home_view.dart';
import 'home_widgets/live_now/cubit/live_now_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static const path = '/home/';
  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Modular.get<HomeCubit>()),
        BlocProvider(create: (context) => Modular.get<LiveNowCubit>()..fetchLiveMatches()),
        BlocProvider(create: (context) => Modular.get<ScoreTabCubit>()..fetchMatchesByDate(DateTime.now())),
        BlocProvider(create: (context) => Modular.get<UpcomingTabCubit>()..fetchUpcomingMatches(DateTime.now()))
      ],
      child: const HomeView(),
    );
  }
}
