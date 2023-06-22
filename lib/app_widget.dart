import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/landing/landing_module.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(LandingPagePaths.homeModulePath);
    return MaterialApp.router(
      title: 'ScoreLive',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
