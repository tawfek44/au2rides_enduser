import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_entity.g.dart';

@JsonSerializable()
class CurrencyEntity extends Equatable {
  @JsonKey(name: "currency_id")
  final int currencyId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "currency_code")
  final String currencyCode;
  @JsonKey(name: "currency_name")
  final String currencyName;
  @JsonKey(name: "image_url")
  final String currencyImageUrl;

  const CurrencyEntity(
      {required this.currencyId,
        required this.languageId,
      required this.currencyCode,
      required this.currencyName,
      required this.currencyImageUrl});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [currencyId, currencyCode, currencyName, currencyImageUrl];
}
