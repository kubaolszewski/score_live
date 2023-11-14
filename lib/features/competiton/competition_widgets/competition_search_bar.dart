import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart' hide ModularWatchExtension;
import '../../../common/extensions/context/dimensions_context.dart';
import '../../../common/extensions/navigation/navigation_on_string_ext.dart';
import '../cubit/competition_cubit.dart';
import '../../../../common/extensions/context/applocalization_context.dart';
import '../../../../common/extensions/enums.dart';
import '../../../common/theme/custom_text_style.dart';
import '../searched_results/searched_leagues/searched_leagues_screen.dart';
import '../searched_results/searched_teams/searched_teams_screen.dart';
import 'search_bar_dropdown_button.dart';

class CompetitionSearchBar extends StatelessWidget {
  CompetitionSearchBar({super.key});

  final TextEditingController searchingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompetitionCubit, CompetitionState>(
      builder: (context, state) {
        SearchTypes dropdownValue = state.searchTypes;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: SizedBox(
            width: context.mediaQueryWidth,
            height: 40,
            child: TextField(
              onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
              style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[850],
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                suffixIcon: SearchBarDropdownButton(dropdownValue: dropdownValue),
                hintText: context.localizations.searchBarHint,
                hintStyle: CustomTextStyle(fontSize: 14, color: Colors.grey[400]!, fontWeight: FontWeight.w700),
              ),
              cursorColor: Colors.white,
              controller: searchingController,
              onSubmitted: (nameQuery) {
                switch (dropdownValue) {
                  case SearchTypes.team:
                    Modular.to.pushNamed(SearchedTeamsScreen.path.relativePath, arguments: nameQuery);
                  case SearchTypes.league:
                    Modular.to.pushNamed(SearchedLeaguesScreen.path.relativePath, arguments: nameQuery);
                }
                searchingController.clear();
              },
            ),
          ),
        );
      },
    );
  }
}
