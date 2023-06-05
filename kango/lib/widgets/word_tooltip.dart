import 'package:flutter/material.dart';

class WordTooltip extends StatelessWidget {
  final String word;

  const WordTooltip({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(word),
        const Text('word reading'),
        const Text('meaning'),
      ],
    );
  }
}
