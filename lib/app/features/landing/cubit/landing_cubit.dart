import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  LandingCubit() : super(const LandingState());

  void screenSwitch(int newIndex) {
    emit(
      LandingState(
        currentIndex: newIndex,
      ),
    );
  }
}
