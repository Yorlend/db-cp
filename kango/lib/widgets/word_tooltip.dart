import 'package:flutter/material.dart';
import 'package:kango/data/entities/word.dart';

class WordTooltip extends StatelessWidget {
  final Word word;

  const WordTooltip({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                word.word,
                style: const TextStyle(fontSize: 24.0),
              ),
              const SizedBox(width: 8.0),
              Text('[${word.reading}]'),
            ],
          ),
          const SizedBox(height: 8.0),
          Text('перевод: ${word.meaning}'),
        ],
      ),
    );
  }
}
