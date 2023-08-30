import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/service/remote/browsing_service/browsing_remote_service.dart';

class SearchedResultDetailsRepository {
  SearchedResultDetailsRepository(this.browsingRemoteService);

  final BrowsingRemoteService browsingRemoteService;

  Future<List<MatchModel>?> fetchResultsByLeagueId(
      String leagueId, String statusListing, String yearFromActualDate) async {
    return (await browsingRemoteService.fetchResultsByLeagueId(
            leagueId: leagueId, status: statusListing, season: yearFromActualDate))
        .response;
  }

  Future<List<MatchModel>?> fetchFixturesByLeagueId(String leagueId, String date, String yearFromActualDate) async {
    return (await browsingRemoteService.fetchFixturesByLeagueId(
            leagueId: leagueId, date: date, season: yearFromActualDate))
        .response;
  }
}
