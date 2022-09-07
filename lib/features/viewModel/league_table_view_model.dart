import 'package:flutter/material.dart';
import 'package:football_leagues/features/model/league.dart';
import 'package:football_leagues/features/model/match_results.dart';
import 'package:football_leagues/features/service/leagues_service_protocol.dart';
import 'package:football_leagues/product/constants/project_constants.dart';

class LeagueTableViewModel extends ChangeNotifier with ProjectConstants {
  late LeaguesServiceProtocol service;
  late String? leagueName;

  LeagueTableViewModel(this.service, {this.leagueName}) {
      getLeagueValues(leagueName ?? nullString);
      getMatchResults(leagueName ?? nullString);
  }

  List<LeagueResults>? league = [];
  List<MatchResults>? matchResults = [];
  bool isLoading = false;

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> getLeagueValues(String parameter) async {
    changeLoading();
    league = await service.fetchLeague(parameter);
    changeLoading();
    notifyListeners();
  }

  Future<void> getMatchResults(String parameter) async {
    changeLoading();
    matchResults = await service.fetchMatchResults(parameter);
    changeLoading();
    notifyListeners();
  }
}
