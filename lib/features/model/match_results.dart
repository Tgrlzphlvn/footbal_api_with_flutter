import 'package:json_annotation/json_annotation.dart';

part 'match_results.g.dart';

@JsonSerializable(createToJson: false)
class Matches {
  bool? success;
  List<MatchResults>? result;

  Matches({this.success, this.result});

  factory Matches.fromJson(Map<String, dynamic> json) {
    return _$MatchesFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class MatchResults {
  String? score;
  String? date;
  String? away;
  String? home;

  MatchResults({this.score, this.date, this.away, this.home});

  factory MatchResults.fromJson(Map<String, dynamic> json) {
    return _$MatchResultsFromJson(json);
  }
}
