// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'juz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JuzImpl _$$JuzImplFromJson(Map<String, dynamic> json) => _$JuzImpl(
      id: (json['id'] as num).toInt(),
      juzNumber: (json['juz_number'] as num).toInt(),
      firstVerseId: (json['first_verse_id'] as num).toInt(),
      lastVerseId: (json['last_verse_id'] as num).toInt(),
      versesCount: (json['verses_count'] as num).toInt(),
      verseMapping:
          VerseMapping.fromJson(json['verse_mapping'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JuzImplToJson(_$JuzImpl instance) => <String, dynamic>{
      'id': instance.id,
      'juz_number': instance.juzNumber,
      'first_verse_id': instance.firstVerseId,
      'last_verse_id': instance.lastVerseId,
      'verses_count': instance.versesCount,
      'verse_mapping': instance.verseMapping.toJson(),
    };