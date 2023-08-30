import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/service/remote/browsing_service/browsing_remote_service.dart';

class SearchedResultDetailsRepository {
  SearchedResultDetailsRepository(this.browsingRemoteService);

  final BrowsingRemoteService browsingRemoteService;

  Future<List<MatchModel>?> fetchResultsByLeagueId(String leagueId, String yearFromActualDate) async {
    return (await browsingRemoteService.fetchResultsByLeagueId(
            leagueId: leagueId,
            currentRound: await Future.value(fetchCurrentRound(leagueId, yearFromActualDate)),
            season: yearFromActualDate))
        .response;
  }

  Future<List<MatchModel>?> fetchFixturesByLeagueId(String leagueId, String yearFromActualDate) async {
    return (await browsingRemoteService.fetchFixturesByLeagueId(
            leagueId: leagueId,
            round: (await Future.value(fetchAllRounds(leagueId, yearFromActualDate))).last,
            season: yearFromActualDate))
        .response;
  }

  Future<String> fetchCurrentRound(String leagueId, String yearFromActualDate) async {
    return (await browsingRemoteService.getCurrentRound(leagueId: leagueId, season: yearFromActualDate)).response[0];
  }

  Future<List<String>> fetchAllRounds(String leagueId, String yearFromActualDate) async {
    return (await browsingRemoteService.getAllRounds(leagueId: leagueId, season: yearFromActualDate)).response;
  }
}
