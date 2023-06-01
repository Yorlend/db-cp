class Text {
  final String title;
  final String content;
  final DateTime createdAt;

  const Text({
    required this.title,
    required this.content,
    required this.createdAt,
  });

  @override
  String toString() {
    return 'Text{title: $title, content: $content, createdAt: $createdAt}';
  }
}
