
import 'package:json_annotation/json_annotation.dart';

part 'league.g.dart';

@JsonSerializable(createToJson: false)
class League {
  bool? success;
  List<LeagueResults>? result;

  League({this.success, this.result});

  factory League.fromJson(Map<String, dynamic> json) {
    return _$LeagueFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class LeagueResults {
  int? rank;
  int? lose;
  int? win;
  int? play;
  int? point;
  String? team;

  LeagueResults({this.rank, this.lose, this.win, this.play, this.point, this.team});

  factory LeagueResults.fromJson(Map<String, dynamic> json) {
    return _$LeagueResultsFromJson(json);
  }
}
