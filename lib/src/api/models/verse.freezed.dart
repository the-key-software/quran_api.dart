// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Verse _$VerseFromJson(Map<String, dynamic> json) {
  return _Verse.fromJson(json);
}

/// @nodoc
mixin _$Verse {
  int get id => throw _privateConstructorUsedError;

  /// Chapter number of this Verse
  @JsonKey(name: 'chapter_id')
  int get chapterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'verse_number')
  int get verseNumber => throw _privateConstructorUsedError;

  /// key of the verse, key is generated using Chapter number and ayah number. e.g 1:1 is first ayah of first surah.
  @JsonKey(name: 'verse_key')
  String get verseKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'verse_index')
  int get verseIndex => throw _privateConstructorUsedError;

  /// Ayah text in Uthmani Script.
  ///
  /// Uthmani script is an old-fashion script used by the third Caliph, Uthman, to produce the first standard quran manuscript.
  @JsonKey(name: 'text_uthmani')
  String get textUthmani => throw _privateConstructorUsedError;

  /// Uthmani script diacritic marks
  @JsonKey(name: 'text_uthmani_simple')
  String get textUthmaniSimple => throw _privateConstructorUsedError;

  /// Ayah text in Imla'ei script.
  ///
  /// Imla'ei script, is the modern Arabic writing style which is currently in use.
  @JsonKey(name: 'text_imlaei')
  String get textImlaei => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_imlaei_simple')
  String get textImlaeiSimple => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_indopak')
  String get textIndopak => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_uthmani_tajweed')
  String get textUthmaniTajweed => throw _privateConstructorUsedError;
  @JsonKey(name: 'juz_number')
  int get juzNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'hizb_number')
  int get hizbNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'rub_number')
  int get rubNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'sajdah_type')
  dynamic get sajdahType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sajdah_number')
  dynamic get sajdahNumber => throw _privateConstructorUsedError;

  /// page_number is deperacted, please use `v1_page` instead.
  @JsonKey(name: 'page_number')
  int get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_width')
  int get imageWidth => throw _privateConstructorUsedError;
  List<Word> get words => throw _privateConstructorUsedError;
  Audiofile get audio => throw _privateConstructorUsedError;
  List<Translation> get translations => throw _privateConstructorUsedError;

  /// Glyphs codes for QCF v1 fonts
  @JsonKey(name: 'code_v1')
  String get codeV1 => throw _privateConstructorUsedError;

  /// Glyphs codes for QCF v2 fonts
  @JsonKey(name: 'code_v2')
  String get codeV2 => throw _privateConstructorUsedError;

  /// Madani Muhsaf Page number for v1 font. If `v1_page` value is 2, that means you'll use page 2 font file to render this ayah using v1 glyph codes.
  @JsonKey(name: 'v1_page')
  int get v1Page => throw _privateConstructorUsedError;

  /// Madani Muhsaf Page number for v2 font. If `v2_page` value is 2, that means you'll use page 2 font file to render this ayah using v2 glyph codes.
  @JsonKey(name: 'v2_page')
  int get v2Page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            @JsonKey(name: 'chapter_id') int chapterId,
            @JsonKey(name: 'verse_number') int verseNumber,
            @JsonKey(name: 'verse_key') String verseKey,
            @JsonKey(name: 'verse_index') int verseIndex,
            @JsonKey(name: 'text_uthmani') String textUthmani,
            @JsonKey(name: 'text_uthmani_simple') String textUthmaniSimple,
            @JsonKey(name: 'text_imlaei') String textImlaei,
            @JsonKey(name: 'text_imlaei_simple') String textImlaeiSimple,
            @JsonKey(name: 'text_indopak') String textIndopak,
            @JsonKey(name: 'text_uthmani_tajweed') String textUthmaniTajweed,
            @JsonKey(name: 'juz_number') int juzNumber,
            @JsonKey(name: 'hizb_number') int hizbNumber,
            @JsonKey(name: 'rub_number') int rubNumber,
            @JsonKey(name: 'sajdah_type') dynamic sajdahType,
            @JsonKey(name: 'sajdah_number') dynamic sajdahNumber,
            @JsonKey(name: 'page_number') int pageNumber,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'image_width') int imageWidth,
            List<Word> words,
            Audiofile audio,
            List<Translation> translations,
            @JsonKey(name: 'code_v1') String codeV1,
            @JsonKey(name: 'code_v2') String codeV2,
            @JsonKey(name: 'v1_page') int v1Page,
            @JsonKey(name: 'v2_page') int v2Page)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            @JsonKey(name: 'chapter_id') int chapterId,
            @JsonKey(name: 'verse_number') int verseNumber,
            @JsonKey(name: 'verse_key') String verseKey,
            @JsonKey(name: 'verse_index') int verseIndex,
            @JsonKey(name: 'text_uthmani') String textUthmani,
            @JsonKey(name: 'text_uthmani_simple') String textUthmaniSimple,
            @JsonKey(name: 'text_imlaei') String textImlaei,
            @JsonKey(name: 'text_imlaei_simple') String textImlaeiSimple,
            @JsonKey(name: 'text_indopak') String textIndopak,
            @JsonKey(name: 'text_uthmani_tajweed') String textUthmaniTajweed,
            @JsonKey(name: 'juz_number') int juzNumber,
            @JsonKey(name: 'hizb_number') int hizbNumber,
            @JsonKey(name: 'rub_number') int rubNumber,
            @JsonKey(name: 'sajdah_type') dynamic sajdahType,
            @JsonKey(name: 'sajdah_number') dynamic sajdahNumber,
            @JsonKey(name: 'page_number') int pageNumber,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'image_width') int imageWidth,
            List<Word> words,
            Audiofile audio,
            List<Translation> translations,
            @JsonKey(name: 'code_v1') String codeV1,
            @JsonKey(name: 'code_v2') String codeV2,
            @JsonKey(name: 'v1_page') int v1Page,
            @JsonKey(name: 'v2_page') int v2Page)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            @JsonKey(name: 'chapter_id') int chapterId,
            @JsonKey(name: 'verse_number') int verseNumber,
            @JsonKey(name: 'verse_key') String verseKey,
            @JsonKey(name: 'verse_index') int verseIndex,
            @JsonKey(name: 'text_uthmani') String textUthmani,
            @JsonKey(name: 'text_uthmani_simple') String textUthmaniSimple,
            @JsonKey(name: 'text_imlaei') String textImlaei,
            @JsonKey(name: 'text_imlaei_simple') String textImlaeiSimple,
            @JsonKey(name: 'text_indopak') String textIndopak,
            @JsonKey(name: 'text_uthmani_tajweed') String textUthmaniTajweed,
            @JsonKey(name: 'juz_number') int juzNumber,
            @JsonKey(name: 'hizb_number') int hizbNumber,
            @JsonKey(name: 'rub_number') int rubNumber,
            @JsonKey(name: 'sajdah_type') dynamic sajdahType,
            @JsonKey(name: 'sajdah_number') dynamic sajdahNumber,
            @JsonKey(name: 'page_number') int pageNumber,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'image_width') int imageWidth,
            List<Word> words,
            Audiofile audio,
            List<Translation> translations,
            @JsonKey(name: 'code_v1') String codeV1,
            @JsonKey(name: 'code_v2') String codeV2,
            @JsonKey(name: 'v1_page') int v1Page,
            @JsonKey(name: 'v2_page') int v2Page)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Verse value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Verse value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Verse value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Verse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerseCopyWith<Verse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseCopyWith<$Res> {
  factory $VerseCopyWith(Verse value, $Res Function(Verse) then) =
      _$VerseCopyWithImpl<$Res, Verse>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'chapter_id') int chapterId,
      @JsonKey(name: 'verse_number') int verseNumber,
      @JsonKey(name: 'verse_key') String verseKey,
      @JsonKey(name: 'verse_index') int verseIndex,
      @JsonKey(name: 'text_uthmani') String textUthmani,
      @JsonKey(name: 'text_uthmani_simple') String textUthmaniSimple,
      @JsonKey(name: 'text_imlaei') String textImlaei,
      @JsonKey(name: 'text_imlaei_simple') String textImlaeiSimple,
      @JsonKey(name: 'text_indopak') String textIndopak,
      @JsonKey(name: 'text_uthmani_tajweed') String textUthmaniTajweed,
      @JsonKey(name: 'juz_number') int juzNumber,
      @JsonKey(name: 'hizb_number') int hizbNumber,
      @JsonKey(name: 'rub_number') int rubNumber,
      @JsonKey(name: 'sajdah_type') dynamic sajdahType,
      @JsonKey(name: 'sajdah_number') dynamic sajdahNumber,
      @JsonKey(name: 'page_number') int pageNumber,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'image_width') int imageWidth,
      List<Word> words,
      Audiofile audio,
      List<Translation> translations,
      @JsonKey(name: 'code_v1') String codeV1,
      @JsonKey(name: 'code_v2') String codeV2,
      @JsonKey(name: 'v1_page') int v1Page,
      @JsonKey(name: 'v2_page') int v2Page});

  $AudiofileCopyWith<$Res> get audio;
}

