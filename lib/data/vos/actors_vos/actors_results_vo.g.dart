// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actors_results_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorResultVO _$ActorResultVOFromJson(Map<String, dynamic> json) =>
    ActorResultVO(
      adult: json['adult'] as bool,
      gender: json['gender'] as int,
      id: json['id'] as int,
      knownForDepartment: json['known_for_department'] as String,
      name: json['name'] as String,
      originalName: json['original_name'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      profilePath: json['profile_path'] as String,
      knownFor: KnownForVO.fromJson(json['known_for'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActorResultVOToJson(ActorResultVO instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'known_for_department': instance.knownForDepartment,
      'name': instance.name,
      'original_name': instance.originalName,
      'popularity': instance.popularity,
      'profile_path': instance.profilePath,
      'known_for': instance.knownFor,
    };
