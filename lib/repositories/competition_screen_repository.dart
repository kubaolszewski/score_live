import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/models/league_model/league_model.dart';

class CompetitionScreenRepository {
  CompetitionScreenRepository(this.liveMatchesRemoteService);

  final LiveMatchesRemoteService liveMatchesRemoteService;

  Future<List<LeagueModel>> fetchLeagues() async {
    // return (await liveMatchesRemoteService.fetchLeagues(type: 'league', season: '2023', last: '1')).response;
    final response = [
      {
        "league": {
          "id": 1020,
          "name": "Calcutta Premier Division",
          "type": "League",
          "logo": "https://media-3.api-sports.io/football/leagues/1020.png"
        },
        "country": {"name": "India", "code": "IN", "flag": "https://media-1.api-sports.io/flags/in.svg"},
        "seasons": [
          {
            "year": 2023,
            "start": "2023-06-25",
            "end": "2023-07-31",
            "current": true,
            "coverage": {
              "fixtures": {
                "events": false,
                "lineups": false,
                "statistics_fixtures": false,
                "statistics_players": false
              },
              "standings": true,
              "players": false,
              "top_scorers": false,
              "top_assists": false,
              "top_cards": false,
              "injuries": false,
              "predictions": true,
              "odds": false
            }
          }
        ]
      }
    ];
    return response.map(LeagueModel.fromJson).toList();
  }
}
