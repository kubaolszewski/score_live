import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/app/features/competiton/searched_results/result_details/cubit/result_details_cubit.dart';
import 'package:score_live/app/features/competiton/searched_results/result_details/result_details_view.dart';

class ResultDetailsScreen extends StatelessWidget {
  const ResultDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Modular.get<CompetitionCubit>()),
        BlocProvider(create: (context) => Modular.get<ResultDetailsCubit>()),
      ],
      child: const ResultDetailsView(),
    );
  }
}
