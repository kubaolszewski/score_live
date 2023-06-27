import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/account/account.dart';

class AccountModule extends Module {
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
