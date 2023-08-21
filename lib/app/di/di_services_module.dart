import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/data/browsing_remote_service.dart';
import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/data/match_details_remote_service.dart';

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