/// @nodoc
class _$VerseCopyWithImpl<$Res, $Val extends Verse>
    implements $VerseCopyWith<$Res> {
  _$VerseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapterId = null,
    Object? verseNumber = null,
    Object? verseKey = null,
    Object? verseIndex = null,
    Object? textUthmani = null,
    Object? textUthmaniSimple = null,
    Object? textImlaei = null,
    Object? textImlaeiSimple = null,
    Object? textIndopak = null,
    Object? textUthmaniTajweed = null,
    Object? juzNumber = null,
    Object? hizbNumber = null,
    Object? rubNumber = null,
    Object? sajdahType = freezed,
    Object? sajdahNumber = freezed,
    Object? pageNumber = null,
    Object? imageUrl = null,
    Object? imageWidth = null,
    Object? words = null,
    Object? audio = null,
    Object? translations = null,
    Object? codeV1 = null,
    Object? codeV2 = null,
    Object? v1Page = null,
    Object? v2Page = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chapterId: null == chapterId
          ? _value.chapterId
          : chapterId // ignore: cast_nullable_to_non_nullable
              as int,
      verseNumber: null == verseNumber
          ? _value.verseNumber
          : verseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      verseKey: null == verseKey
          ? _value.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String,
      verseIndex: null == verseIndex
          ? _value.verseIndex
          : verseIndex // ignore: cast_nullable_to_non_nullable
              as int,
      textUthmani: null == textUthmani
          ? _value.textUthmani
          : textUthmani // ignore: cast_nullable_to_non_nullable
              as String,
      textUthmaniSimple: null == textUthmaniSimple
          ? _value.textUthmaniSimple
          : textUthmaniSimple // ignore: cast_nullable_to_non_nullable
              as String,
      textImlaei: null == textImlaei
          ? _value.textImlaei
          : textImlaei // ignore: cast_nullable_to_non_nullable
              as String,
      textImlaeiSimple: null == textImlaeiSimple
          ? _value.textImlaeiSimple
          : textImlaeiSimple // ignore: cast_nullable_to_non_nullable
              as String,
      textIndopak: null == textIndopak
          ? _value.textIndopak
          : textIndopak // ignore: cast_nullable_to_non_nullable
              as String,
      textUthmaniTajweed: null == textUthmaniTajweed
          ? _value.textUthmaniTajweed
          : textUthmaniTajweed // ignore: cast_nullable_to_non_nullable
              as String,
      juzNumber: null == juzNumber
          ? _value.juzNumber
          : juzNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hizbNumber: null == hizbNumber
          ? _value.hizbNumber
          : hizbNumber // ignore: cast_nullable_to_non_nullable
              as int,
      rubNumber: null == rubNumber
          ? _value.rubNumber
          : rubNumber // ignore: cast_nullable_to_non_nullable
              as int,
      sajdahType: freezed == sajdahType
          ? _value.sajdahType
          : sajdahType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sajdahNumber: freezed == sajdahNumber
          ? _value.sajdahNumber
          : sajdahNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageWidth: null == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as int,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audiofile,
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>,
      codeV1: null == codeV1
          ? _value.codeV1
          : codeV1 // ignore: cast_nullable_to_non_nullable
              as String,
      codeV2: null == codeV2
          ? _value.codeV2
          : codeV2 // ignore: cast_nullable_to_non_nullable
              as String,
      v1Page: null == v1Page
          ? _value.v1Page
          : v1Page // ignore: cast_nullable_to_non_nullable
              as int,
      v2Page: null == v2Page
          ? _value.v2Page
          : v2Page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudiofileCopyWith<$Res> get audio {
    return $AudiofileCopyWith<$Res>(_value.audio, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerseImplCopyWith<$Res> implements $VerseCopyWith<$Res> {
  factory _$$VerseImplCopyWith(
          _$VerseImpl value, $Res Function(_$VerseImpl) then) =
      __$$VerseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'chapter_id') int chapterId,
      @JsonKey(name: 'verse_number') int verseNumber,
      @JsonKey(name: 'verse_key') String verseKey,
      @JsonKey(name: 'verse_index') int verseIndex,
      @JsonKey(name: 'text_uthmani') String textUthmani,
      @JsonKey(name: 'text_uthmani_simple') String textUthmaniSimple,
      @JsonKey(name: 'text_imlaei') String textImlaei,
      @JsonKey(name: 'text_imlaei_simple') String textImlaeiSimple,
      @JsonKey(name: 'text_indopak') String textIndopak,
      @JsonKey(name: 'text_uthmani_tajweed') String textUthmaniTajweed,
      @JsonKey(name: 'juz_number') int juzNumber,
      @JsonKey(name: 'hizb_number') int hizbNumber,
      @JsonKey(name: 'rub_number') int rubNumber,
      @JsonKey(name: 'sajdah_type') dynamic sajdahType,
      @JsonKey(name: 'sajdah_number') dynamic sajdahNumber,
      @JsonKey(name: 'page_number') int pageNumber,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'image_width') int imageWidth,
      List<Word> words,
      Audiofile audio,
      List<Translation> translations,
      @JsonKey(name: 'code_v1') String codeV1,
      @JsonKey(name: 'code_v2') String codeV2,
      @JsonKey(name: 'v1_page') int v1Page,
      @JsonKey(name: 'v2_page') int v2Page});

  @override
  $AudiofileCopyWith<$Res> get audio;
}

