// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResourceImpl _$$ResourceImplFromJson(Map<String, dynamic> json) =>
    _$ResourceImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      authorName: json['author_name'] as String,
      slug: json['slug'] as String,
      languageName: json['language_name'] as String,
      translatedName: TranslatedName3.fromJson(
          json['translated_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResourceImplToJson(_$ResourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'author_name': instance.authorName,
      'slug': instance.slug,
      'language_name': instance.languageName,
      'translated_name': instance.translatedName.toJson(),
    };
