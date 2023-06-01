import 'package:flutter/material.dart';

import 'package:kango/data/entities/text.dart' as entity;

class TextViewerPage extends StatelessWidget {
  const TextViewerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final text = args['text'] as entity.Text;

    return Scaffold(
      appBar: AppBar(
        title: Text(text.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text.content),
      ),
    );
  }
}
