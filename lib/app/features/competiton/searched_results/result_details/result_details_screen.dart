import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../cubit/competition_cubit.dart';
import 'cubit/result_details_cubit.dart';
import 'result_details_view.dart';

import '../../../../common/widgets/search_list_tile.dart';

class ResultDetailsScreen extends StatelessWidget {
  const ResultDetailsScreen({super.key, required this.params});

  final ResultParams params;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Modular.get<CompetitionCubit>()),
        BlocProvider(
          create: (context) => Modular.get<ResultDetailsCubit>()
            ..fetchTabsData(params.resultId.toString())
            ..fetchDataForStatsTab(params.resultId.toString()),
        ),
      ],
      child: ResultDetailsView(params),
    );
  }
}
