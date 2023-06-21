import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/account/account.dart';

class AccountModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AccountPagePath.path,
          child: ((context, args) => const AccountPage()),
        ),
      ];
}

mixin AccountPagePath {
  static String path = '/account';
}