/// @nodoc
class __$$VerseImplCopyWithImpl<$Res>
    extends _$VerseCopyWithImpl<$Res, _$VerseImpl>
    implements _$$VerseImplCopyWith<$Res> {
  __$$VerseImplCopyWithImpl(
      _$VerseImpl _value, $Res Function(_$VerseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapterId = null,
    Object? verseNumber = null,
    Object? verseKey = null,
    Object? verseIndex = null,
    Object? textUthmani = null,
    Object? textUthmaniSimple = null,
    Object? textImlaei = null,
    Object? textImlaeiSimple = null,
    Object? textIndopak = null,
    Object? textUthmaniTajweed = null,
    Object? juzNumber = null,
    Object? hizbNumber = null,
    Object? rubNumber = null,
    Object? sajdahType = freezed,
    Object? sajdahNumber = freezed,
    Object? pageNumber = null,
    Object? imageUrl = null,
    Object? imageWidth = null,
    Object? words = null,
    Object? audio = null,
    Object? translations = null,
    Object? codeV1 = null,
    Object? codeV2 = null,
    Object? v1Page = null,
    Object? v2Page = null,
  }) {
    return _then(_$VerseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chapterId: null == chapterId
          ? _value.chapterId
          : chapterId // ignore: cast_nullable_to_non_nullable
              as int,
      verseNumber: null == verseNumber
          ? _value.verseNumber
          : verseNumber // ignore: cast_nullable_to_non_nullable
              as int,
      verseKey: null == verseKey
          ? _value.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String,
      verseIndex: null == verseIndex
          ? _value.verseIndex
          : verseIndex // ignore: cast_nullable_to_non_nullable
              as int,
      textUthmani: null == textUthmani
          ? _value.textUthmani
          : textUthmani // ignore: cast_nullable_to_non_nullable
              as String,
      textUthmaniSimple: null == textUthmaniSimple
          ? _value.textUthmaniSimple
          : textUthmaniSimple // ignore: cast_nullable_to_non_nullable
              as String,
      textImlaei: null == textImlaei
          ? _value.textImlaei
          : textImlaei // ignore: cast_nullable_to_non_nullable
              as String,
      textImlaeiSimple: null == textImlaeiSimple
          ? _value.textImlaeiSimple
          : textImlaeiSimple // ignore: cast_nullable_to_non_nullable
              as String,
      textIndopak: null == textIndopak
          ? _value.textIndopak
          : textIndopak // ignore: cast_nullable_to_non_nullable
              as String,
      textUthmaniTajweed: null == textUthmaniTajweed
          ? _value.textUthmaniTajweed
          : textUthmaniTajweed // ignore: cast_nullable_to_non_nullable
              as String,
      juzNumber: null == juzNumber
          ? _value.juzNumber
          : juzNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hizbNumber: null == hizbNumber
          ? _value.hizbNumber
          : hizbNumber // ignore: cast_nullable_to_non_nullable
              as int,
      rubNumber: null == rubNumber
          ? _value.rubNumber
          : rubNumber // ignore: cast_nullable_to_non_nullable
              as int,
      sajdahType: freezed == sajdahType
          ? _value.sajdahType
          : sajdahType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sajdahNumber: freezed == sajdahNumber
          ? _value.sajdahNumber
          : sajdahNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageWidth: null == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as int,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audiofile,
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<Translation>,
      codeV1: null == codeV1
          ? _value.codeV1
          : codeV1 // ignore: cast_nullable_to_non_nullable
              as String,
      codeV2: null == codeV2
          ? _value.codeV2
          : codeV2 // ignore: cast_nullable_to_non_nullable
              as String,
      v1Page: null == v1Page
          ? _value.v1Page
          : v1Page // ignore: cast_nullable_to_non_nullable
              as int,
      v2Page: null == v2Page
          ? _value.v2Page
          : v2Page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerseImpl implements _Verse {
  const _$VerseImpl(
      {required this.id,
      @JsonKey(name: 'chapter_id') required this.chapterId,
      @JsonKey(name: 'verse_number') required this.verseNumber,
      @JsonKey(name: 'verse_key') required this.verseKey,
      @JsonKey(name: 'verse_index') required this.verseIndex,
      @JsonKey(name: 'text_uthmani') required this.textUthmani,
      @JsonKey(name: 'text_uthmani_simple') required this.textUthmaniSimple,
      @JsonKey(name: 'text_imlaei') required this.textImlaei,
      @JsonKey(name: 'text_imlaei_simple') required this.textImlaeiSimple,
      @JsonKey(name: 'text_indopak') required this.textIndopak,
      @JsonKey(name: 'text_uthmani_tajweed') required this.textUthmaniTajweed,
      @JsonKey(name: 'juz_number') required this.juzNumber,
      @JsonKey(name: 'hizb_number') required this.hizbNumber,
      @JsonKey(name: 'rub_number') required this.rubNumber,
      @JsonKey(name: 'sajdah_type') required this.sajdahType,
      @JsonKey(name: 'sajdah_number') required this.sajdahNumber,
      @JsonKey(name: 'page_number') required this.pageNumber,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'image_width') required this.imageWidth,
      required final List<Word> words,
      required this.audio,
      required final List<Translation> translations,
      @JsonKey(name: 'code_v1') required this.codeV1,
      @JsonKey(name: 'code_v2') required this.codeV2,
      @JsonKey(name: 'v1_page') required this.v1Page,
      @JsonKey(name: 'v2_page') required this.v2Page})
      : _words = words,
        _translations = translations;

  factory _$VerseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerseImplFromJson(json);

  @override
  final int id;

  /// Chapter number of this Verse
  @override
  @JsonKey(name: 'chapter_id')
  final int chapterId;
  @override
  @JsonKey(name: 'verse_number')
  final int verseNumber;

  /// key of the verse, key is generated using Chapter number and ayah number. e.g 1:1 is first ayah of first surah.
  @override
  @JsonKey(name: 'verse_key')
  final String verseKey;
  @override
  @JsonKey(name: 'verse_index')
  final int verseIndex;

  /// Ayah text in Uthmani Script.
  ///
  /// Uthmani script is an old-fashion script used by the third Caliph, Uthman, to produce the first standard quran manuscript.
  @override
  @JsonKey(name: 'text_uthmani')
  final String textUthmani;

  /// Uthmani script diacritic marks
  @override
  @JsonKey(name: 'text_uthmani_simple')
  final String textUthmaniSimple;

  /// Ayah text in Imla'ei script.
  ///
  /// Imla'ei script, is the modern Arabic writing style which is currently in use.
  @override
  @JsonKey(name: 'text_imlaei')
  final String textImlaei;
  @override
  @JsonKey(name: 'text_imlaei_simple')
  final String textImlaeiSimple;
  @override
  @JsonKey(name: 'text_indopak')
  final String textIndopak;
  @override
  @JsonKey(name: 'text_uthmani_tajweed')
  final String textUthmaniTajweed;
  @override
  @JsonKey(name: 'juz_number')
  final int juzNumber;
  @override
  @JsonKey(name: 'hizb_number')
  final int hizbNumber;
  @override
  @JsonKey(name: 'rub_number')
  final int rubNumber;
  @override
  @JsonKey(name: 'sajdah_type')
  final dynamic sajdahType;
  @override
  @JsonKey(name: 'sajdah_number')
  final dynamic sajdahNumber;

  /// page_number is deperacted, please use `v1_page` instead.
  @override
  @JsonKey(name: 'page_number')
  final int pageNumber;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'image_width')
  final int imageWidth;
  final List<Word> _words;
  @override
  List<Word> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  final Audiofile audio;
  final List<Translation> _translations;
  @override
  List<Translation> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  /// Glyphs codes for QCF v1 fonts
  @override
  @JsonKey(name: 'code_v1')
  final String codeV1;

  /// Glyphs codes for QCF v2 fonts
  @override
  @JsonKey(name: 'code_v2')
  final String codeV2;

  /// Madani Muhsaf Page number for v1 font. If `v1_page` value is 2, that means you'll use page 2 font file to render this ayah using v1 glyph codes.
  @override
  @JsonKey(name: 'v1_page')
  final int v1Page;

  /// Madani Muhsaf Page number for v2 font. If `v2_page` value is 2, that means you'll use page 2 font file to render this ayah using v2 glyph codes.
  @override
  @JsonKey(name: 'v2_page')
  final int v2Page;

  @override
  String toString() {
    return 'Verse(id: $id, chapterId: $chapterId, verseNumber: $verseNumber, verseKey: $verseKey, verseIndex: $verseIndex, textUthmani: $textUthmani, textUthmaniSimple: $textUthmaniSimple, textImlaei: $textImlaei, textImlaeiSimple: $textImlaeiSimple, textIndopak: $textIndopak, textUthmaniTajweed: $textUthmaniTajweed, juzNumber: $juzNumber, hizbNumber: $hizbNumber, rubNumber: $rubNumber, sajdahType: $sajdahType, sajdahNumber: $sajdahNumber, pageNumber: $pageNumber, imageUrl: $imageUrl, imageWidth: $imageWidth, words: $words, audio: $audio, translations: $translations, codeV1: $codeV1, codeV2: $codeV2, v1Page: $v1Page, v2Page: $v2Page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chapterId, chapterId) ||
                other.chapterId == chapterId) &&
            (identical(other.verseNumber, verseNumber) ||
                other.verseNumber == verseNumber) &&
            (identical(other.verseKey, verseKey) ||
                other.verseKey == verseKey) &&
            (identical(other.verseIndex, verseIndex) ||
                other.verseIndex == verseIndex) &&
            (identical(other.textUthmani, textUthmani) ||
                other.textUthmani == textUthmani) &&
            (identical(other.textUthmaniSimple, textUthmaniSimple) ||
                other.textUthmaniSimple == textUthmaniSimple) &&
            (identical(other.textImlaei, textImlaei) ||
                other.textImlaei == textImlaei) &&
            (identical(other.textImlaeiSimple, textImlaeiSimple) ||
                other.textImlaeiSimple == textImlaeiSimple) &&
            (identical(other.textIndopak, textIndopak) ||
                other.textIndopak == textIndopak) &&
            (identical(other.textUthmaniTajweed, textUthmaniTajweed) ||
                other.textUthmaniTajweed == textUthmaniTajweed) &&
            (identical(other.juzNumber, juzNumber) ||
                other.juzNumber == juzNumber) &&
            (identical(other.hizbNumber, hizbNumber) ||
                other.hizbNumber == hizbNumber) &&
            (identical(other.rubNumber, rubNumber) ||
                other.rubNumber == rubNumber) &&
            const DeepCollectionEquality()
                .equals(other.sajdahType, sajdahType) &&
            const DeepCollectionEquality()
                .equals(other.sajdahNumber, sajdahNumber) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageWidth, imageWidth) ||
                other.imageWidth == imageWidth) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            (identical(other.codeV1, codeV1) || other.codeV1 == codeV1) &&
            (identical(other.codeV2, codeV2) || other.codeV2 == codeV2) &&
            (identical(other.v1Page, v1Page) || other.v1Page == v1Page) &&
            (identical(other.v2Page, v2Page) || other.v2Page == v2Page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        chapterId,
        verseNumber,
        verseKey,
        verseIndex,
        textUthmani,
        textUthmaniSimple,
        textImlaei,
        textImlaeiSimple,
        textIndopak,
        textUthmaniTajweed,
        juzNumber,
        hizbNumber,
        rubNumber,
        const DeepCollectionEquality().hash(sajdahType),
        const DeepCollectionEquality().hash(sajdahNumber),
        pageNumber,
        imageUrl,
        imageWidth,
        const DeepCollectionEquality().hash(_words),
        audio,
        const DeepCollectionEquality().hash(_translations),
        codeV1,
        codeV2,
        v1Page,
        v2Page
      ]);

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerseImplCopyWith<_$VerseImpl> get copyWith =>
      __$$VerseImplCopyWithImpl<_$VerseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            @JsonKey(name: 'chapter_id') int chapterId,
            @JsonKey(name: 'verse_number') int verseNumber,
            @JsonKey(name: 'verse_key') String verseKey,
            @JsonKey(name: 'verse_index') int verseIndex,
            @JsonKey(name: 'text_uthmani') String textUthmani,
            @JsonKey(name: 'text_uthmani_simple') String textUthmaniSimple,
            @JsonKey(name: 'text_imlaei') String textImlaei,
            @JsonKey(name: 'text_imlaei_simple') String textImlaeiSimple,
            @JsonKey(name: 'text_indopak') String textIndopak,
            @JsonKey(name: 'text_uthmani_tajweed') String textUthmaniTajweed,
            @JsonKey(name: 'juz_number') int juzNumber,
            @JsonKey(name: 'hizb_number') int hizbNumber,
            @JsonKey(name: 'rub_number') int rubNumber,
            @JsonKey(name: 'sajdah_type') dynamic sajdahType,
            @JsonKey(name: 'sajdah_number') dynamic sajdahNumber,
            @JsonKey(name: 'page_number') int pageNumber,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'image_width') int imageWidth,
            List<Word> words,
            Audiofile audio,
            List<Translation> translations,
            @JsonKey(name: 'code_v1') String codeV1,
            @JsonKey(name: 'code_v2') String codeV2,
            @JsonKey(name: 'v1_page') int v1Page,
            @JsonKey(name: 'v2_page') int v2Page)
        $default,
  ) {
    return $default(
        id,
        chapterId,
        verseNumber,
        verseKey,
        verseIndex,
        textUthmani,
        textUthmaniSimple,
        textImlaei,
        textImlaeiSimple,
        textIndopak,
        textUthmaniTajweed,
        juzNumber,
        hizbNumber,
        rubNumber,
        sajdahType,
        sajdahNumber,
        pageNumber,
        imageUrl,
        imageWidth,
        words,
        audio,
        translations,
        codeV1,
        codeV2,
        v1Page,
        v2Page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            @JsonKey(name: 'chapter_id') int chapterId,
            @JsonKey(name: 'verse_number') int verseNumber,
            @JsonKey(name: 'verse_key') String verseKey,
            @JsonKey(name: 'verse_index') int verseIndex,
            @JsonKey(name: 'text_uthmani') String textUthmani,
            @JsonKey(name: 'text_uthmani_simple') String textUthmaniSimple,
            @JsonKey(name: 'text_imlaei') String textImlaei,
            @JsonKey(name: 'text_imlaei_simple') String textImlaeiSimple,
            @JsonKey(name: 'text_indopak') String textIndopak,
            @JsonKey(name: 'text_uthmani_tajweed') String textUthmaniTajweed,
            @JsonKey(name: 'juz_number') int juzNumber,
            @JsonKey(name: 'hizb_number') int hizbNumber,
            @JsonKey(name: 'rub_number') int rubNumber,
            @JsonKey(name: 'sajdah_type') dynamic sajdahType,
            @JsonKey(name: 'sajdah_number') dynamic sajdahNumber,
            @JsonKey(name: 'page_number') int pageNumber,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'image_width') int imageWidth,
            List<Word> words,
            Audiofile audio,
            List<Translation> translations,
            @JsonKey(name: 'code_v1') String codeV1,
            @JsonKey(name: 'code_v2') String codeV2,
            @JsonKey(name: 'v1_page') int v1Page,
            @JsonKey(name: 'v2_page') int v2Page)?
        $default,
  ) {
    return $default?.call(
        id,
        chapterId,
        verseNumber,
        verseKey,
        verseIndex,
        textUthmani,
        textUthmaniSimple,
        textImlaei,
        textImlaeiSimple,
        textIndopak,
        textUthmaniTajweed,
        juzNumber,
        hizbNumber,
        rubNumber,
        sajdahType,
        sajdahNumber,
        pageNumber,
        imageUrl,
        imageWidth,
        words,
        audio,
        translations,
        codeV1,
        codeV2,
        v1Page,
        v2Page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            @JsonKey(name: 'chapter_id') int chapterId,
            @JsonKey(name: 'verse_number') int verseNumber,
            @JsonKey(name: 'verse_key') String verseKey,
            @JsonKey(name: 'verse_index') int verseIndex,
            @JsonKey(name: 'text_uthmani') String textUthmani,
            @JsonKey(name: 'text_uthmani_simple') String textUthmaniSimple,
            @JsonKey(name: 'text_imlaei') String textImlaei,
            @JsonKey(name: 'text_imlaei_simple') String textImlaeiSimple,
            @JsonKey(name: 'text_indopak') String textIndopak,
            @JsonKey(name: 'text_uthmani_tajweed') String textUthmaniTajweed,
            @JsonKey(name: 'juz_number') int juzNumber,
            @JsonKey(name: 'hizb_number') int hizbNumber,
            @JsonKey(name: 'rub_number') int rubNumber,
            @JsonKey(name: 'sajdah_type') dynamic sajdahType,
            @JsonKey(name: 'sajdah_number') dynamic sajdahNumber,
            @JsonKey(name: 'page_number') int pageNumber,
            @JsonKey(name: 'image_url') String imageUrl,
            @JsonKey(name: 'image_width') int imageWidth,
            List<Word> words,
            Audiofile audio,
            List<Translation> translations,
            @JsonKey(name: 'code_v1') String codeV1,
            @JsonKey(name: 'code_v2') String codeV2,
            @JsonKey(name: 'v1_page') int v1Page,
            @JsonKey(name: 'v2_page') int v2Page)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          id,
          chapterId,
          verseNumber,
          verseKey,
          verseIndex,
          textUthmani,
          textUthmaniSimple,
          textImlaei,
          textImlaeiSimple,
          textIndopak,
          textUthmaniTajweed,
          juzNumber,
          hizbNumber,
          rubNumber,
          sajdahType,
          sajdahNumber,
          pageNumber,
          imageUrl,
          imageWidth,
          words,
          audio,
          translations,
          codeV1,
          codeV2,
          v1Page,
          v2Page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Verse value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Verse value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Verse value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VerseImplToJson(
      this,
    );
  }
}

