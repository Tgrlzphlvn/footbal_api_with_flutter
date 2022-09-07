import 'package:flutter/material.dart';
import 'package:football_leagues/features/model/leagues.dart';
import 'package:football_leagues/features/service/leagues_service_protocol.dart';

class LeaguesViewModel extends ChangeNotifier {
  late LeaguesServiceProtocol service;

  LeaguesViewModel(this.service) {
    getLeaguesValues();
  }

  List<ResultsOfLeagues>? leagues = [];
  bool isLoading = false;

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> getLeaguesValues() async {
    changeLoading();
    leagues = await service.fetchLeagues();
    changeLoading();
    notifyListeners();
  }
}
