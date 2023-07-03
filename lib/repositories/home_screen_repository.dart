import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/models/live_match_model.dart';

class HomeScreenRepository {
  HomeScreenRepository(this.liveMatchesRemoteService);

  final LiveMatchesRemoteService liveMatchesRemoteService;

  Future<List<LiveMatchModel>?> fetchMatchesByDate(String date) async {
    return (await liveMatchesRemoteService.fetchMatchesByDate(league: "39", season: '2022', date: date)).response;
    //   final response = [
    //     {
    //       "fixture": {
    //         "id": 710561,
    //         "referee": "P. Tierney",
    //         "timezone": "UTC",
    //         "date": "2021-08-14T11:30:00+00:00",
    //         "timestamp": 1628940600,
    //         "periods": {"first": 1628940600, "second": 1628944200},
    //         "venue": {"id": 556, "name": "Old Trafford", "city": "Manchester"},
    //         "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
    //       },
    //       "league": {
    //         "id": 39,
    //         "name": "Premier League",
    //         "country": "England",
    //         "logo": "https://media-1.api-sports.io/football/leagues/39.png",
    //         "flag": "https://media-3.api-sports.io/flags/gb.svg",
    //         "season": 2021,
    //         "round": "Regular Season - 1"
    //       },
    //       "teams": {
    //         "home": {
    //           "id": 33,
    //           "name": "Manchester United",
    //           "logo": "https://media-3.api-sports.io/football/teams/33.png",
    //           "winner": true
    //         },
    //         "away": {
    //           "id": 63,
    //           "name": "Leeds",
    //           "logo": "https://media-3.api-sports.io/football/teams/63.png",
    //           "winner": false
    //         }
    //       },
    //       "goals": {"home": 5, "away": 1},
    //       "score": {
    //         "halftime": {"home": 1, "away": 0},
    //         "fulltime": {"home": 5, "away": 1},
    //         "extratime": {"home": null, "away": null},
    //         "penalty": {"home": null, "away": null}
    //       }
    //     },
    //     {
    //       "fixture": {
    //         "id": 710557,
    //         "referee": "D. Coote",
    //         "timezone": "UTC",
    //         "date": "2021-08-14T14:00:00+00:00",
    //         "timestamp": 1628949600,
    //         "periods": {"first": 1628949600, "second": 1628953200},
    //         "venue": {"id": 512, "name": "Turf Moor", "city": "Burnley"},
    //         "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
    //       },
    //       "league": {
    //         "id": 39,
    //         "name": "Premier League",
    //         "country": "England",
    //         "logo": "https://media-1.api-sports.io/football/leagues/39.png",
    //         "flag": "https://media-3.api-sports.io/flags/gb.svg",
    //         "season": 2021,
    //         "round": "Regular Season - 1"
    //       },
    //       "teams": {
    //         "home": {
    //           "id": 44,
    //           "name": "Burnley",
    //           "logo": "https://media-1.api-sports.io/football/teams/44.png",
    //           "winner": false
    //         },
    //         "away": {
    //           "id": 51,
    //           "name": "Brighton",
    //           "logo": "https://media-3.api-sports.io/football/teams/51.png",
    //           "winner": true
    //         }
    //       },
    //       "goals": {"home": 1, "away": 2},
    //       "score": {
    //         "halftime": {"home": 1, "away": 0},
    //         "fulltime": {"home": 1, "away": 2},
    //         "extratime": {"home": null, "away": null},
    //         "penalty": {"home": null, "away": null}
    //       }
    //     },
    //     {
    //       "fixture": {
    //         "id": 710558,
    //         "referee": "J. Moss",
    //         "timezone": "UTC",
    //         "date": "2021-08-14T14:00:00+00:00",
    //         "timestamp": 1628949600,
    //         "periods": {"first": 1628949600, "second": 1628953200},
    //         "venue": {"id": 519, "name": "Stamford Bridge", "city": "London"},
    //         "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
    //       },
    //       "league": {
    //         "id": 39,
    //         "name": "Premier League",
    //         "country": "England",
    //         "logo": "https://media-1.api-sports.io/football/leagues/39.png",
    //         "flag": "https://media-3.api-sports.io/flags/gb.svg",
    //         "season": 2021,
    //         "round": "Regular Season - 1"
    //       },
    //       "teams": {
    //         "home": {
    //           "id": 49,
    //           "name": "Chelsea",
    //           "logo": "https://media-1.api-sports.io/football/teams/49.png",
    //           "winner": true
    //         },
    //         "away": {
    //           "id": 52,
    //           "name": "Crystal Palace",
    //           "logo": "https://media-3.api-sports.io/football/teams/52.png",
    //           "winner": false
    //         }
    //       },
    //       "goals": {"home": 3, "away": 0},
    //       "score": {
    //         "halftime": {"home": 2, "away": 0},
    //         "fulltime": {"home": 3, "away": 0},
    //         "extratime": {"home": null, "away": null},
    //         "penalty": {"home": null, "away": null}
    //       }
    //     },
    //     {
    //       "fixture": {
    //         "id": 710559,
    //         "referee": "A. Madley",
    //         "timezone": "UTC",
    //         "date": "2021-08-14T14:00:00+00:00",
    //         "timestamp": 1628949600,
    //         "periods": {"first": 1628949600, "second": 1628953200},
    //         "venue": {"id": 8560, "name": "Goodison Park", "city": "Liverpool"},
    //         "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
    //       },
    //       "league": {
    //         "id": 39,
    //         "name": "Premier League",
    //         "country": "England",
    //         "logo": "https://media-1.api-sports.io/football/leagues/39.png",
    //         "flag": "https://media-3.api-sports.io/flags/gb.svg",
    //         "season": 2021,
    //         "round": "Regular Season - 1"
    //       },
    //       "teams": {
    //         "home": {
    //           "id": 45,
    //           "name": "Everton",
    //           "logo": "https://media-1.api-sports.io/football/teams/45.png",
    //           "winner": true
    //         },
    //         "away": {
    //           "id": 41,
    //           "name": "Southampton",
    //           "logo": "https://media-1.api-sports.io/football/teams/41.png",
    //           "winner": false
    //         }
    //       },
    //       "goals": {"home": 3, "away": 1},
    //       "score": {
    //         "halftime": {"home": 0, "away": 1},
    //         "fulltime": {"home": 3, "away": 1},
    //         "extratime": {"home": null, "away": null},
    //         "penalty": {"home": null, "away": null}
    //       }
    //     },
    //     {
    //       "fixture": {
    //         "id": 710560,
    //         "referee": "C. Pawson",
    //         "timezone": "UTC",
    //         "date": "2021-08-14T14:00:00+00:00",
    //         "timestamp": 1628949600,
    //         "periods": {"first": 1628949600, "second": 1628953200},
    //         "venue": {"id": 547, "name": "King Power Stadium", "city": "Leicester, Leicestershire"},
    //         "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
    //       },
    //       "league": {
    //         "id": 39,
    //         "name": "Premier League",
    //         "country": "England",
    //         "logo": "https://media-1.api-sports.io/football/leagues/39.png",
    //         "flag": "https://media-3.api-sports.io/flags/gb.svg",
    //         "season": 2021,
    //         "round": "Regular Season - 1"
    //       },
    //       "teams": {
    //         "home": {
    //           "id": 46,
    //           "name": "Leicester",
    //           "logo": "https://media-2.api-sports.io/football/teams/46.png",
    //           "winner": true
    //         },
    //         "away": {
    //           "id": 39,
    //           "name": "Wolves",
    //           "logo": "https://media-1.api-sports.io/football/teams/39.png",
    //           "winner": false
    //         }
    //       },
    //       "goals": {"home": 1, "away": 0},
    //       "score": {
    //         "halftime": {"home": 1, "away": 0},
    //         "fulltime": {"home": 1, "away": 0},
    //         "extratime": {"home": null, "away": null},
    //         "penalty": {"home": null, "away": null}
    //       }
    //     },
    //     {
    //       "fixture": {
    //         "id": 710565,
    //         "referee": "M. Dean",
    //         "timezone": "UTC",
    //         "date": "2021-08-14T14:00:00+00:00",
    //         "timestamp": 1628949600,
    //         "periods": {"first": 1628949600, "second": 1628953200},
    //         "venue": {"id": 596, "name": "Vicarage Road", "city": "Watford"},
    //         "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
    //       },
    //       "league": {
    //         "id": 39,
    //         "name": "Premier League",
    //         "country": "England",
    //         "logo": "https://media-1.api-sports.io/football/leagues/39.png",
    //         "flag": "https://media-3.api-sports.io/flags/gb.svg",
    //         "season": 2021,
    //         "round": "Regular Season - 1"
    //       },
    //       "teams": {
    //         "home": {
    //           "id": 38,
    //           "name": "Watford",
    //           "logo": "https://media-3.api-sports.io/football/teams/38.png",
    //           "winner": true
    //         },
    //         "away": {
    //           "id": 66,
    //           "name": "Aston Villa",
    //           "logo": "https://media-3.api-sports.io/football/teams/66.png",
    //           "winner": false
    //         }
    //       },
    //       "goals": {"home": 3, "away": 2},
    //       "score": {
    //         "halftime": {"home": 2, "away": 0},
    //         "fulltime": {"home": 3, "away": 2},
    //         "extratime": {"home": null, "away": null},
    //         "penalty": {"home": null, "away": null}
    //       }
    //     },
    //     {
    //       "fixture": {
    //         "id": 710563,
    //         "referee": "A. Marriner",
    //         "timezone": "UTC",
    //         "date": "2021-08-14T16:30:00+00:00",
    //         "timestamp": 1628958600,
    //         "periods": {"first": 1628958600, "second": 1628962200},
    //         "venue": {"id": 565, "name": "Carrow Road", "city": "Norwich, Norfolk"},
    //         "status": {"long": "Match Finished", "short": "FT", "elapsed": 90}
    //       },
    //       "league": {
    //         "id": 39,
    //         "name": "Premier League",
    //         "country": "England",
    //         "logo": "https://media-1.api-sports.io/football/leagues/39.png",
    //         "flag": "https://media-3.api-sports.io/flags/gb.svg",
    //         "season": 2021,
    //         "round": "Regular Season - 1"
    //       },
    //       "teams": {
    //         "home": {
    //           "id": 71,
    //           "name": "Norwich",
    //           "logo": "https://media-2.api-sports.io/football/teams/71.png",
    //           "winner": false
    //         },
    //         "away": {
    //           "id": 40,
    //           "name": "Liverpool",
    //           "logo": "https://media-1.api-sports.io/football/teams/40.png",
    //           "winner": true
    //         }
    //       },
    //       "goals": {"home": 0, "away": 3},
    //       "score": {
    //         "halftime": {"home": 0, "away": 1},
    //         "fulltime": {"home": 0, "away": 3},
    //         "extratime": {"home": null, "away": null},
    //         "penalty": {"home": null, "away": null}
    //       }
    //     }
    //   ];
    //   return response.map(LiveMatchModel.fromJson).toList();
  }

  Future<List<LiveMatchModel>?> fetchLiveMatches() async {
    // return (await liveMatchesRemoteService.fetchLiveMatches(league: "39", season: '2021', date: '2021-08-14')).response;
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
    return response.map(LiveMatchModel.fromJson).toList();
  }
}
