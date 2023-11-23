import 'package:flutter/material.dart';
import 'landing_view.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    super.key,
  });

  static const path = '/landing/';

  @override
  Widget build(BuildContext context) {
    return const LandingView();
  }
}
