import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart' hide ModularWatchExtension;
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'package:score_live/app/features/home/home_view.dart';
import 'package:score_live/app/features/home/home_widgets/live_now/cubit/live_now_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => homeCubit),
        BlocProvider(create: (context) => liveNowCubit..fetchLiveMatches()),
        BlocProvider(create: (context) => scoreTabCubit..fetchMatchesByDate(DateTime(2023, 2, 11))),
      ],
      child: const HomeView(),
    );
  }
}

final homeCubit = Modular.get<HomeCubit>();
final liveNowCubit = Modular.get<LiveNowCubit>();
final scoreTabCubit = Modular.get<ScoreTabCubit>();
