import '../../service/remote/match_details_service/match_details_remote_service.dart';
import '../../models/line_up_model/line_up_model.dart';
import '../../models/match_model/match_model.dart';
import '../../models/match_events_model/match_events_model.dart';
import '../../models/standings_model/standings_model.dart';
import '../../models/statistics_model/statistics_model.dart';

class MatchDetailsRepository {
  MatchDetailsRepository(this.matchDetailsRemoteService);

  final MatchDetailsRemoteService matchDetailsRemoteService;

  Future<List<MatchEventsModel>> fetchMatchEvents(String matchID) async {
    // commented on purpose
    // return (await matchDetailsRemoteService.fetchMatchEvents(matchID: matchID)).response;
    final response = [
      {
        "time": {"elapsed": 4, "extra": null},
        "team": {"id": 50, "name": "Manchester City", "logo": "https://media-3.api-sports.io/football/teams/50.png"},
        "player": {"id": 44, "name": "Rodri"},
        "assist": {"id": 635, "name": "R. Mahrez"},
        "type": "Goal",
        "detail": "Normal Goal",
        "comments": null
      },
      {
        "time": {"elapsed": 21, "extra": null},
        "team": {"id": 50, "name": "Manchester City", "logo": "https://media-1.api-sports.io/football/teams/50.png"},
        "player": {"id": 19187, "name": "Jack Grealish"},
        "assist": {"id": null, "name": null},
        "type": "Var",
        "detail": "Penalty cancelled",
        "comments": null
      },
      {
        "time": {"elapsed": 37, "extra": null},
        "team": {"id": 66, "name": "Aston Villa", "logo": "https://media-2.api-sports.io/football/teams/66.png"},
        "player": {"id": 2724, "name": "Lucas Digne"},
        "assist": {"id": null, "name": null},
        "type": "Card",
        "detail": "Yellow Card",
        "comments": "Persistent fouling"
      },
      {
        "time": {"elapsed": 39, "extra": null},
        "team": {"id": 50, "name": "Manchester City", "logo": "https://media-2.api-sports.io/football/teams/50.png"},
        "player": {"id": 633, "name": "İ. Gündoğan"},
        "assist": {"id": 1100, "name": "E. Haaland"},
        "type": "Goal",
        "detail": "Normal Goal",
        "comments": null
      },
      {
        "time": {"elapsed": 41, "extra": null},
        "team": {"id": 50, "name": "Manchester City", "logo": "https://media-1.api-sports.io/football/teams/50.png"},
        "player": {"id": 567, "name": "Rúben Dias"},
        "assist": {"id": null, "name": null},
        "type": "Card",
        "detail": "Yellow Card",
        "comments": "Argument"
      },
      {
        "time": {"elapsed": 45, "extra": 1},
        "team": {"id": 50, "name": "Manchester City", "logo": "https://media-2.api-sports.io/football/teams/50.png"},
        "player": {"id": 635, "name": "R. Mahrez"},
        "assist": {"id": null, "name": null},
        "type": "Goal",
        "detail": "Penalty",
        "comments": null
      },
      {
        "time": {"elapsed": 46, "extra": null},
        "team": {"id": 50, "name": "Manchester City", "logo": "https://media-1.api-sports.io/football/teams/50.png"},
        "player": {"id": 567, "name": "Rúben Dias"},
        "assist": {"id": 5, "name": "M. Akanji"},
        "type": "subst",
        "detail": "Substitution 1",
        "comments": null
      },
      {
        "time": {"elapsed": 46, "extra": null},
        "team": {"id": 50, "name": "Manchester City", "logo": "https://media-2.api-sports.io/football/teams/50.png"},
        "player": {"id": 1100, "name": "E. Haaland"},
        "assist": {"id": 6009, "name": "J. Álvarez"},
        "type": "subst",
        "detail": "Substitution 2",
        "comments": null
      },
      {
        "time": {"elapsed": 60, "extra": null},
        "team": {"id": 66, "name": "Aston Villa", "logo": "https://media-3.api-sports.io/football/teams/66.png"},
        "player": {"id": 19071, "name": "E. Buendía"},
        "assist": {"id": 19191, "name": "J.  McGinn"},
        "type": "subst",
        "detail": "Substitution 1",
        "comments": null
      },
      {
        "time": {"elapsed": 60, "extra": null},
        "team": {"id": 66, "name": "Aston Villa", "logo": "https://media-1.api-sports.io/football/teams/66.png"},
        "player": {"id": 2724, "name": "L. Digne"},
        "assist": {"id": 13489, "name": "J. Durán"},
        "type": "subst",
        "detail": "Substitution 2",
        "comments": null
      },
      {
        "time": {"elapsed": 60, "extra": null},
        "team": {"id": 66, "name": "Aston Villa", "logo": "https://media-2.api-sports.io/football/teams/66.png"},
        "player": {"id": 983, "name": "L. Bailey"},
        "assist": {"id": 47547, "name": "Álex Moreno"},
        "type": "subst",
        "detail": "Substitution 3",
        "comments": null
      },
      {
        "time": {"elapsed": 61, "extra": null},
        "team": {"id": 66, "name": "Aston Villa", "logo": "https://media-2.api-sports.io/football/teams/66.png"},
        "player": {"id": 19366, "name": "O. Watkins"},
        "assist": {"id": 47522, "name": "Douglas Luiz"},
        "type": "Goal",
        "detail": "Normal Goal",
        "comments": null
      },
      {
        "time": {"elapsed": 63, "extra": null},
        "team": {"id": 66, "name": "Aston Villa", "logo": "https://media-1.api-sports.io/football/teams/66.png"},
        "player": {"id": 19354, "name": "Ezri Konsa"},
        "assist": {"id": null, "name": null},
        "type": "Card",
        "detail": "Yellow Card",
        "comments": "Foul"
      },
      {
        "time": {"elapsed": 69, "extra": null},
        "team": {"id": 50, "name": "Manchester City", "logo": "https://media-1.api-sports.io/football/teams/50.png"},
        "player": {"id": 19187, "name": "J. Grealish"},
        "assist": {"id": 631, "name": "P. Foden"},
        "type": "subst",
        "detail": "Substitution 3",
        "comments": null
      },
      {
        "time": {"elapsed": 76, "extra": null},
        "team": {"id": 66, "name": "Aston Villa", "logo": "https://media-3.api-sports.io/football/teams/66.png"},
        "player": {"id": 19192, "name": "J. Ramsey"},
        "assist": {"id": 19298, "name": "M. Cash"},
        "type": "subst",
        "detail": "Substitution 4",
        "comments": null
      },
      {
        "time": {"elapsed": 76, "extra": null},
        "team": {"id": 66, "name": "Aston Villa", "logo": "https://media-3.api-sports.io/football/teams/66.png"},
        "player": {"id": 894, "name": "A. Young"},
        "assist": {"id": 147, "name": "Philippe Coutinho"},
        "type": "subst",
        "detail": "Substitution 5",
        "comments": null
      },
      {
        "time": {"elapsed": 85, "extra": null},
        "team": {"id": 50, "name": "Manchester City", "logo": "https://media-3.api-sports.io/football/teams/50.png"},
        "player": {"id": 635, "name": "R. Mahrez"},
        "assist": {"id": 18861, "name": "N. Aké"},
        "type": "subst",
        "detail": "Substitution 4",
        "comments": null
      }
    ];
    return response.map(MatchEventsModel.fromJson).toList();
  }

