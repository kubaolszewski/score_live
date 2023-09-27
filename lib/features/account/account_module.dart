import 'package:flutter_modular/flutter_modular.dart';
import 'account_screen.dart';
import 'cubit/account_cubit.dart';

class AccountModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => AccountCubit(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AccountPath.path,
          child: ((context, args) => const AccountScreen()),
        ),
      ];
}

mixin AccountPath {
  static String path = '/account';
}
