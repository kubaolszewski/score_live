import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/service/api.client.dart';

class DINetworkModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<ApiClient>(
          (i) => ApiClient(),
          export: true,
        ),
      ];
}
