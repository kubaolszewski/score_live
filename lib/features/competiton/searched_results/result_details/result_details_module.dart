import 'package:flutter_modular/flutter_modular.dart';
import '../../../../data/data_module.dart';
import 'result_details_screen.dart';

import 'cubit/result_details_cubit.dart';

class ResultDetailsModule extends Module {
  @override
  List<Module> imports = [
    DataModule(),
  ];

  @override
  void binds(Injector i) {
    i.addSingleton<ResultDetailsCubit>(ResultDetailsCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      ResultDetailsScreen.path,
      child: (context) => ResultDetailsScreen(params: r.args.data),
    );
  }
}
