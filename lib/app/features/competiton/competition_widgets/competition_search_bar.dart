import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
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
            height: 75,
            child: FloatingSearchBar(
              automaticallyImplyBackButton: false,
              backgroundColor: AppColors.inactiveItemGrey,
              iconColor: Colors.white,
              hint: context.localizations.searchBarHint,
              showCursor: false,
              hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
              queryStyle: const TextStyle(color: Colors.white, fontSize: 14),
              transition: CircularFloatingSearchBarTransition(),
              transitionDuration: const Duration(milliseconds: 800),
              transitionCurve: Curves.easeInOut,
              physics: const BouncingScrollPhysics(),
              onSubmitted: (nameQuery) {
                Modular.to.pushNamed(CompetitionPath.resultsPath, arguments: nameQuery);
              },
              actions: [
                FloatingSearchBarAction(
                  showIfOpened: false,
                  child: CircularButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                FloatingSearchBarAction.searchToClear(
                  showIfClosed: false,
                ),
              ],
              builder: (context, transition) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Material(
                    color: Colors.white,
                    elevation: 4.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: Colors.accents.map((color) {
                        return Container(height: 112, color: color);
                      }).toList(),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
