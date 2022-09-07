
import 'package:json_annotation/json_annotation.dart';

part 'leagues.g.dart';

@JsonSerializable(createToJson: false)
class Leagues {
  bool? success;
  List<ResultsOfLeagues>? result;

  Leagues({this.success, this.result});

  factory Leagues.fromJson(Map<String, dynamic> json) {
    return _$LeaguesFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class ResultsOfLeagues {
  String? league;
  String? key;

  ResultsOfLeagues({this.league, this.key});

  factory ResultsOfLeagues.fromJson(Map<String, dynamic> json) {
    return _$ResultsOfLeaguesFromJson(json);
  }
}
