// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_quran_verses_uthmani_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetQuranVersesUthmaniResponse _$GetQuranVersesUthmaniResponseFromJson(
        Map<String, dynamic> json) =>
    GetQuranVersesUthmaniResponse(
      verses: (json['verses'] as List<dynamic>)
          .map((e) => Verses3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetQuranVersesUthmaniResponseToJson(
        GetQuranVersesUthmaniResponse instance) =>
    <String, dynamic>{
      'verses': instance.verses.map((e) => e.toJson()).toList(),
    };
