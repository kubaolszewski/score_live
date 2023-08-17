// ignore_for_file: unused_import

import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class HomeScreenRepository {
  HomeScreenRepository(this.liveMatchesRemoteService);

  final LiveMatchesRemoteService liveMatchesRemoteService;

  Future<List<MatchModel>?> fetchLiveMatches() async {
    // return (await liveMatchesRemoteService.fetchLiveMatches(live: 'all')).response;
    final response = [
      {
        "fixture": {
          "id": 710561,
          "referee": "P. Tierney",
          "timezone": "UTC",
          "date": "2021-08-14T11:30:00+00:00",
          "timestamp": 1628940600,
          "periods": {"first": 1628940600, "second": 1628944200},
          "venue": {"id": 556, "name": "Old Trafford", "city": "Manchester"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-3.api-sports.io/football/teams/33.png",
            "winner": true
          },
          "away": {
            "id": 63,
            "name": "Leeds",
            "logo": "https://media-3.api-sports.io/football/teams/63.png",
            "winner": false
          }
        },
        "goals": {"home": 5, "away": 1},
        "score": {
          "halftime": {"home": 1, "away": 0},
          "fulltime": {"home": 5, "away": 1},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710557,
          "referee": "D. Coote",
          "timezone": "UTC",
          "date": "2021-08-14T14:00:00+00:00",
          "timestamp": 1628949600,
          "periods": {"first": 1628949600, "second": 1628953200},
          "venue": {"id": 512, "name": "Turf Moor", "city": "Burnley"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 44,
            "name": "Burnley",
            "logo": "https://media-1.api-sports.io/football/teams/44.png",
            "winner": false
          },
          "away": {
            "id": 51,
            "name": "Brighton",
            "logo": "https://media-3.api-sports.io/football/teams/51.png",
            "winner": true
          }
        },
        "goals": {"home": 1, "away": 2},
        "score": {
          "halftime": {"home": 1, "away": 0},
          "fulltime": {"home": 1, "away": 2},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710558,
          "referee": "J. Moss",
          "timezone": "UTC",
          "date": "2021-08-14T14:00:00+00:00",
          "timestamp": 1628949600,
          "periods": {"first": 1628949600, "second": 1628953200},
          "venue": {"id": 519, "name": "Stamford Bridge", "city": "London"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 49,
            "name": "Chelsea",
            "logo": "https://media-1.api-sports.io/football/teams/49.png",
            "winner": true
          },
          "away": {
            "id": 52,
            "name": "Crystal Palace",
            "logo": "https://media-3.api-sports.io/football/teams/52.png",
            "winner": false
          }
        },
        "goals": {"home": 3, "away": 0},
        "score": {
          "halftime": {"home": 2, "away": 0},
          "fulltime": {"home": 3, "away": 0},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710559,
          "referee": "A. Madley",
          "timezone": "UTC",
          "date": "2021-08-14T14:00:00+00:00",
          "timestamp": 1628949600,
          "periods": {"first": 1628949600, "second": 1628953200},
          "venue": {"id": 8560, "name": "Goodison Park", "city": "Liverpool"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 45,
            "name": "Everton",
            "logo": "https://media-1.api-sports.io/football/teams/45.png",
            "winner": true
          },
          "away": {
            "id": 41,
            "name": "Southampton",
            "logo": "https://media-1.api-sports.io/football/teams/41.png",
            "winner": false
          }
        },
        "goals": {"home": 3, "away": 1},
        "score": {
          "halftime": {"home": 0, "away": 1},
          "fulltime": {"home": 3, "away": 1},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710560,
          "referee": "C. Pawson",
          "timezone": "UTC",
          "date": "2021-08-14T14:00:00+00:00",
          "timestamp": 1628949600,
          "periods": {"first": 1628949600, "second": 1628953200},
          "venue": {"id": 547, "name": "King Power Stadium", "city": "Leicester, Leicestershire"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 46,
            "name": "Leicester",
            "logo": "https://media-2.api-sports.io/football/teams/46.png",
            "winner": true
          },
          "away": {
            "id": 39,
            "name": "Wolves",
            "logo": "https://media-1.api-sports.io/football/teams/39.png",
            "winner": false
          }
        },
        "goals": {"home": 1, "away": 0},
        "score": {
          "halftime": {"home": 1, "away": 0},
          "fulltime": {"home": 1, "away": 0},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710565,
          "referee": "M. Dean",
          "timezone": "UTC",
          "date": "2021-08-14T14:00:00+00:00",
          "timestamp": 1628949600,
          "periods": {"first": 1628949600, "second": 1628953200},
          "venue": {"id": 596, "name": "Vicarage Road", "city": "Watford"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 38,
            "name": "Watford",
            "logo": "https://media-3.api-sports.io/football/teams/38.png",
            "winner": true
          },
          "away": {
            "id": 66,
            "name": "Aston Villa",
            "logo": "https://media-3.api-sports.io/football/teams/66.png",
            "winner": false
          }
        },
        "goals": {"home": 3, "away": 2},
        "score": {
          "halftime": {"home": 2, "away": 0},
          "fulltime": {"home": 3, "away": 2},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710563,
          "referee": "A. Marriner",
          "timezone": "UTC",
          "date": "2021-08-14T16:30:00+00:00",
          "timestamp": 1628958600,
          "periods": {"first": 1628958600, "second": 1628962200},
          "venue": {"id": 565, "name": "Carrow Road", "city": "Norwich, Norfolk"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 71,
            "name": "Norwich",
            "logo": "https://media-2.api-sports.io/football/teams/71.png",
            "winner": false
          },
          "away": {
            "id": 40,
            "name": "Liverpool",
            "logo": "https://media-1.api-sports.io/football/teams/40.png",
            "winner": true
          }
        },
        "goals": {"home": 0, "away": 3},
        "score": {
          "halftime": {"home": 0, "away": 1},
          "fulltime": {"home": 0, "away": 3},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      }
    ];
    return response.map(MatchModel.fromJson).toList();
  }

  Future<List<MatchModel>?> fetchMatchesByDate(String status, String date) async {
    // return (await liveMatchesRemoteService.fetchMatchesByDate(status: AppConstVariables.fullTime, date: date)).response;
    final response = [
      {
        "fixture": {
          "id": 710561,
          "referee": "P. Tierney",
          "timezone": "UTC",
          "date": "2021-08-14T11:30:00+00:00",
          "timestamp": 1628940600,
          "periods": {"first": 1628940600, "second": 1628944200},
          "venue": {"id": 556, "name": "Old Trafford", "city": "Manchester"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 33,
            "name": "Manchester United",
            "logo": "https://media-3.api-sports.io/football/teams/33.png",
            "winner": true
          },
          "away": {
            "id": 63,
            "name": "Leeds",
            "logo": "https://media-3.api-sports.io/football/teams/63.png",
            "winner": false
          }
        },
        "goals": {"home": 5, "away": 1},
        "score": {
          "halftime": {"home": 1, "away": 0},
          "fulltime": {"home": 5, "away": 1},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710557,
          "referee": "D. Coote",
          "timezone": "UTC",
          "date": "2021-08-14T14:00:00+00:00",
          "timestamp": 1628949600,
          "periods": {"first": 1628949600, "second": 1628953200},
          "venue": {"id": 512, "name": "Turf Moor", "city": "Burnley"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 44,
            "name": "Burnley",
            "logo": "https://media-1.api-sports.io/football/teams/44.png",
            "winner": false
          },
          "away": {
            "id": 51,
            "name": "Brighton",
            "logo": "https://media-3.api-sports.io/football/teams/51.png",
            "winner": true
          }
        },
        "goals": {"home": 1, "away": 2},
        "score": {
          "halftime": {"home": 1, "away": 0},
          "fulltime": {"home": 1, "away": 2},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710558,
          "referee": "J. Moss",
          "timezone": "UTC",
          "date": "2021-08-14T14:00:00+00:00",
          "timestamp": 1628949600,
          "periods": {"first": 1628949600, "second": 1628953200},
          "venue": {"id": 519, "name": "Stamford Bridge", "city": "London"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 49,
            "name": "Chelsea",
            "logo": "https://media-1.api-sports.io/football/teams/49.png",
            "winner": true
          },
          "away": {
            "id": 52,
            "name": "Crystal Palace",
            "logo": "https://media-3.api-sports.io/football/teams/52.png",
            "winner": false
          }
        },
        "goals": {"home": 3, "away": 0},
        "score": {
          "halftime": {"home": 2, "away": 0},
          "fulltime": {"home": 3, "away": 0},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710559,
          "referee": "A. Madley",
          "timezone": "UTC",
          "date": "2021-08-14T14:00:00+00:00",
          "timestamp": 1628949600,
          "periods": {"first": 1628949600, "second": 1628953200},
          "venue": {"id": 8560, "name": "Goodison Park", "city": "Liverpool"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 45,
            "name": "Everton",
            "logo": "https://media-1.api-sports.io/football/teams/45.png",
            "winner": true
          },
          "away": {
            "id": 41,
            "name": "Southampton",
            "logo": "https://media-1.api-sports.io/football/teams/41.png",
            "winner": false
          }
        },
        "goals": {"home": 3, "away": 1},
        "score": {
          "halftime": {"home": 0, "away": 1},
          "fulltime": {"home": 3, "away": 1},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710560,
          "referee": "C. Pawson",
          "timezone": "UTC",
          "date": "2021-08-14T14:00:00+00:00",
          "timestamp": 1628949600,
          "periods": {"first": 1628949600, "second": 1628953200},
          "venue": {"id": 547, "name": "King Power Stadium", "city": "Leicester, Leicestershire"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 46,
            "name": "Leicester",
            "logo": "https://media-2.api-sports.io/football/teams/46.png",
            "winner": true
          },
          "away": {
            "id": 39,
            "name": "Wolves",
            "logo": "https://media-1.api-sports.io/football/teams/39.png",
            "winner": false
          }
        },
        "goals": {"home": 1, "away": 0},
        "score": {
          "halftime": {"home": 1, "away": 0},
          "fulltime": {"home": 1, "away": 0},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710565,
          "referee": "M. Dean",
          "timezone": "UTC",
          "date": "2021-08-14T14:00:00+00:00",
          "timestamp": 1628949600,
          "periods": {"first": 1628949600, "second": 1628953200},
          "venue": {"id": 596, "name": "Vicarage Road", "city": "Watford"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 38,
            "name": "Watford",
            "logo": "https://media-3.api-sports.io/football/teams/38.png",
            "winner": true
          },
          "away": {
            "id": 66,
            "name": "Aston Villa",
            "logo": "https://media-3.api-sports.io/football/teams/66.png",
            "winner": false
          }
        },
        "goals": {"home": 3, "away": 2},
        "score": {
          "halftime": {"home": 2, "away": 0},
          "fulltime": {"home": 3, "away": 2},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 710563,
          "referee": "A. Marriner",
          "timezone": "UTC",
          "date": "2021-08-14T16:30:00+00:00",
          "timestamp": 1628958600,
          "periods": {"first": 1628958600, "second": 1628962200},
          "venue": {"id": 565, "name": "Carrow Road", "city": "Norwich, Norfolk"},
          "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
        },
        "league": {
          "id": 39,
          "name": "Premier League",
          "country": "England",
          "logo": "https://media-1.api-sports.io/football/leagues/39.png",
          "flag": "https://media-3.api-sports.io/flags/gb.svg",
          "season": 2021,
          "round": "Regular Season - 1"
        },
        "teams": {
          "home": {
            "id": 71,
            "name": "Norwich",
            "logo": "https://media-2.api-sports.io/football/teams/71.png",
            "winner": false
          },
          "away": {
            "id": 40,
            "name": "Liverpool",
            "logo": "https://media-1.api-sports.io/football/teams/40.png",
            "winner": true
          }
        },
        "goals": {"home": 0, "away": 3},
        "score": {
          "halftime": {"home": 0, "away": 1},
          "fulltime": {"home": 0, "away": 3},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      }
    ];
    return response.map(MatchModel.fromJson).toList();
  }

  Future<List<MatchModel>?> fetchUpcomingMatches(String status, String date) async {
    // return (await liveMatchesRemoteService.fetchMatchesByDate(status: AppConstVariables.matchNotStarted, date: date))
    //     .response;
    final response = [
      {
        "fixture": {
          "id": 1021889,
          "referee": null,
          "timezone": "UTC",
          "date": "2023-07-21T11:00:00+00:00",
          "timestamp": 1689937200,
          "periods": {"first": null, "second": null},
          "venue": {"id": 2557, "name": "Larrakia Park", "city": "Darwin"},
          "status": {"long": "Not Started", "short": "NS", "elapsed": null}
        },
        "league": {
          "id": 193,
          "name": "Northern Territory Premier League",
          "country": "Australia",
          "logo": "https://media-2.api-sports.io/football/leagues/193.png",
          "flag": "https://media-3.api-sports.io/flags/au.svg",
          "season": 2023,
          "round": "Regular Season - 12"
        },
        "teams": {
          "home": {
            "id": 3779,
            "name": "Darwin Olympic",
            "logo": "https://media-2.api-sports.io/football/teams/3779.png",
            "winner": null
          },
          "away": {
            "id": 3781,
            "name": "Mindil Aces",
            "logo": "https://media-3.api-sports.io/football/teams/3781.png",
            "winner": null
          }
        },
        "goals": {"home": null, "away": null},
        "score": {
          "halftime": {"home": null, "away": null},
          "fulltime": {"home": null, "away": null},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 1047245,
          "referee": null,
          "timezone": "UTC",
          "date": "2023-07-21T11:00:00+00:00",
          "timestamp": 1689937200,
          "periods": {"first": null, "second": null},
          "venue": {"id": null, "name": "TBC", "city": "TBC"},
          "status": {"long": "Not Started", "short": "NS", "elapsed": null}
        },
        "league": {
          "id": 667,
          "name": "Friendlies Clubs",
          "country": "World",
          "logo": "https://media-2.api-sports.io/football/leagues/667.png",
          "flag": null,
          "season": 2023,
          "round": "Club Friendlies 3"
        },
        "teams": {
          "home": {
            "id": 5914,
            "name": "Rochefort",
            "logo": "https://media-3.api-sports.io/football/teams/5914.png",
            "winner": null
          },
          "away": {
            "id": 10244,
            "name": "Seraing United",
            "logo": "https://media-3.api-sports.io/football/teams/10244.png",
            "winner": null
          }
        },
        "goals": {"home": null, "away": null},
        "score": {
          "halftime": {"home": null, "away": null},
          "fulltime": {"home": null, "away": null},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 1039066,
          "referee": null,
          "timezone": "UTC",
          "date": "2023-07-21T11:30:00+00:00",
          "timestamp": 1689939000,
          "periods": {"first": null, "second": null},
          "venue": {"id": null, "name": "Akademie Liefering - Platz 2", "city": "Salzburg"},
          "status": {"long": "Not Started", "short": "NS", "elapsed": null}
        },
        "league": {
          "id": 667,
          "name": "Friendlies Clubs",
          "country": "World",
          "logo": "https://media-2.api-sports.io/football/leagues/667.png",
          "flag": null,
          "season": 2023,
          "round": "Club Friendlies 3"
        },
        "teams": {
          "home": {
            "id": 1400,
            "name": "FC Liefering",
            "logo": "https://media-1.api-sports.io/football/teams/1400.png",
            "winner": null
          },
          "away": {
            "id": 11225,
            "name": "LASK Juniors",
            "logo": "https://media-1.api-sports.io/football/teams/11225.png",
            "winner": null
          }
        },
        "goals": {"home": null, "away": null},
        "score": {
          "halftime": {"home": null, "away": null},
          "fulltime": {"home": null, "away": null},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 1021406,
          "referee": null,
          "timezone": "UTC",
          "date": "2023-07-21T11:35:00+00:00",
          "timestamp": 1689939300,
          "periods": {"first": null, "second": null},
          "venue": {"id": null, "name": "SAIC Motor Pudong Arena", "city": "Shanghai"},
          "status": {"long": "Not Started", "short": "NS", "elapsed": null}
        },
        "league": {
          "id": 169,
          "name": "Super League",
          "country": "China",
          "logo": "https://media-1.api-sports.io/football/leagues/169.png",
          "flag": "https://media-3.api-sports.io/flags/cn.svg",
          "season": 2023,
          "round": "Regular Season - 18"
        },
        "teams": {
          "home": {
            "id": 836,
            "name": "SHANGHAI SIPG",
            "logo": "https://media-2.api-sports.io/football/teams/836.png",
            "winner": null
          },
          "away": {
            "id": 849,
            "name": "Shijiazhuang Y. J.",
            "logo": "https://media-2.api-sports.io/football/teams/849.png",
            "winner": null
          }
        },
        "goals": {"home": null, "away": null},
        "score": {
          "halftime": {"home": null, "away": null},
          "fulltime": {"home": null, "away": null},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      },
      {
        "fixture": {
          "id": 1021407,
          "referee": null,
          "timezone": "UTC",
          "date": "2023-07-21T11:35:00+00:00",
          "timestamp": 1689939300,
          "periods": {"first": null, "second": null},
          "venue": {"id": 355, "name": "Zhengzhou Hanghai Stadium", "city": "Zhengzhou"},
          "status": {"long": "Not Started", "short": "NS", "elapsed": null}
        },
        "league": {
          "id": 169,
          "name": "Super League",
          "country": "China",
          "logo": "https://media-1.api-sports.io/football/leagues/169.png",
          "flag": "https://media-3.api-sports.io/flags/cn.svg",
          "season": 2023,
          "round": "Regular Season - 18"
        },
        "teams": {
          "home": {
            "id": 840,
            "name": "Henan Jianye",
            "logo": "https://media-2.api-sports.io/football/teams/840.png",
            "winner": null
          },
          "away": {
            "id": 2626,
            "name": "Nantong Zhiyun",
            "logo": "https://media-1.api-sports.io/football/teams/2626.png",
            "winner": null
          }
        },
        "goals": {"home": null, "away": null},
        "score": {
          "halftime": {"home": null, "away": null},
          "fulltime": {"home": null, "away": null},
          "extratime": {"home": null, "away": null},
          "penalty": {"home": null, "away": null}
        }
      }
    ];
    return response.map(MatchModel.fromJson).toList();
  }
}
