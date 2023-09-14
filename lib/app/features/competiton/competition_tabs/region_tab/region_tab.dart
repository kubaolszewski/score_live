import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/region_tab_cubit.dart';
import 'region_tab_views/region_tab_error_view.dart';
import 'region_tab_views/region_tab_loaded_view.dart';
import 'region_tab_views/region_tab_loading_view.dart';

class RegionTab extends StatelessWidget {
  const RegionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegionTabCubit, RegionTabState>(
      builder: (context, state) {
        return state.when(
            loadedLeagues: (leaguesbyRegion) => RegionTabLoadedView(leaguesbyRegion: leaguesbyRegion),
            loadingLeagues: () => const RegionTabLoadingView(),
            errorLeaguesState: (errorMessage) => RegionTabErrorView(errorMessage: errorMessage));
      },
    );
  }
}
