import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/data/vos/actors_vos/actors_results_vo.dart';
part 'actors_results_response.g.dart';

@JsonSerializable()
class ActorResultResponse {
  final int page;
  final List<ActorResultVO> results;
  @JsonKey(name: "total_pages")
  final int totalPages;
  @JsonKey(name: "total_results")
  final int totalResults;

  ActorResultResponse(
      {required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResults});
}
