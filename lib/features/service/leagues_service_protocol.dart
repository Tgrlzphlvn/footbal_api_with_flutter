

import 'package:dio/dio.dart';
import 'package:football_leagues/features/model/league.dart';
import 'package:football_leagues/features/model/leagues.dart';
import 'package:football_leagues/features/model/match_results.dart';

abstract class LeaguesServiceProtocol {
  Dio dio;

  LeaguesServiceProtocol(this.dio);

  Future<List<ResultsOfLeagues>?> fetchLeagues();
  Future<List<LeagueResults>?> fetchLeague(String parameter);
  Future<List<MatchResults>?> fetchMatchResults(String parameter);
}

