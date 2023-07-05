import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';

class MatchDetailsRepository {
  MatchDetailsRepository(this.liveMatchesRemoteService);

  final LiveMatchesRemoteService liveMatchesRemoteService;

  Future<List<MatchEventsModel>> fetchMatchGoals(
    String matchID,
  ) async {
    // return (await liveMatchesRemoteService.fetchMatchEvents(matchID: matchID))
        // .response;
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
    return response.map(MatchEventsModel.fromJson).where((event) => event.type == 'Goal').toList();
  }

  Future<List<MatchEventsModel>> fetchMatchEvents(
      // String matchID,
      ) async {
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
}
