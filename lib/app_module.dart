import 'package:flutter_modular/flutter_modular.dart';
// import 'package:score_live/app/features/auth/cubit/auth_cubit.dart';
import 'package:score_live/app/features/landing/landing_module.dart';

class AppModule extends Module {
  // @override
  // List<Bind> get binds => [
  //       Bind.singleton(
  //         (i) => AuthPageCubit(),
  //       ),
  //     ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          AppModulePaths.landingModulePath,
          module: LandingModule(),
        ),
      ];
}

mixin AppModulePaths {
  static String landingModulePath = '/';
}