abstract class _Verse implements Verse {
  const factory _Verse(
      {required final int id,
      @JsonKey(name: 'chapter_id') required final int chapterId,
      @JsonKey(name: 'verse_number') required final int verseNumber,
      @JsonKey(name: 'verse_key') required final String verseKey,
      @JsonKey(name: 'verse_index') required final int verseIndex,
      @JsonKey(name: 'text_uthmani') required final String textUthmani,
      @JsonKey(name: 'text_uthmani_simple')
      required final String textUthmaniSimple,
      @JsonKey(name: 'text_imlaei') required final String textImlaei,
      @JsonKey(name: 'text_imlaei_simple')
      required final String textImlaeiSimple,
      @JsonKey(name: 'text_indopak') required final String textIndopak,
      @JsonKey(name: 'text_uthmani_tajweed')
      required final String textUthmaniTajweed,
      @JsonKey(name: 'juz_number') required final int juzNumber,
      @JsonKey(name: 'hizb_number') required final int hizbNumber,
      @JsonKey(name: 'rub_number') required final int rubNumber,
      @JsonKey(name: 'sajdah_type') required final dynamic sajdahType,
      @JsonKey(name: 'sajdah_number') required final dynamic sajdahNumber,
      @JsonKey(name: 'page_number') required final int pageNumber,
      @JsonKey(name: 'image_url') required final String imageUrl,
      @JsonKey(name: 'image_width') required final int imageWidth,
      required final List<Word> words,
      required final Audiofile audio,
      required final List<Translation> translations,
      @JsonKey(name: 'code_v1') required final String codeV1,
      @JsonKey(name: 'code_v2') required final String codeV2,
      @JsonKey(name: 'v1_page') required final int v1Page,
      @JsonKey(name: 'v2_page') required final int v2Page}) = _$VerseImpl;

