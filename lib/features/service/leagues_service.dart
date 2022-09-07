import 'dart:io';

import 'package:football_leagues/features/model/league.dart';
import 'package:football_leagues/features/model/leagues.dart';
import 'package:football_leagues/features/model/match_results.dart';
import 'package:football_leagues/features/service/leagues_service_protocol.dart';
import 'package:football_leagues/product/enums/enums.dart';

class LeaguesService extends LeaguesServiceProtocol {
  LeaguesService(super.dio);

  @override
  Future<List<ResultsOfLeagues>?> fetchLeagues() async {
    final request = await dio.get(ServiceTags.leaguesList.name);

    if (request.statusCode == HttpStatus.ok) {
      final result = request.data;

      if (result is Map<String, dynamic>) {
        return Leagues.fromJson(result).result;
      }
    }
    return null;
  }

  @override
  Future<List<LeagueResults>?> fetchLeague(String parameter) async {
    final request = await dio.get(ServiceTags.league.name + parameter);

    if (request.statusCode == HttpStatus.ok) {
      final result = request.data;

      if (result is Map<String, dynamic>) {
        return League.fromJson(result).result;
      }
    }
    return null;
  }

  @override
  Future<List<MatchResults>?> fetchMatchResults(String parameter) async {
    final request = await dio.get(ServiceTags.resultsData.name + parameter);

    if (request.statusCode == HttpStatus.ok) {
      final result = request.data;

      if (result is Map<String, dynamic>) {
        return Matches.fromJson(result).result;
      }
    }
    return null;
  }
}
