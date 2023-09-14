import 'package:score_live/models/standings_model/standings_model.dart';
import 'package:score_live/models/topscorers_model/top_scorers_model.dart';

import '../../models/match_model/match_model.dart';
import '../../service/remote/browsing_service/browsing_remote_service.dart';

class SearchedResultDetailsRepository {
  SearchedResultDetailsRepository(this.browsingRemoteService);

  final BrowsingRemoteService browsingRemoteService;

  Future<List<MatchModel>?> fetchResultsByLeagueId(String leagueId, String yearFromActualDate) async {
    // TODO: Uncomment
    // return (await browsingRemoteService.fetchResultsByLeagueId(
    //         leagueId: leagueId,
    //         currentRound: await Future.value(fetchCurrentRound(leagueId, yearFromActualDate)),
    //         season: yearFromActualDate))
    //     .response;
    return [];
  }

  Future<List<MatchModel>?> fetchFixturesByLeagueId(String leagueId, String yearFromActualDate) async {
    // TODO: Uncomment
    // return (await browsingRemoteService.fetchFixturesByLeagueId(
    //         leagueId: leagueId,
    //         round: (await Future.value(getLastRound(leagueId, yearFromActualDate))),
    //         season: yearFromActualDate))
    //     .response;
    return [];
  }

  Future<List<StandingsModel>> fetchStandings(String leagueId, String yearFromSeason) async {
    // TODO: Uncomment
    // return (await browsingRemoteService.fetchStandings(leagueId: leagueId, season: yearFromSeason)).response;
    return [];
  }

  Future<List<TopScorersModel>> fetchTopGoals(String leagueId, String yearFromSeason) async {
    // TODO: Uncomment
    // return (await browsingRemoteService.fetchTopGoalsFromLeague(leagueId: leagueId, season: yearFromSeason)).response;
    return [];
  }

  Future<List<TopScorersModel>> fetchTopAssists(String leagueId, String yearFromSeason) async {
    // TODO: Uncomment
    // return (await browsingRemoteService.fetchTopAssistsFromLeague(leagueId: leagueId, season: yearFromSeason)).response;
    return [];
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