  Future<List<LineUpModel>> fetchMatchLineUps(String matchID) async {
    // commented on purpose
    // return (await matchDetailsRemoteService.fetchMatchLineUps(matchID: matchID)).response;
    final response = [
      {
        "team": {
          "id": 50,
          "name": "Manchester City",
          "logo": "https://media-1.api-sports.io/football/teams/50.png",
          "colors": {
            "player": {"primary": "5badff", "number": "ffffff", "border": "99ff99"},
            "goalkeeper": {"primary": "99ff99", "number": "000000", "border": "99ff99"}
          }
        },
        "formation": "4-3-3",
        "startXI": [
          {
            "player": {"id": 617, "name": "Ederson", "number": 31, "pos": "G", "grid": "1:1"}
          },
          {
            "player": {"id": 627, "name": "Kyle Walker", "number": 2, "pos": "D", "grid": "2:4"}
          },
          {
            "player": {"id": 626, "name": "John Stones", "number": 5, "pos": "D", "grid": "2:3"}
          },
          {
            "player": {"id": 567, "name": "Rúben Dias", "number": 3, "pos": "D", "grid": "2:2"}
          },
          {
            "player": {"id": 641, "name": "Oleksandr Zinchenko", "number": 11, "pos": "D", "grid": "2:1"}
          },
          {
            "player": {"id": 629, "name": "Kevin De Bruyne", "number": 17, "pos": "M", "grid": "3:3"}
          },
          {
            "player": {"id": 640, "name": "Fernandinho", "number": 25, "pos": "M", "grid": "3:2"}
          },
          {
            "player": {"id": 631, "name": "Phil Foden", "number": 47, "pos": "M", "grid": "3:1"}
          },
          {
            "player": {"id": 635, "name": "Riyad Mahrez", "number": 26, "pos": "F", "grid": "4:3"}
          },
          {
            "player": {"id": 643, "name": "Gabriel Jesus", "number": 9, "pos": "F", "grid": "4:2"}
          },
          {
            "player": {"id": 645, "name": "Raheem Sterling", "number": 7, "pos": "F", "grid": "4:1"}
          }
        ],
        "substitutes": [
          {
            "player": {"id": 50828, "name": "Zack Steffen", "number": 13, "pos": "G", "grid": null}
          },
          {
            "player": {"id": 623, "name": "Benjamin Mendy", "number": 22, "pos": "D", "grid": null}
          },
          {
            "player": {"id": 18861, "name": "Nathan Aké", "number": 6, "pos": "D", "grid": null}
          },
          {
            "player": {"id": 622, "name": "Aymeric Laporte", "number": 14, "pos": "D", "grid": null}
          },
          {
            "player": {"id": 633, "name": "İlkay Gündoğan", "number": 8, "pos": "M", "grid": null}
          },
          {
            "player": {"id": 44, "name": "Rodri", "number": 16, "pos": "M", "grid": null}
          },
          {
            "player": {"id": 931, "name": "Ferrán Torres", "number": 21, "pos": "F", "grid": null}
          },
          {
            "player": {"id": 636, "name": "Bernardo Silva", "number": 20, "pos": "M", "grid": null}
          },
          {
            "player": {"id": 642, "name": "Sergio Agüero", "number": 10, "pos": "F", "grid": null}
          }
        ],
        "coach": {"id": 4, "name": "Guardiola", "photo": "https://media-2.api-sports.io/football/coachs/4.png"}
      },
      {
        "team": {
          "id": 45,
          "name": "Everton",
          "logo": "https://media-1.api-sports.io/football/teams/45.png",
          "colors": {
            "player": {"primary": "070707", "number": "ffffff", "border": "66ff00"},
            "goalkeeper": {"primary": "66ff00", "number": "000000", "border": "66ff00"}
          }
        },
        "formation": "4-3-1-2",
        "startXI": [
          {
            "player": {"id": 2932, "name": "Jordan Pickford", "number": 1, "pos": "G", "grid": "1:1"}
          },
          {
            "player": {"id": 19150, "name": "Mason Holgate", "number": 4, "pos": "D", "grid": "2:4"}
          },
          {
            "player": {"id": 2934, "name": "Michael Keane", "number": 5, "pos": "D", "grid": "2:3"}
          },
          {
            "player": {"id": 19073, "name": "Ben Godfrey", "number": 22, "pos": "D", "grid": "2:2"}
          },
          {
            "player": {"id": 2724, "name": "Lucas Digne", "number": 12, "pos": "D", "grid": "2:1"}
          },
          {
            "player": {"id": 18805, "name": "Abdoulaye Doucouré", "number": 16, "pos": "M", "grid": "3:3"}
          },
          {
            "player": {"id": 326, "name": "Allan", "number": 6, "pos": "M", "grid": "3:2"}
          },
          {
            "player": {"id": 18762, "name": "Tom Davies", "number": 26, "pos": "M", "grid": "3:1"}
          },
          {
            "player": {"id": 2795, "name": "Gylfi Sigurðsson", "number": 10, "pos": "M", "grid": "4:1"}
          },
          {
            "player": {"id": 18766, "name": "Dominic Calvert-Lewin", "number": 9, "pos": "F", "grid": "5:2"}
          },
          {
            "player": {"id": 2413, "name": "Richarlison", "number": 7, "pos": "F", "grid": "5:1"}
          }
        ],
        "substitutes": [
          {
            "player": {"id": 18755, "name": "João Virgínia", "number": 31, "pos": "G", "grid": null}
          },
          {
            "player": {"id": 766, "name": "Robin Olsen", "number": 33, "pos": "G", "grid": null}
          },
          {
            "player": {"id": 156490, "name": "Niels Nkounkou", "number": 18, "pos": "D", "grid": null}
          },
          {
            "player": {"id": 18758, "name": "Séamus Coleman", "number": 23, "pos": "D", "grid": null}
          },
          {
            "player": {"id": 138849, "name": "Kyle John", "number": 48, "pos": "D", "grid": null}
          },
          {
            "player": {"id": 18765, "name": "André Gomes", "number": 21, "pos": "M", "grid": null}
          },
          {
            "player": {"id": 1455, "name": "Alex Iwobi", "number": 17, "pos": "F", "grid": null}
          },
          {
            "player": {"id": 18761, "name": "Bernard", "number": 20, "pos": "F", "grid": null}
          }
        ],
        "coach": {"id": 2407, "name": "C. Ancelotti", "photo": "https://media-3.api-sports.io/football/coachs/2407.png"}
      }
    ];
    return response.map(LineUpModel.fromJson).toList();
  }

