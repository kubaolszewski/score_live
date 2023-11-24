import 'package:flutter_modular/flutter_modular.dart';
import '../../../data/data_module.dart';
import 'cubit/match_details_cubit.dart';
import 'match_details_screen.dart';

class MatchDetailsModule extends Module {
  @override
  List<Module> imports = [
    DataModule(),
  ];

  @override
  void binds(Injector i) {
    i.addSingleton<MatchDetailsCubit>(MatchDetailsCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => MatchDetailsScreen(liveMatch: r.args.data),
    );
  }
}
