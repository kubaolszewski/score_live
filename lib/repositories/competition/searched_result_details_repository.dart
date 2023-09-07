import 'package:score_live/models/standings_model/standings_model.dart';
import 'package:score_live/models/topscorers_model/top_scorers_model.dart';

import '../../models/match_model/match_model.dart';
import '../../service/remote/browsing_service/browsing_remote_service.dart';

class SearchedResultDetailsRepository {
  SearchedResultDetailsRepository(this.browsingRemoteService);

  final BrowsingRemoteService browsingRemoteService;

  Future<List<MatchModel>?> fetchResultsByLeagueId(String leagueId, String yearFromActualDate) async {
    return (await browsingRemoteService.fetchResultsByLeagueId(
            leagueId: leagueId,
            currentRound: await Future.value(fetchCurrentRound(leagueId, yearFromActualDate)),
            season: yearFromActualDate))
        .response;
    return [];
  }

  Future<List<MatchModel>?> fetchFixturesByLeagueId(String leagueId, String yearFromActualDate) async {
    return (await browsingRemoteService.fetchFixturesByLeagueId(
            leagueId: leagueId,
            round: (await Future.value(getLastRound(leagueId, yearFromActualDate))),
            season: yearFromActualDate))
        .response;
    return [];
  }

  Future<List<StandingsModel>> fetchStandings(String leagueId, String yearFromSeason) async {
    return (await browsingRemoteService.fetchStandings(leagueId: leagueId, season: yearFromSeason)).response;
    return [];
  }