  factory _Verse.fromJson(Map<String, dynamic> json) = _$VerseImpl.fromJson;

  @override
  int get id;

  /// Chapter number of this Verse
  @override
  @JsonKey(name: 'chapter_id')
  int get chapterId;
  @override
  @JsonKey(name: 'verse_number')
  int get verseNumber;

  /// key of the verse, key is generated using Chapter number and ayah number. e.g 1:1 is first ayah of first surah.
  @override
  @JsonKey(name: 'verse_key')
  String get verseKey;
  @override
  @JsonKey(name: 'verse_index')
  int get verseIndex;

  /// Ayah text in Uthmani Script.
  ///
  /// Uthmani script is an old-fashion script used by the third Caliph, Uthman, to produce the first standard quran manuscript.
  @override
  @JsonKey(name: 'text_uthmani')
  String get textUthmani;

  /// Uthmani script diacritic marks
  @override
  @JsonKey(name: 'text_uthmani_simple')
  String get textUthmaniSimple;

  /// Ayah text in Imla'ei script.
  ///
  /// Imla'ei script, is the modern Arabic writing style which is currently in use.
  @override
  @JsonKey(name: 'text_imlaei')
  String get textImlaei;
  @override
  @JsonKey(name: 'text_imlaei_simple')
  String get textImlaeiSimple;
  @override
  @JsonKey(name: 'text_indopak')
  String get textIndopak;
  @override
  @JsonKey(name: 'text_uthmani_tajweed')
  String get textUthmaniTajweed;
  @override
  @JsonKey(name: 'juz_number')
  int get juzNumber;
  @override
  @JsonKey(name: 'hizb_number')
  int get hizbNumber;
  @override
  @JsonKey(name: 'rub_number')
  int get rubNumber;
  @override
  @JsonKey(name: 'sajdah_type')
  dynamic get sajdahType;
  @override
  @JsonKey(name: 'sajdah_number')
  dynamic get sajdahNumber;

  /// page_number is deperacted, please use `v1_page` instead.
  @override
  @JsonKey(name: 'page_number')
  int get pageNumber;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'image_width')
  int get imageWidth;
  @override
  List<Word> get words;
  @override
  Audiofile get audio;
  @override
  List<Translation> get translations;

  /// Glyphs codes for QCF v1 fonts
  @override
  @JsonKey(name: 'code_v1')
  String get codeV1;

  /// Glyphs codes for QCF v2 fonts
  @override
  @JsonKey(name: 'code_v2')
  String get codeV2;

  /// Madani Muhsaf Page number for v1 font. If `v1_page` value is 2, that means you'll use page 2 font file to render this ayah using v1 glyph codes.
  @override
  @JsonKey(name: 'v1_page')
  int get v1Page;

  /// Madani Muhsaf Page number for v2 font. If `v2_page` value is 2, that means you'll use page 2 font file to render this ayah using v2 glyph codes.
  @override
  @JsonKey(name: 'v2_page')
  int get v2Page;

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerseImplCopyWith<_$VerseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
