import 'package:flutter_modular/flutter_modular.dart';
import '../data/network/api.client.dart';

class DINetworkModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<ApiClient>(
          (i) => ApiClient(),
          export: true,
        ),
      ];
}
