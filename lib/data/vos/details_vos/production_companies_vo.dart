import 'package:json_annotation/json_annotation.dart';
part 'production_companies_vo.g.dart';

@JsonSerializable()
class ProductionCompaniesVO {
  final int id;
  @JsonKey(name: "logo_path")
  final String logoPath;
  final String name;
  @JsonKey(name: "origin_country")
  final String originCountry;

  ProductionCompaniesVO(
      {required this.id,
      required this.logoPath,
      required this.name,
      required this.originCountry});

  factory ProductionCompaniesVO.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompaniesVOFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompaniesVOToJson(this);
}
