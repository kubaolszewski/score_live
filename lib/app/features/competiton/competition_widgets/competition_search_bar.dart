import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/competition_module.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class CompetitionSearchBar extends StatelessWidget {
  CompetitionSearchBar({super.key});

  final competitionCubit = Modular.get<CompetitionCubit>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return BlocBuilder<CompetitionCubit, CompetitionState>(
      builder: (context, state) {
        return SafeArea(
          child: SizedBox(
            width: width,
            height: 50,
            child: InkWell(
              onTap: () {
                Modular.to.pushNamed(CompetitionPath.resultsPath);
              },
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.inactiveItemGrey),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    context.localizations.searchBarHint,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
