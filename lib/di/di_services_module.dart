import 'package:flutter_modular/flutter_modular.dart';
import '../data/service/remote/browsing_service/browsing_remote_service.dart';
import '../data/service/remote/live_matches_service/live_matches_remote_service.dart';
import '../data/service/remote/match_details_service/match_details_remote_service.dart';

class DIServicesModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<LiveMatchesRemoteService>(
          (i) => LiveMatchesRemoteService.create(i()),
          export: true,
        ),
        Bind.singleton<BrowsingRemoteService>(
          (i) => BrowsingRemoteService.create(i()),
          export: true,
        ),
        Bind.singleton<MatchDetailsRemoteService>(
          (i) => MatchDetailsRemoteService.create(i()),
          export: true,
        ),
      ];
}
