// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultResponse _$ResultResponseFromJson(Map<String, dynamic> json) =>
    ResultResponse(
      dates: DateResponse.fromJson(json['dates'] as Map<String, dynamic>),
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => NowPlayingResultVO.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$ResultResponseToJson(ResultResponse instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
