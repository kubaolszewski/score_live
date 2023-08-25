import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/service/remote/browsing_service/browsing_remote_service.dart';

class SearchedResultDetailsRepository {
  SearchedResultDetailsRepository(this.browsingRemoteService);

  final BrowsingRemoteService browsingRemoteService;

  final statusListing = "1H-HT-2H-ET-FT";

  Future<List<MatchModel>?> fetchResultsDetailsByTeamId(String teamId, String yearFromActualDate) async {
    return (await browsingRemoteService.fetchResultsByTeamId(
            teamId: teamId, status: statusListing, season: yearFromActualDate))
        .response;
  }

  Future<List<MatchModel>?> fetchResultsDetailsByLeagueId(String leagueId, String yearFromActualDate) async {
    return (await browsingRemoteService.fetchResultsByLeagueId(leagueId: leagueId, season: yearFromActualDate))
        .response;
  }
}
