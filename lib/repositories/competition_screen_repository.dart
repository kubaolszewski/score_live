import 'package:score_live/data/browsing_remote_service.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/models/team_model/team_model.dart';

class CompetitionScreenRepository {
  CompetitionScreenRepository(this.browsingRemoteService);

  final BrowsingRemoteService browsingRemoteService;

  Future<List<TeamModel>> fetchTeamsByName(
    String nameQuery,
  ) async {
    // return (await browsingRemoteService.fetchTeamsByName(name: nameQuery)).response;
    final response = [
      {
        "team": {
          "id": 33,
          "name": "Manchester United",
          "code": "MUN",
          "country": "England",
          "founded": 1878,
          "national": false,
          "logo": "https://media-1.api-sports.io/football/teams/33.png"
        },
        "venue": {
          "id": 556,
          "name": "Old Trafford",
          "address": "Sir Matt Busby Way",
          "city": "Manchester",
          "capacity": 76212,
          "surface": "grass",
          "image": "https://media-1.api-sports.io/football/venues/556.png"
        }
      }
    ];
    return response.map(TeamModel.fromJson).toList();
  }

  Future<List<LeagueModel>> fetchLeagues(String yearFromActualDate) async {
    // return (await browsingRemoteService.fetchLeagues(season: yearFromActualDate))
    //     .response
    //     .where((element) =>
    //         element.league!.id == 39 ||
    //         element.league!.id == 61 ||
    //         element.league!.id == 78 ||
    //         element.league!.id == 94 ||
    //         element.league!.id == 106 ||
    //         element.league!.id == 135 ||
    //         element.league!.id == 140 ||
    //         element.league!.id == 144)
    //     .toList();
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
    return (await browsingRemoteService.fetchLeaguesByName(name: nameQuery, season: yearFromActualDate)).response;
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

  Future<List<LeagueModel>> fetchLeaguesByCountry(String countryQuery, String yearFromActualDate) async {
    // return (await browsingRemoteService.fetchLeaguesByRegion(country: countryQuery, season: yearFromActualDate))
    //     .response;
    final response = [
      {
        "league": {
          "id": 528,
          "name": "Community Shield",
          "type": "Cup",
          "logo": "https://media-2.api-sports.io/football/leagues/528.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-1.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2023,
            "start": "2023-08-06",
            "end": "2023-08-06",
            "current": true,
            "coverage": {
              "fixtures": {
                "events": false,
                "lineups": false,
                "statistics_fixtures": false,
                "statistics_players": false
              },
              "standings": false,
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
      },
      {
        "league": {
          "id": 39,
          "name": "Premier League",
          "type": "League",
          "logo": "https://media-3.api-sports.io/football/leagues/39.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-1.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2023,
            "start": "2023-08-11",
            "end": "2024-05-19",
            "current": true,
            "coverage": {
              "fixtures": {
                "events": false,
                "lineups": false,
                "statistics_fixtures": false,
                "statistics_players": false
              },
              "standings": true,
              "players": true,
              "top_scorers": true,
              "top_assists": true,
              "top_cards": true,
              "injuries": false,
              "predictions": true,
              "odds": false
            }
          }
        ]
      },
      {
        "league": {
          "id": 41,
          "name": "League One",
          "type": "League",
          "logo": "https://media-3.api-sports.io/football/leagues/41.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-3.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2023,
            "start": "2023-08-05",
            "end": "2024-04-27",
            "current": true,
            "coverage": {
              "fixtures": {
                "events": false,
                "lineups": false,
                "statistics_fixtures": false,
                "statistics_players": false
              },
              "standings": true,
              "players": true,
              "top_scorers": true,
              "top_assists": true,
              "top_cards": true,
              "injuries": false,
              "predictions": true,
              "odds": false
            }
          }
        ]
      },
      {
        "league": {
          "id": 42,
          "name": "League Two",
          "type": "League",
          "logo": "https://media-1.api-sports.io/football/leagues/42.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-3.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2023,
            "start": "2023-08-05",
            "end": "2024-04-27",
            "current": true,
            "coverage": {
              "fixtures": {
                "events": false,
                "lineups": false,
                "statistics_fixtures": false,
                "statistics_players": false
              },
              "standings": true,
              "players": true,
              "top_scorers": true,
              "top_assists": true,
              "top_cards": true,
              "injuries": false,
              "predictions": true,
              "odds": false
            }
          }
        ]
      },
      {
        "league": {
          "id": 48,
          "name": "League Cup",
          "type": "Cup",
          "logo": "https://media-3.api-sports.io/football/leagues/48.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-3.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2023,
            "start": "2023-08-08",
            "end": "2023-08-08",
            "current": true,
            "coverage": {
              "fixtures": {
                "events": false,
                "lineups": false,
                "statistics_fixtures": false,
                "statistics_players": false
              },
              "standings": false,
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
      },
      {
        "league": {
          "id": 40,
          "name": "Championship",
          "type": "League",
          "logo": "https://media-3.api-sports.io/football/leagues/40.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-3.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2023,
            "start": "2023-08-04",
            "end": "2024-05-04",
            "current": true,
            "coverage": {
              "fixtures": {
                "events": false,
                "lineups": false,
                "statistics_fixtures": false,
                "statistics_players": false
              },
              "standings": true,
              "players": true,
              "top_scorers": true,
              "top_assists": true,
              "top_cards": true,
              "injuries": false,
              "predictions": true,
              "odds": false
            }
          }
        ]
      },
      {
        "league": {
          "id": 43,
          "name": "National League",
          "type": "League",
          "logo": "https://media-1.api-sports.io/football/leagues/43.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-1.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2023,
            "start": "2023-08-05",
            "end": "2024-04-20",
            "current": true,
            "coverage": {
              "fixtures": {
                "events": false,
                "lineups": false,
                "statistics_fixtures": false,
                "statistics_players": false
              },
              "standings": true,
              "players": true,
              "top_scorers": true,
              "top_assists": true,
              "top_cards": true,
              "injuries": false,
              "predictions": true,
              "odds": false
            }
          }
        ]
      },
      {
        "league": {
          "id": 50,
          "name": "National League - North",
          "type": "League",
          "logo": "https://media-3.api-sports.io/football/leagues/50.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-3.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2023,
            "start": "2023-08-05",
            "end": "2024-04-20",
            "current": true,
            "coverage": {
              "fixtures": {
                "events": false,
                "lineups": false,
                "statistics_fixtures": false,
                "statistics_players": false
              },
              "standings": true,
              "players": true,
              "top_scorers": true,
              "top_assists": true,
              "top_cards": true,
              "injuries": false,
              "predictions": true,
              "odds": false
            }
          }
        ]
      },
      {
        "league": {
          "id": 51,
          "name": "National League - South",
          "type": "League",
          "logo": "https://media-2.api-sports.io/football/leagues/51.png"
        },
        "country": {"name": "England", "code": "GB", "flag": "https://media-1.api-sports.io/flags/gb.svg"},
        "seasons": [
          {
            "year": 2023,
            "start": "2023-08-05",
            "end": "2024-04-20",
            "current": true,
            "coverage": {
              "fixtures": {
                "events": false,
                "lineups": false,
                "statistics_fixtures": false,
                "statistics_players": false
              },
              "standings": true,
              "players": true,
              "top_scorers": true,
              "top_assists": true,
              "top_cards": true,
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
