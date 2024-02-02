// ignore_for_file: unused_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';
part 'language.freezed.dart';
part 'language.g.dart';

@freezed

/// Language
class Language with _$Language {
  const Language._();

  const factory Language({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'native_name') required String nativeName,

    /// iso code of the language, you'll pass this code in api calls for fetching content in specific language.
    @JsonKey(name: 'iso_code') required String isoCode,
    @JsonKey(name: 'direction') required String direction,
    @JsonKey(name: 'translated_names')
    required List<TranslatedNames> translatedNames,
  }) = _Language;

  static const Language example = Language(
    id: 1,
    name: "English",
    nativeName: "English",
    isoCode: "en",
    direction: "ltr",
    translatedNames: [
      {"name": "انگریزی", "language_name": "Urdu"}
    ],
  );
  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}