import 'package:json_annotation/json_annotation.dart';
part 'results_vo.g.dart';

@JsonSerializable()
class NowPlayingResultVO {
  final bool adult;
  @JsonKey(name: "backdrop_path")
  final String backdropPath;
  @JsonKey(name: "genre_ids")
  final List<int> genreIds;
  final int id;
  @JsonKey(name: "original_language")
  final String originalLanguage;
  @JsonKey(name: "original_title")
  final String originalTitle;
  final String overview;
  final double popularity;
  @JsonKey(name: "poster_path")
  final String posterPath;
  @JsonKey(name: "release_date")
  final String releaseDate;
  final String title;
  final bool video;
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @JsonKey(name: "vote_count")
  final int voteCount;

  NowPlayingResultVO(
      {required this.adult,
      required this.backdropPath,
      required this.genreIds,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.video,
      required this.voteAverage,
      required this.voteCount});

  factory NowPlayingResultVO.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingResultVOFromJson(json);

  Map<String, dynamic> toJson() => _$NowPlayingResultVOToJson(this);
}
