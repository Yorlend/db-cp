class Kanji {
  final String glyph;
  final String meaning;
  final String? on;
  final String? kun;

  const Kanji({
    required this.glyph,
    required this.meaning,
    this.on,
    this.kun,
  });
}