  Future<List<TopScorersModel>> fetchTopGoals(String leagueId, String yearFromSeason) async {
    return (await browsingRemoteService.fetchTopGoalsFromLeague(leagueId: leagueId, season: yearFromSeason)).response;
    final response = [
      {
        "player": {
          "id": 1100,
          "name": "E. Haaland",
          "firstname": "Erling",
          "lastname": "Braut Haaland",
          "age": 23,
          "birth": {"date": "2000-07-21", "place": "Leeds", "country": "England"},
          "nationality": "Norway",
          "height": "194 cm",
          "weight": "88 kg",
          "injured": false,
          "photo": "https://media-3.api-sports.io/football/players/1100.png"
        },
        "statistics": [
          {
            "team": {
              "id": 50,
              "name": "Manchester City",
              "logo": "https://media-3.api-sports.io/football/teams/50.png"
            },
            "league": {
              "id": 39,
              "name": "Premier League",
              "country": "England",
              "logo": "https://media-3.api-sports.io/football/leagues/39.png",
              "flag": "https://media-2.api-sports.io/flags/gb.svg",
              "season": 2023
            },
            "games": {
              "appearences": 4,
              "lineups": 4,
              "minutes": 350,
              "number": null,
              "position": "Attacker",
              "rating": "8.175000",
              "captain": false
            },
            "substitutes": {"in": 0, "out": 1, "bench": 0},
            "shots": {"total": 18, "on": 10},
            "goals": {"total": 6, "conceded": 0, "assists": 1, "saves": null},
            "passes": {"total": 39, "key": 6, "accuracy": 6},
            "tackles": {"total": null, "blocks": null, "interceptions": 1},
            "duels": {"total": 21, "won": 7},
            "dribbles": {"attempts": 3, "success": 1, "past": null},
            "fouls": {"drawn": 2, "committed": 4},
            "cards": {"yellow": 0, "yellowred": 0, "red": 0},
            "penalty": {"won": null, "commited": null, "scored": 1, "missed": 1, "saved": null}
          }
        ]
      },
      {
        "player": {
          "id": 129643,
          "name": "E. Ferguson",
          "firstname": "Evan Joe",
          "lastname": "Ferguson",
          "age": 19,
          "birth": {"date": "2004-10-19", "place": null, "country": "Republic of Ireland"},
          "nationality": "Republic of Ireland",
          "height": "183 cm",
          "weight": "78 kg",
          "injured": false,
          "photo": "https://media-2.api-sports.io/football/players/129643.png"
        },
        "statistics": [
          {
            "team": {"id": 51, "name": "Brighton", "logo": "https://media-1.api-sports.io/football/teams/51.png"},
            "league": {
              "id": 39,
              "name": "Premier League",
              "country": "England",
              "logo": "https://media-3.api-sports.io/football/leagues/39.png",
              "flag": "https://media-3.api-sports.io/flags/gb.svg",
              "season": 2023
            },
            "games": {
              "appearences": 4,
              "lineups": 2,
              "minutes": 206,
              "number": null,
              "position": "Attacker",
              "rating": "7.600000",
              "captain": false
            },
            "substitutes": {"in": 2, "out": 1, "bench": 2},
            "shots": {"total": 12, "on": 9},
            "goals": {"total": 4, "conceded": 0, "assists": null, "saves": null},
            "passes": {"total": 48, "key": 1, "accuracy": 11},
            "tackles": {"total": null, "blocks": 1, "interceptions": null},
            "duels": {"total": 24, "won": 11},
            "dribbles": {"attempts": 6, "success": 3, "past": null},
            "fouls": {"drawn": 6, "committed": 5},
            "cards": {"yellow": 0, "yellowred": 0, "red": 0},
            "penalty": {"won": null, "commited": null, "scored": 0, "missed": 0, "saved": null}
          }
        ]
      },
      {
        "player": {
          "id": 20589,
          "name": "B. Mbeumo",
          "firstname": "Bryan Tetsadong Marceau",
          "lastname": "Mbeumo",
          "age": 24,
          "birth": {"date": "1999-08-07", "place": "Avallon", "country": "France"},
          "nationality": "Cameroon",
          "height": "173 cm",
          "weight": "64 kg",
          "injured": false,
          "photo": "https://media-3.api-sports.io/football/players/20589.png"
        },
        "statistics": [
          {
            "team": {"id": 55, "name": "Brentford", "logo": "https://media-1.api-sports.io/football/teams/55.png"},
            "league": {
              "id": 39,
              "name": "Premier League",
              "country": "England",
              "logo": "https://media-1.api-sports.io/football/leagues/39.png",
              "flag": "https://media-1.api-sports.io/flags/gb.svg",
              "season": 2023
            },
            "games": {
              "appearences": 4,
              "lineups": 4,
              "minutes": 360,
              "number": null,
              "position": "Midfielder",
              "rating": "7.325000",
              "captain": false
            },
            "substitutes": {"in": 0, "out": 0, "bench": 0},
            "shots": {"total": 8, "on": 6},
            "goals": {"total": 4, "conceded": 0, "assists": null, "saves": null},
            "passes": {"total": 116, "key": 5, "accuracy": 21},
            "tackles": {"total": 3, "blocks": null, "interceptions": 1},
            "duels": {"total": 48, "won": 12},
            "dribbles": {"attempts": 5, "success": null, "past": null},
            "fouls": {"drawn": 4, "committed": 6},
            "cards": {"yellow": 0, "yellowred": 0, "red": 0},
            "penalty": {"won": null, "commited": null, "scored": 2, "missed": 0, "saved": null}
          }
        ]
      },
      {
        "player": {
          "id": 8598,
          "name": "T. Awoniyi",
          "firstname": "Taiwo Micheal",
          "lastname": "Awoniyi",
          "age": 26,
          "birth": {"date": "1997-08-12", "place": "Ilorin", "country": "Nigeria"},
          "nationality": "Nigeria",
          "height": "183 cm",
          "weight": "84 kg",
          "injured": false,
          "photo": "https://media-1.api-sports.io/football/players/8598.png"
        },
        "statistics": [
          {
            "team": {
              "id": 65,
              "name": "Nottingham Forest",
              "logo": "https://media-3.api-sports.io/football/teams/65.png"
            },
            "league": {
              "id": 39,
              "name": "Premier League",
              "country": "England",
              "logo": "https://media-1.api-sports.io/football/leagues/39.png",
              "flag": "https://media-3.api-sports.io/flags/gb.svg",
              "season": 2023
            },
            "games": {
              "appearences": 4,
              "lineups": 3,
              "minutes": 249,
              "number": null,
              "position": "Attacker",
              "rating": "7.225000",
              "captain": false
            },
            "substitutes": {"in": 1, "out": 3, "bench": 1},
            "shots": {"total": 7, "on": 3},
            "goals": {"total": 3, "conceded": 0, "assists": 1, "saves": null},
            "passes": {"total": 52, "key": 4, "accuracy": 8},
            "tackles": {"total": 1, "blocks": null, "interceptions": null},
            "duels": {"total": 39, "won": 17},
            "dribbles": {"attempts": 5, "success": 4, "past": null},
            "fouls": {"drawn": 3, "committed": 1},
            "cards": {"yellow": 0, "yellowred": 0, "red": 0},
            "penalty": {"won": null, "commited": null, "scored": 0, "missed": 0, "saved": null}
          }
        ]
      },
      {
        "player": {
          "id": 19428,
          "name": "J. Bowen",
          "firstname": "Jarrod",
          "lastname": "Bowen",
          "age": 27,
          "birth": {"date": "1996-12-20", "place": "Leominster", "country": "England"},
          "nationality": "England",
          "height": "175 cm",
          "weight": "70 kg",
          "injured": false,
          "photo": "https://media-2.api-sports.io/football/players/19428.png"
        },
        "statistics": [
          {
            "team": {"id": 48, "name": "West Ham", "logo": "https://media-1.api-sports.io/football/teams/48.png"},
            "league": {
              "id": 39,
              "name": "Premier League",
              "country": "England",
              "logo": "https://media-1.api-sports.io/football/leagues/39.png",
              "flag": "https://media-3.api-sports.io/flags/gb.svg",
              "season": 2023
            },
            "games": {
              "appearences": 4,
              "lineups": 4,
              "minutes": 360,
              "number": null,
              "position": "Attacker",
              "rating": "7.475000",
              "captain": false
            },
            "substitutes": {"in": 0, "out": 0, "bench": 0},
            "shots": {"total": 10, "on": 6},
            "goals": {"total": 3, "conceded": 0, "assists": 1, "saves": null},
            "passes": {"total": 82, "key": 4, "accuracy": 14},
            "tackles": {"total": 5, "blocks": null, "interceptions": 2},
            "duels": {"total": 54, "won": 25},
            "dribbles": {"attempts": 14, "success": 8, "past": null},
            "fouls": {"drawn": 3, "committed": 3},
            "cards": {"yellow": 1, "yellowred": 0, "red": 0},
            "penalty": {"won": null, "commited": null, "scored": 0, "missed": 0, "saved": null}
          }
        ]
      },
    ];
    return response.map(TopScorersModel.fromJson).toList();
  }

  Future<String> fetchCurrentRound(String leagueId, String yearFromActualDate) async {
    return (await browsingRemoteService.getCurrentRound(leagueId: leagueId, season: yearFromActualDate)).response.first;
  }

  Future<List<String>> fetchAllRounds(String leagueId, String yearFromActualDate) async {
    return (await browsingRemoteService.getAllRounds(leagueId: leagueId, season: yearFromActualDate)).response;
  }

  Future<String> getLastRound(String leagueId, String yearFromActualDate) async {
    final currentRound =
        (await browsingRemoteService.getCurrentRound(leagueId: leagueId, season: yearFromActualDate)).response.first;
    final allRounds =
        (await browsingRemoteService.getAllRounds(leagueId: leagueId, season: yearFromActualDate)).response;
    final lastRound = allRounds[allRounds.indexOf(currentRound) - 1];
    return lastRound;
  }
}
