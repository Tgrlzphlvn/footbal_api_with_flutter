// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

League _$LeagueFromJson(Map<String, dynamic> json) => League(
      success: json['success'] as bool?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => LeagueResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

LeagueResults _$LeagueResultsFromJson(Map<String, dynamic> json) =>
    LeagueResults(
      rank: json['rank'] as int?,
      lose: json['lose'] as int?,
      win: json['win'] as int?,
      play: json['play'] as int?,
      point: json['point'] as int?,
      team: json['team'] as String?,
    );
