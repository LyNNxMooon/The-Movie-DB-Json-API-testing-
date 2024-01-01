import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/data/vos/details_vos/genres_vo.dart';
import 'package:movie_app/data/vos/details_vos/production_companies_vo.dart';
import 'package:movie_app/data/vos/details_vos/production_countries_vo.dart';
import 'package:movie_app/data/vos/details_vos/spoken_languages_vo.dart';
part 'details_response.g.dart';

@JsonSerializable()
class DetailsResponse {
  final bool adult;
  @JsonKey(name: "backdrop_path")
  final String backdropPath;
  @JsonKey(name: "belongs_to_collection")
  final String? belongsToCollection;
  final int budget;
  final List<GenresVO> genres;
  final String homepage;
  final int id;
  @JsonKey(name: "imdb_id")
  final String imdbId;
  @JsonKey(name: "original_language")
  final String originalLanguage;
  @JsonKey(name: "original_title")
  final String originalTitle;
  final String overview;
  final double popularity;
  @JsonKey(name: "poster_path")
  final String posterPath;
  @JsonKey(name: "production_companies")
  final List<ProductionCompaniesVO> productionCompanies;
  @JsonKey(name: "production_countries")
  final List<ProductionCountriesVO> productionCountries;
  @JsonKey(name: "release_date")
  final String releaseDate;
  final int revenue;
  final int runtime;
  @JsonKey(name: "spoken_languages")
  final List<SpokenLanguageVO> spokenLanguage;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @JsonKey(name: "vote_count")
  final int voteCount;

  DetailsResponse(
      {required this.adult,
      required this.backdropPath,
      required this.belongsToCollection,
      required this.budget,
      required this.genres,
      required this.homepage,
      required this.id,
      required this.imdbId,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.productionCompanies,
      required this.productionCountries,
      required this.releaseDate,
      required this.revenue,
      required this.runtime,
      required this.spokenLanguage,
      required this.status,
      required this.tagline,
      required this.title,
      required this.video,
      required this.voteAverage,
      required this.voteCount});

  factory DetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsResponseToJson(this);
}
