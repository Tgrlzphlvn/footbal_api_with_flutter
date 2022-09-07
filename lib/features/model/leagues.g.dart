// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leagues.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Leagues _$LeaguesFromJson(Map<String, dynamic> json) => Leagues(
      success: json['success'] as bool?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => ResultsOfLeagues.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

ResultsOfLeagues _$ResultsOfLeaguesFromJson(Map<String, dynamic> json) =>
    ResultsOfLeagues(
      league: json['league'] as String?,
      key: json['key'] as String?,
    );
