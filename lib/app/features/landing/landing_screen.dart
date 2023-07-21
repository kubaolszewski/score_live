import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/landing/cubit/landing_cubit.dart';
import 'package:score_live/app/features/landing/landing_module.dart';
import 'package:score_live/app/features/landing/landing_view.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    super.key,
  });

  void _landingScreenListener(BuildContext context, LandingState state) {
    switch (state.currentIndex) {
      case 0:
        Modular.to.pushNamed(LandingScreenPaths.homeModulePath);
      case 1:
        Modular.to.pushNamed(LandingScreenPaths.competitionModulePath);
      case 2:
        Modular.to.pushNamed(LandingScreenPaths.accountModulePath);
      default:
        Modular.to.pushNamed(LandingScreenPaths.homeModulePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<LandingCubit>(),
      child: BlocListener<LandingCubit, LandingState>(
        listener: _landingScreenListener,
        child: const LandingView(),
      ),
    );
  }
}
