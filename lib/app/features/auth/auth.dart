import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/auth/cubit/auth_cubit.dart';
import 'package:score_live/app/features/auth/login_screen/login_screen.dart';
import 'package:score_live/app/features/landing/landing_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final user = Modular.get<AuthPageCubit>().state.user;
          if (user == null) {
            return const LoginScreen();
          }
          return const LandingScreen();
        },
      ),
    );
  }
}
