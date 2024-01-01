import 'package:json_annotation/json_annotation.dart';
part 'date_response.g.dart';

@JsonSerializable()
class DateResponse {
  final String maximum;
  final String minimum;

  DateResponse({required this.maximum, required this.minimum});

  factory DateResponse.fromJson(Map<String, dynamic> json) =>
      _$DateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DateResponseToJson(this);
}
