import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/models/league_model/league_model.dart';

class CompetitionScreenRepository {
  CompetitionScreenRepository(this.liveMatchesRemoteService);

  final LiveMatchesRemoteService liveMatchesRemoteService;

  Future<List<LeagueModel>> fetchLeagues(String yearFromActualDate) async {
    // return (await liveMatchesRemoteService.fetchLeagues(type: 'league', season: yearFromActualDate)).response;
    final response = [
      {
        "league": {
          "id": 39,
          "name": "Premier League",
          "type": "League",
          "logo": "https://media-2.api-sports.io/football/leagues/39.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-2.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2022,
            "start": "2022-08-05",
            "end": "2023-05-28",
            "current": false,
            "coverage": {
              "fixtures": {"events": true, "lineups": true, "statistics_fixtures": true, "statistics_players": true},
              "standings": true,
              "players": true,
              "top_scorers": true,
              "top_assists": true,
              "top_cards": true,
              "injuries": true,
              "predictions": true,
              "odds": false
            }
          }
        ]
      }
    ];
    return response.map(LeagueModel.fromJson).toList();
  }

  Future<List<LeagueModel>> fetchLeaguesByName(String nameQuery, String yearFromActualDate) async {
    // return (await liveMatchesRemoteService.fetchLeaguesByName(name: nameQuery, season: yearFromActualDate)).response;
    final response = [
      {
        "league": {
          "id": 39,
          "name": "Premier League",
          "type": "League",
          "logo": "https://media-2.api-sports.io/football/leagues/39.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-2.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2022,
            "start": "2022-08-05",
            "end": "2023-05-28",
            "current": false,
            "coverage": {
              "fixtures": {"events": true, "lineups": true, "statistics_fixtures": true, "statistics_players": true},
              "standings": true,
              "players": true,
              "top_scorers": true,
              "top_assists": true,
              "top_cards": true,
              "injuries": true,
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
