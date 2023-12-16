import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

class Uint8ListConverter implements JsonConverter<Uint8List?, List<dynamic>?> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(List<dynamic>? json) {
    return json == null ? null : Uint8List.fromList(json.cast<int>());
  }

  @override
  List<int>? toJson(Uint8List? object) {
    return object?.toList();
  }
}