import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/data/vos/actors_vos/known_for_vo.dart';
part 'actors_results_vo.g.dart';

@JsonSerializable()
class ActorResultVO {
  final bool adult;
  final int gender;
  final int id;
  @JsonKey(name: "known_for_department")
  final String knownForDepartment;
  final String name;
  @JsonKey(name: "original_name")
  final String originalName;
  final double popularity;
  @JsonKey(name: "profile_path")
  final String profilePath;
  @JsonKey(name: "known_for")
  final KnownForVO knownFor;

  ActorResultVO(
      {required this.adult,
      required this.gender,
      required this.id,
      required this.knownForDepartment,
      required this.name,
      required this.originalName,
      required this.popularity,
      required this.profilePath,
      required this.knownFor});

  factory ActorResultVO.fromJson(Map<String, dynamic> json) =>
      _$ActorResultVOFromJson(json);

  Map<String, dynamic> toJson() => _$ActorResultVOToJson(this);
}
