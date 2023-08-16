import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart' hide ModularWatchExtension;
import 'package:score_live/app/features/competiton/competition_module.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class CompetitionSearchBar extends StatelessWidget {
  CompetitionSearchBar({super.key});

  final TextEditingController searchingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompetitionCubit, CompetitionState>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: SizedBox(
              width: AppConstVariables.widthInfinity,
              height: 40,
              child: TextField(
                style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[850],
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  hintText: context.localizations.searchBarHint,
                  hintStyle: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700),
                ),
                cursorColor: Colors.white,
                controller: searchingController,
                onSubmitted: (nameQuery) {
                  Modular.to.pushNamed(CompetitionPath.searchedTeamsPath, arguments: nameQuery);
                  searchingController.clear();
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
