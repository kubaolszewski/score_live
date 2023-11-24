import 'package:flutter_modular/flutter_modular.dart';
import '../../data/data_module.dart';
import 'account_screen.dart';
import 'cubit/account_cubit.dart';

class AccountModule extends Module {
  @override
  List<Module> imports = [
    DataModule(),
  ];

  @override
  void binds(Injector i) {
    i.addSingleton<AccountCubit>(AccountCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: ((context) => const AccountScreen()),
    );
  }
}
