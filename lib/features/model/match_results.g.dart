// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Matches _$MatchesFromJson(Map<String, dynamic> json) => Matches(
      success: json['success'] as bool?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => MatchResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

MatchResults _$MatchResultsFromJson(Map<String, dynamic> json) => MatchResults(
      score: json['score'] as String?,
      date: json['date'] as String?,
      away: json['away'] as String?,
      home: json['home'] as String?,
    );