  Future<List<StatisticsModel>> fetchMatchStats(String matchID) async {
    // commented on purpose
    // return (await matchDetailsRemoteService.fetchMatchStats(matchID: matchID)).response;
    final response = [
      {
        "team": {"id": 33, "name": "Manchester United", "logo": "https://media-1.api-sports.io/football/teams/33.png"},
        "statistics": [
          {"type": "Shots on Goal", "value": 8},
          {"type": "Shots off Goal", "value": 5},
          {"type": "Total Shots", "value": 16},
          {"type": "Blocked Shots", "value": 3},
          {"type": "Shots insidebox", "value": 12},
          {"type": "Shots outsidebox", "value": 4},
          {"type": "Fouls", "value": 11},
          {"type": "Corner Kicks", "value": 5},
          {"type": "Offsides", "value": 2},
          {"type": "Ball Possession", "value": "49%"},
          {"type": "Yellow Cards", "value": 1},
          {"type": "Red Cards", "value": null},
          {"type": "Goalkeeper Saves", "value": 2},
          {"type": "Total passes", "value": 422},
          {"type": "Passes accurate", "value": 334},
          {"type": "Passes %", "value": "79%"}
        ]
      },
      {
        "team": {"id": 63, "name": "Leeds", "logo": "https://media-1.api-sports.io/football/teams/63.png"},
        "statistics": [
          {"type": "Shots on Goal", "value": 3},
          {"type": "Shots off Goal", "value": 6},
          {"type": "Total Shots", "value": 10},
          {"type": "Blocked Shots", "value": 1},
          {"type": "Shots insidebox", "value": 3},
          {"type": "Shots outsidebox", "value": 7},
          {"type": "Fouls", "value": 9},
          {"type": "Corner Kicks", "value": 4},
          {"type": "Offsides", "value": 3},
          {"type": "Ball Possession", "value": "51%"},
          {"type": "Yellow Cards", "value": 2},
          {"type": "Red Cards", "value": null},
          {"type": "Goalkeeper Saves", "value": 3},
          {"type": "Total passes", "value": 438},
          {"type": "Passes accurate", "value": 343},
          {"type": "Passes %", "value": "78%"}
        ]
      }
    ];
    return response.map(StatisticsModel.fromJson).toList();
  }

