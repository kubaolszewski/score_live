
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common/widgets/custom_app_bar.dart';
import 'competition_tabs/favorites_tab/favorites_tab.dart';
import 'competition_tabs/region_tab/region_tab.dart';
import 'competition_tabs/top_results_tab/top_results_tab.dart';
import 'competition_widgets/competition_options_tap_bar.dart';
import 'competition_widgets/competition_search_bar.dart';
import 'cubit/competition_cubit.dart';
import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/extensions/enums.dart';
import '../../common/constants/app_colors.dart';
import '../../common/constants/text_styles.dart';

class CompetitionView extends StatelessWidget {
  const CompetitionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
        title: Text(
          context.localizations.competitionAppBarTitle,
          style: CommonTextStyles.basicWhiteTextWithWeight,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CompetitionSearchBar(),
            const SizedBox(height: 15),
            const CompetitionOptionsTapBar(),
            BlocBuilder<CompetitionCubit, CompetitionState>(
              builder: (context, state) {
                switch (state.browsingOptions) {
                  case BrowsingOptions.top:
                    return const TopResultsTab();
                  case BrowsingOptions.region:
                    return const RegionTab();
                  case BrowsingOptions.favorites:
                    return const FavoritesTab();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}