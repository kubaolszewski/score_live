import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app/features/landing/landing_module.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(LandingScreenPaths.homeModulePath);
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      title: 'scorelive',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Mulish',
      ),
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
