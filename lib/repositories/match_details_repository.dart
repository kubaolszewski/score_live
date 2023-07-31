import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';

class MatchDetailsRepository {
  MatchDetailsRepository(this.liveMatchesRemoteService);

  final LiveMatchesRemoteService liveMatchesRemoteService;

  Future<List<MatchEventsModel>> fetchMatchEvents(String matchID) async {
    // return (await liveMatchesRemoteService.fetchMatchEvents(matchID: matchID)).response;
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
    // return (await liveMatchesRemoteService.fetchMatchLineUps(matchID: matchID)).response;
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

  Future<List<LiveMatchModel>?> fetchTeamsH2h(String teamsIdNumbers, String lastFixtures) async {
    // commented on purpose 
    // return (await liveMatchesRemoteService.fetchTeamsH2h(teamsIdNumbers: teamsIdNumbers, lastFixtures: '10'))
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
    return response.map(LiveMatchModel.fromJson).toList();
  }
}
