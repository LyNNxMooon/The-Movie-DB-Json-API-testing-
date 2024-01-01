// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actors_results_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorResultResponse _$ActorResultResponseFromJson(Map<String, dynamic> json) =>
    ActorResultResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ActorResultVO.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$ActorResultResponseToJson(
        ActorResultResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
