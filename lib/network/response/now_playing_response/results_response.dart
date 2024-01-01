import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/data/vos/now_playing_vos/results_vo.dart';
import 'package:movie_app/network/response/now_playing_response/date_response.dart';

part 'results_response.g.dart';

@JsonSerializable()
class ResultResponse {
  final DateResponse dates;
  final int page;
  final List<NowPlayingResultVO> results;
  @JsonKey(name: "total_pages")
  final int totalPages;
  @JsonKey(name: "total_results")
  final int totalResults;

  ResultResponse(
      {required this.dates,
      required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResults});

  factory ResultResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResultResponseToJson(this);
}
