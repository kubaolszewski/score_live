import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:score_live/app/auth/login_screen/login_screen.dart';
import 'package:score_live/app/landing_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final user = FirebaseAuth.instance.currentUser;
          if (user == null) {
            return const LoginScreen();
          }
          return LandingPage(user: user);
        },
      ),
    );
  }
}