  Future<List<MatchModel>?> fetchTeamsH2h(String teamsIdNumbers, String lastFixtures) async {
    // commented on purpose
    // return (await matchDetailsRemoteService.fetchTeamsH2h(teamsIdNumbers: teamsIdNumbers, lastFixtures: '10'))
    //     .response;
    final response = [
      {
        "fixture": {
          "id": 868233,
          "referee": "S. Attwell",
          "timezone": "UTC",
          "date": "2023-04-02T15:30:00+00:00",
          "timestamp": 1680449400,
          "periods": {"first": 1680449400, "second": 1680453000},
          "venue": {"id": 562, "name": "St. James' Park", "city": "Newcastle upon Tyne"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-2.api-sports.io/flags/gb.svg",
          "season": 2022,
          "round": "Regular Season - 29"
        },
        "teams": {
          "home": {
            "id": 34,
            "name": "Newcastle",
            "logo": "https://media-3.api-sports.io/football/teams/34.png",
            "winner": true
          },
          "away": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-3.api-sports.io/football/teams/33.png",
            "winner": false
          }
        },
        "goals": {"home": 2, "away": 0},
        "score": {
          "halftime": {"home": 0, "away": 0},
          "fulltime": {"home": 2, "away": 0},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 998280,
          "referee": "D. Coote",
          "timezone": "UTC",
          "date": "2023-02-26T16:30:00+00:00",
          "timestamp": 1677429000,
          "periods": {"first": 1677429000, "second": 1677432600},
          "venue": {"id": 489, "name": "Wembley Stadium", "city": "London"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 48,
          "name": "League Cup",
          "country": "England",
          "logo": "https://media-3.api-sports.io/football/leagues/48.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2022,
          "round": "Final"
        },
        "teams": {
          "home": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-1.api-sports.io/football/teams/33.png",
            "winner": true
          },
          "away": {
            "id": 34,
            "name": "Newcastle",
            "logo": "https://media-1.api-sports.io/football/teams/34.png",
            "winner": false
          }
        },
        "goals": {"home": 2, "away": 0},
        "score": {
          "halftime": {"home": 2, "away": 0},
          "fulltime": {"home": 2, "away": 0},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 868052,
          "referee": "C. Pawson",
          "timezone": "UTC",
          "date": "2022-10-16T13:00:00+00:00",
          "timestamp": 1665925200,
          "periods": {"first": 1665925200, "second": 1665928800},
          "venue": {"id": 556, "name": "Old Trafford", "city": "Manchester"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-2.api-sports.io/flags/gb.svg",
          "season": 2022,
          "round": "Regular Season - 11"
        },
        "teams": {
          "home": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-1.api-sports.io/football/teams/33.png",
            "winner": null
          },
          "away": {
            "id": 34,
            "name": "Newcastle",
            "logo": "https://media-3.api-sports.io/football/teams/34.png",
            "winner": null
          }
        },
        "goals": {"home": 0, "away": 0},
        "score": {
          "halftime": {"home": 0, "away": 0},
          "fulltime": {"home": 0, "away": 0},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710741,
          "referee": "C. Pawson",
          "timezone": "UTC",
          "date": "2021-12-27T20:00:00+00:00",
          "timestamp": 1640635200,
          "periods": {"first": 1640635200, "second": 1640638800},
          "venue": {"id": 562, "name": "St. James' Park", "city": "Newcastle upon Tyne"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-2.api-sports.io/football/leagues/39.png",
          "flag": "https://media-1.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 19"
        },
        "teams": {
          "home": {
            "id": 34,
            "name": "Newcastle",
            "logo": "https://media-1.api-sports.io/football/teams/34.png",
            "winner": null
          },
          "away": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-2.api-sports.io/football/teams/33.png",
            "winner": null
          }
        },
        "goals": {"home": 1, "away": 1},
        "score": {
          "halftime": {"home": 1, "away": 0},
          "fulltime": {"home": 1, "away": 1},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710593,
          "referee": "A. Taylor",
          "timezone": "UTC",
          "date": "2021-09-11T14:00:00+00:00",
          "timestamp": 1631368800,
          "periods": {"first": 1631368800, "second": 1631372400},
          "venue": {"id": 556, "name": "Old Trafford", "city": "Manchester"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-2.api-sports.io/football/leagues/39.png",
          "flag": "https://media-1.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 4"
        },
        "teams": {
          "home": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-1.api-sports.io/football/teams/33.png",
            "winner": true
          },
          "away": {
            "id": 34,
            "name": "Newcastle",
            "logo": "https://media-3.api-sports.io/football/teams/34.png",
            "winner": false
          }
        },
        "goals": {"home": 4, "away": 1},
        "score": {
          "halftime": {"home": 1, "away": 0},
          "fulltime": {"home": 4, "away": 1},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 592742,
          "referee": "P. Tierney",
          "timezone": "UTC",
          "date": "2021-02-21T19:00:00+00:00",
          "timestamp": 1613934000,
          "periods": {"first": 1613934000, "second": 1613937600},
          "venue": {"id": 556, "name": "Old Trafford", "city": "Manchester"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-1.api-sports.io/flags/gb.svg",
          "season": 2020,
          "round": "Regular Season - 25"
        },
        "teams": {
          "home": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-2.api-sports.io/football/teams/33.png",
            "winner": true
          },
          "away": {
            "id": 34,
            "name": "Newcastle",
            "logo": "https://media-2.api-sports.io/football/teams/34.png",
            "winner": false
          }
        },
        "goals": {"home": 3, "away": 1},
        "score": {
          "halftime": {"home": 1, "away": 1},
          "fulltime": {"home": 3, "away": 1},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 592187,
          "referee": "C. Pawson",
          "timezone": "UTC",
          "date": "2020-10-17T19:00:00+00:00",
          "timestamp": 1602961200,
          "periods": {"first": 1602961200, "second": 1602964800},
          "venue": {"id": 562, "name": "St. James' Park", "city": "Newcastle upon Tyne"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-1.api-sports.io/flags/gb.svg",
          "season": 2020,
          "round": "Regular Season - 5"
        },
        "teams": {
          "home": {
            "id": 34,
            "name": "Newcastle",
            "logo": "https://media-3.api-sports.io/football/teams/34.png",
            "winner": false
          },
          "away": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-2.api-sports.io/football/teams/33.png",
            "winner": true
          }
        },
        "goals": {"home": 1, "away": 4},
        "score": {
          "halftime": {"home": 1, "away": 1},
          "fulltime": {"home": 1, "away": 4},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 157201,
          "referee": "Kevin Friend, England",
          "timezone": "UTC",
          "date": "2019-12-26T17:30:00+00:00",
          "timestamp": 1577381400,
          "periods": {"first": 1577381400, "second": 1577385000},
          "venue": {"id": 556, "name": "Old Trafford", "city": "Manchester"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-3.api-sports.io/football/leagues/39.png",
          "flag": "https://media-2.api-sports.io/flags/gb.svg",
          "season": 2019,
          "round": "Regular Season - 19"
        },
        "teams": {
          "home": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-1.api-sports.io/football/teams/33.png",
            "winner": true
          },
          "away": {
            "id": 34,
            "name": "Newcastle",
            "logo": "https://media-1.api-sports.io/football/teams/34.png",
            "winner": false
          }
        },
        "goals": {"home": 4, "away": 1},
        "score": {
          "halftime": {"home": 3, "away": 1},
          "fulltime": {"home": 4, "away": 1},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 157090,
          "referee": "Mike Dean, England",
          "timezone": "UTC",
          "date": "2019-10-06T15:30:00+00:00",
          "timestamp": 1570375800,
          "periods": {"first": 1570375800, "second": 1570379400},
          "venue": {"id": 562, "name": "St. James' Park", "city": "Newcastle upon Tyne"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-3.api-sports.io/football/leagues/39.png",
          "flag": "https://media-2.api-sports.io/flags/gb.svg",
          "season": 2019,
          "round": "Regular Season - 8"
        },
        "teams": {
          "home": {
            "id": 34,
            "name": "Newcastle",
            "logo": "https://media-2.api-sports.io/football/teams/34.png",
            "winner": true
          },
          "away": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-2.api-sports.io/football/teams/33.png",
            "winner": false
          }
        },
        "goals": {"home": 1, "away": 0},
        "score": {
          "halftime": {"home": 0, "away": 0},
          "fulltime": {"home": 1, "away": 0},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 272,
          "referee": "Andre Marriner, England",
          "timezone": "UTC",
          "date": "2019-01-02T20:00:00+00:00",
          "timestamp": 1546459200,
          "periods": {"first": 1546459200, "second": 1546462800},
          "venue": {"id": 562, "name": "St James' Park", "city": "Newcastle upon Tyne"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-2.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2018,
          "round": "Regular Season - 21"
        },
        "teams": {
          "home": {
            "id": 34,
            "name": "Newcastle",
            "logo": "https://media-1.api-sports.io/football/teams/34.png",
            "winner": false
          },
          "away": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-1.api-sports.io/football/teams/33.png",
            "winner": true
          }
        },
        "goals": {"home": 0, "away": 2},
        "score": {
          "halftime": {"home": 0, "away": 0},
          "fulltime": {"home": 0, "away": 2},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      }
    ];
    return response.map(MatchModel.fromJson).toList();
  }

  Future<List<StandingsModel>> fetchTeamStandings(String leagueId, String yearFromSeason) async {
    // commented on purpose
    // return (await matchDetailsRemoteService.fetchTeamStandings(leagueID: leagueId, season: yearFromSeason)).response;
    final response = [
      {
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2022,
          "standings": [
            [
              {
                "rank": 1,
                "team": {
                  "id": 50,
                  "name": "Manchester City",
                  "logo": "https://media-2.api-sports.io/football/teams/50.png"
                },
                "points": 89,
                "goalsDiff": 61,
                "group": "Premier League",
                "form": "LDWWW",
                "status": "same",
                "description": "Promotion - Champions League (Group Stage: )",
                "all": {
                  "played": 38,
                  "win": 28,
                  "draw": 5,
                  "lose": 5,
                  "goals": {"for": 94, "against": 33}
                },
                "home": {
                  "played": 19,
                  "win": 17,
                  "draw": 1,
                  "lose": 1,
                  "goals": {"for": 60, "against": 17}
                },
                "away": {
                  "played": 19,
                  "win": 11,
                  "draw": 4,
                  "lose": 4,
                  "goals": {"for": 34, "against": 16}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 2,
                "team": {"id": 42, "name": "Arsenal", "logo": "https://media-2.api-sports.io/football/teams/42.png"},
                "points": 84,
                "goalsDiff": 45,
                "group": "Premier League",
                "form": "WLLWW",
                "status": "same",
                "description": "Promotion - Champions League (Group Stage: )",
                "all": {
                  "played": 38,
                  "win": 26,
                  "draw": 6,
                  "lose": 6,
                  "goals": {"for": 88, "against": 43}
                },
                "home": {
                  "played": 19,
                  "win": 14,
                  "draw": 3,
                  "lose": 2,
                  "goals": {"for": 53, "against": 25}
                },
                "away": {
                  "played": 19,
                  "win": 12,
                  "draw": 3,
                  "lose": 4,
                  "goals": {"for": 35, "against": 18}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 3,
                "team": {
                  "id": 33,
                  "name": "Manchester United",
                  "logo": "https://media-1.api-sports.io/football/teams/33.png"
                },
                "points": 75,
                "goalsDiff": 15,
                "group": "Premier League",
                "form": "WWWWL",
                "status": "same",
                "description": "Promotion - Champions League (Group Stage: )",
                "all": {
                  "played": 38,
                  "win": 23,
                  "draw": 6,
                  "lose": 9,
                  "goals": {"for": 58, "against": 43}
                },
                "home": {
                  "played": 19,
                  "win": 15,
                  "draw": 3,
                  "lose": 1,
                  "goals": {"for": 36, "against": 10}
                },
                "away": {
                  "played": 19,
                  "win": 8,
                  "draw": 3,
                  "lose": 8,
                  "goals": {"for": 22, "against": 33}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 4,
                "team": {"id": 34, "name": "Newcastle", "logo": "https://media-2.api-sports.io/football/teams/34.png"},
                "points": 71,
                "goalsDiff": 35,
                "group": "Premier League",
                "form": "DDWDL",
                "status": "same",
                "description": "Promotion - Champions League (Group Stage: )",
                "all": {
                  "played": 38,
                  "win": 19,
                  "draw": 14,
                  "lose": 5,
                  "goals": {"for": 68, "against": 33}
                },
                "home": {
                  "played": 19,
                  "win": 11,
                  "draw": 6,
                  "lose": 2,
                  "goals": {"for": 36, "against": 14}
                },
                "away": {
                  "played": 19,
                  "win": 8,
                  "draw": 8,
                  "lose": 3,
                  "goals": {"for": 32, "against": 19}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 5,
                "team": {"id": 40, "name": "Liverpool", "logo": "https://media-3.api-sports.io/football/teams/40.png"},
                "points": 67,
                "goalsDiff": 28,
                "group": "Premier League",
                "form": "DDWWW",
                "status": "same",
                "description": "Promotion - Europa League (Group Stage: )",
                "all": {
                  "played": 38,
                  "win": 19,
                  "draw": 10,
                  "lose": 9,
                  "goals": {"for": 75, "against": 47}
                },
                "home": {
                  "played": 19,
                  "win": 13,
                  "draw": 5,
                  "lose": 1,
                  "goals": {"for": 46, "against": 17}
                },
                "away": {
                  "played": 19,
                  "win": 6,
                  "draw": 5,
                  "lose": 8,
                  "goals": {"for": 29, "against": 30}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 6,
                "team": {"id": 51, "name": "Brighton", "logo": "https://media-2.api-sports.io/football/teams/51.png"},
                "points": 62,
                "goalsDiff": 19,
                "group": "Premier League",
                "form": "LDWLW",
                "status": "same",
                "description": "Promotion - Europa League (Group Stage: )",
                "all": {
                  "played": 38,
                  "win": 18,
                  "draw": 8,
                  "lose": 12,
                  "goals": {"for": 72, "against": 53}
                },
                "home": {
                  "played": 19,
                  "win": 10,
                  "draw": 4,
                  "lose": 5,
                  "goals": {"for": 37, "against": 21}
                },
                "away": {
                  "played": 19,
                  "win": 8,
                  "draw": 4,
                  "lose": 7,
                  "goals": {"for": 35, "against": 32}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 7,
                "team": {
                  "id": 66,
                  "name": "Aston Villa",
                  "logo": "https://media-2.api-sports.io/football/teams/66.png"
                },
                "points": 61,
                "goalsDiff": 5,
                "group": "Premier League",
                "form": "WDWLL",
                "status": "same",
                "description": "Promotion - Europa Conference League (Qualification: )",
                "all": {
                  "played": 38,
                  "win": 18,
                  "draw": 7,
                  "lose": 13,
                  "goals": {"for": 51, "against": 46}
                },
                "home": {
                  "played": 19,
                  "win": 12,
                  "draw": 2,
                  "lose": 5,
                  "goals": {"for": 33, "against": 21}
                },
                "away": {
                  "played": 19,
                  "win": 6,
                  "draw": 5,
                  "lose": 8,
                  "goals": {"for": 18, "against": 25}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 8,
                "team": {"id": 47, "name": "Tottenham", "logo": "https://media-2.api-sports.io/football/teams/47.png"},
                "points": 60,
                "goalsDiff": 7,
                "group": "Premier League",
                "form": "WLLWL",
                "status": "same",
                "description": null,
                "all": {
                  "played": 38,
                  "win": 18,
                  "draw": 6,
                  "lose": 14,
                  "goals": {"for": 70, "against": 63}
                },
                "home": {
                  "played": 19,
                  "win": 12,
                  "draw": 1,
                  "lose": 6,
                  "goals": {"for": 37, "against": 25}
                },
                "away": {
                  "played": 19,
                  "win": 6,
                  "draw": 5,
                  "lose": 8,
                  "goals": {"for": 33, "against": 38}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 9,
                "team": {"id": 55, "name": "Brentford", "logo": "https://media-3.api-sports.io/football/teams/55.png"},
                "points": 59,
                "goalsDiff": 12,
                "group": "Premier League",
                "form": "WWWLW",
                "status": "same",
                "description": null,
                "all": {
                  "played": 38,
                  "win": 15,
                  "draw": 14,
                  "lose": 9,
                  "goals": {"for": 58, "against": 46}
                },
                "home": {
                  "played": 19,
                  "win": 10,
                  "draw": 7,
                  "lose": 2,
                  "goals": {"for": 35, "against": 18}
                },
                "away": {
                  "played": 19,
                  "win": 5,
                  "draw": 7,
                  "lose": 7,
                  "goals": {"for": 23, "against": 28}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 10,
                "team": {"id": 36, "name": "Fulham", "logo": "https://media-2.api-sports.io/football/teams/36.png"},
                "points": 52,
                "goalsDiff": 2,
                "group": "Premier League",
                "form": "LDWWL",
                "status": "same",
                "description": null,
                "all": {
                  "played": 38,
                  "win": 15,
                  "draw": 7,
                  "lose": 16,
                  "goals": {"for": 55, "against": 53}
                },
                "home": {
                  "played": 19,
                  "win": 8,
                  "draw": 5,
                  "lose": 6,
                  "goals": {"for": 31, "against": 29}
                },
                "away": {
                  "played": 19,
                  "win": 7,
                  "draw": 2,
                  "lose": 10,
                  "goals": {"for": 24, "against": 24}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 11,
                "team": {
                  "id": 52,
                  "name": "Crystal Palace",
                  "logo": "https://media-3.api-sports.io/football/teams/52.png"
                },
                "points": 45,
                "goalsDiff": -9,
                "group": "Premier League",
                "form": "DDWLW",
                "status": "same",
                "description": null,
                "all": {
                  "played": 38,
                  "win": 11,
                  "draw": 12,
                  "lose": 15,
                  "goals": {"for": 40, "against": 49}
                },
                "home": {
                  "played": 19,
                  "win": 7,
                  "draw": 7,
                  "lose": 5,
                  "goals": {"for": 21, "against": 23}
                },
                "away": {
                  "played": 19,
                  "win": 4,
                  "draw": 5,
                  "lose": 10,
                  "goals": {"for": 19, "against": 26}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 12,
                "team": {"id": 49, "name": "Chelsea", "logo": "https://media-1.api-sports.io/football/teams/49.png"},
                "points": 44,
                "goalsDiff": -9,
                "group": "Premier League",
                "form": "DLLDW",
                "status": "same",
                "description": null,
                "all": {
                  "played": 38,
                  "win": 11,
                  "draw": 11,
                  "lose": 16,
                  "goals": {"for": 38, "against": 47}
                },
                "home": {
                  "played": 19,
                  "win": 6,
                  "draw": 7,
                  "lose": 6,
                  "goals": {"for": 20, "against": 19}
                },
                "away": {
                  "played": 19,
                  "win": 5,
                  "draw": 4,
                  "lose": 10,
                  "goals": {"for": 18, "against": 28}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 13,
                "team": {"id": 39, "name": "Wolves", "logo": "https://media-3.api-sports.io/football/teams/39.png"},
                "points": 41,
                "goalsDiff": -27,
                "group": "Premier League",
                "form": "LDLWL",
                "status": "same",
                "description": null,
                "all": {
                  "played": 38,
                  "win": 11,
                  "draw": 8,
                  "lose": 19,
                  "goals": {"for": 31, "against": 58}
                },
                "home": {
                  "played": 19,
                  "win": 9,
                  "draw": 3,
                  "lose": 7,
                  "goals": {"for": 19, "against": 20}
                },
                "away": {
                  "played": 19,
                  "win": 2,
                  "draw": 5,
                  "lose": 12,
                  "goals": {"for": 12, "against": 38}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 14,
                "team": {"id": 48, "name": "West Ham", "logo": "https://media-1.api-sports.io/football/teams/48.png"},
                "points": 40,
                "goalsDiff": -13,
                "group": "Premier League",
                "form": "LWLWL",
                "status": "same",
                "description": null,
                "all": {
                  "played": 38,
                  "win": 11,
                  "draw": 7,
                  "lose": 20,
                  "goals": {"for": 42, "against": 55}
                },
                "home": {
                  "played": 19,
                  "win": 8,
                  "draw": 4,
                  "lose": 7,
                  "goals": {"for": 26, "against": 24}
                },
                "away": {
                  "played": 19,
                  "win": 3,
                  "draw": 3,
                  "lose": 13,
                  "goals": {"for": 16, "against": 31}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 15,
                "team": {
                  "id": 35,
                  "name": "Bournemouth",
                  "logo": "https://media-1.api-sports.io/football/teams/35.png"
                },
                "points": 39,
                "goalsDiff": -34,
                "group": "Premier League",
                "form": "LLLLW",
                "status": "same",
                "description": null,
                "all": {
                  "played": 38,
                  "win": 11,
                  "draw": 6,
                  "lose": 21,
                  "goals": {"for": 37, "against": 71}
                },
                "home": {
                  "played": 19,
                  "win": 6,
                  "draw": 4,
                  "lose": 9,
                  "goals": {"for": 20, "against": 28}
                },
                "away": {
                  "played": 19,
                  "win": 5,
                  "draw": 2,
                  "lose": 12,
                  "goals": {"for": 17, "against": 43}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 16,
                "team": {
                  "id": 65,
                  "name": "Nottingham Forest",
                  "logo": "https://media-3.api-sports.io/football/teams/65.png"
                },
                "points": 38,
                "goalsDiff": -30,
                "group": "Premier League",
                "form": "DWDWL",
                "status": "same",
                "description": null,
                "all": {
                  "played": 38,
                  "win": 9,
                  "draw": 11,
                  "lose": 18,
                  "goals": {"for": 38, "against": 68}
                },
                "home": {
                  "played": 19,
                  "win": 8,
                  "draw": 6,
                  "lose": 5,
                  "goals": {"for": 27, "against": 24}
                },
                "away": {
                  "played": 19,
                  "win": 1,
                  "draw": 5,
                  "lose": 13,
                  "goals": {"for": 11, "against": 44}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 17,
                "team": {"id": 45, "name": "Everton", "logo": "https://media-1.api-sports.io/football/teams/45.png"},
                "points": 36,
                "goalsDiff": -23,
                "group": "Premier League",
                "form": "WDLWD",
                "status": "same",
                "description": null,
                "all": {
                  "played": 38,
                  "win": 8,
                  "draw": 12,
                  "lose": 18,
                  "goals": {"for": 34, "against": 57}
                },
                "home": {
                  "played": 19,
                  "win": 6,
                  "draw": 3,
                  "lose": 10,
                  "goals": {"for": 16, "against": 27}
                },
                "away": {
                  "played": 19,
                  "win": 2,
                  "draw": 9,
                  "lose": 8,
                  "goals": {"for": 18, "against": 30}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 18,
                "team": {"id": 46, "name": "Leicester", "logo": "https://media-2.api-sports.io/football/teams/46.png"},
                "points": 34,
                "goalsDiff": -17,
                "group": "Premier League",
                "form": "WDLLD",
                "status": "same",
                "description": "Relegation - Championship",
                "all": {
                  "played": 38,
                  "win": 9,
                  "draw": 7,
                  "lose": 22,
                  "goals": {"for": 51, "against": 68}
                },
                "home": {
                  "played": 19,
                  "win": 5,
                  "draw": 4,
                  "lose": 10,
                  "goals": {"for": 23, "against": 27}
                },
                "away": {
                  "played": 19,
                  "win": 4,
                  "draw": 3,
                  "lose": 12,
                  "goals": {"for": 28, "against": 41}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 19,
                "team": {"id": 63, "name": "Leeds", "logo": "https://media-3.api-sports.io/football/teams/63.png"},
                "points": 31,
                "goalsDiff": -30,
                "group": "Premier League",
                "form": "LLDLL",
                "status": "same",
                "description": "Relegation - Championship",
                "all": {
                  "played": 38,
                  "win": 7,
                  "draw": 10,
                  "lose": 21,
                  "goals": {"for": 48, "against": 78}
                },
                "home": {
                  "played": 19,
                  "win": 5,
                  "draw": 7,
                  "lose": 7,
                  "goals": {"for": 26, "against": 37}
                },
                "away": {
                  "played": 19,
                  "win": 2,
                  "draw": 3,
                  "lose": 14,
                  "goals": {"for": 22, "against": 41}
                },
                "update": "2023-05-28T00:00:00+00:00"
              },
              {
                "rank": 20,
                "team": {
                  "id": 41,
                  "name": "Southampton",
                  "logo": "https://media-1.api-sports.io/football/teams/41.png"
                },
                "points": 25,
                "goalsDiff": -37,
                "group": "Premier League",
                "form": "DLLLL",
                "status": "same",
                "description": "Relegation - Championship",
                "all": {
                  "played": 38,
                  "win": 6,
                  "draw": 7,
                  "lose": 25,
                  "goals": {"for": 36, "against": 73}
                },
                "home": {
                  "played": 19,
                  "win": 2,
                  "draw": 5,
                  "lose": 12,
                  "goals": {"for": 19, "against": 37}
                },
                "away": {
                  "played": 19,
                  "win": 4,
                  "draw": 2,
                  "lose": 13,
                  "goals": {"for": 17, "against": 36}
                },
                "update": "2023-05-28T00:00:00+00:00"
              }
            ]
          ]
        }
      }
    ];
    return response.map(StandingsModel.fromJson).toList();
  }
}
