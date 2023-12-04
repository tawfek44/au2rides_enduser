import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'country_entity.g.dart';
@JsonSerializable()
class CountryEntity extends Equatable{
  @JsonKey(name: "country_id")
  final int countryId;
  @JsonKey(name: "count_name")
  final String countryName;
  @JsonKey(name: "country_key_code")
  final String countryKeyCode;
  @JsonKey(name: "international_calling_code")
  final String countryCallingCode;
  @JsonKey(name: "flag_image_url")
  final String countryImageUrl;

  CountryEntity({required this.countryId,required this.countryName,required this.countryKeyCode,
    required this.countryCallingCode,required this.countryImageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [
    countryId,
    countryName,
    countryKeyCode,
    countryCallingCode,
    countryImageUrl
  ];

}