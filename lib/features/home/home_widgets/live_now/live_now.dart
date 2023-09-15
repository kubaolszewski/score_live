import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/live_now_cubit.dart';
import 'live_now_views/live_now_error_view.dart';
import 'live_now_views/live_now_loaded_view.dart';
import 'live_now_views/live_now_loading_view.dart';

class LiveNow extends StatelessWidget {
  const LiveNow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveNowCubit, LiveNowState>(
      builder: (context, state) => state.when(
        matchesLoaded: (matches) => LiveNowLoadedView(liveMatches: matches),
        loadingMatchesState: () => const LiveNowLoadingView(),
        errorMatchesState: (errorMessage) => LiveNowErrorView(errorMessage: errorMessage),
      ),
    );
  }
}
