// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_infos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterInfosImpl _$$ChapterInfosImplFromJson(Map<String, dynamic> json) =>
    _$ChapterInfosImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      authorName: json['author_name'] as String,
      slug: json['slug'] as String?,
      languageName: json['language_name'] as String,
      translatedName: TranslatedName.fromJson(
          json['translated_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChapterInfosImplToJson(_$ChapterInfosImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'author_name': instance.authorName,
      if (instance.slug case final value?) 'slug': value,
      'language_name': instance.languageName,
      'translated_name': instance.translatedName.toJson(),
    };
