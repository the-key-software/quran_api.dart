import "package:quran_api/quran_api.dart";
import "package:test/test.dart";

void main() async {
  group("quran client", () {
    final client = QuranApi.instance.quran;

    group("quranVersesIndopak", () {
      test("first ayah", () async {
        final value = await client.quranVersesIndopak(
          queries: QuranVersesIndopakQueries(
            verseKey: VerseKey(ayah: 1, surah: 1),
          ),
        );
        expect(
          value.data.verses.first.textIndopak,
          "بِسۡمِ اللهِ الرَّحۡمٰنِ الرَّحِيۡمِ",
        );
      });
      test("last ayah", () async {
        final value = await client.quranVersesIndopak(
          queries: QuranVersesIndopakQueries(
            verseKey: VerseKey.fromJson("114:6"),
          ),
        );
        expect(
          value.data.verses.first.textIndopak,
          "مِنَ الۡجِنَّةِ وَالنَّاسِ‏",
        );
      });
    });
  });
}