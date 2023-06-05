class Text {
  final String title;
  final String content;
  final DateTime? createdAt;
  String _id = '';

  Text({
    required this.title,
    required this.content,
    this.createdAt,
  });

  Text.withID(
    this._id, {
    required this.title,
    required this.content,
    this.createdAt,
  });

  String get id => _id;

  set id(String id) {
    if (_id.isEmpty) {
      _id = id;
    }
  }

  @override
  String toString() {
    if (createdAt == null) {
      return 'Text{title: $title, content: $content}';
    }

    return 'Text{title: $title, content: $content, createdAt: $createdAt}';
  }
}
