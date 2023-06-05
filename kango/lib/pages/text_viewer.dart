import 'package:flutter/material.dart';

import 'package:kango/data/entities/text.dart' as entity;
import 'package:kango/widgets/word_tooltip.dart';

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
        child: _buildContent(context, text.content),
      ),
    );
  }

  Widget _buildContent(BuildContext context, String text) {
    return Wrap(
      children: text.split(' ').map((e) => _wrapWord(context, e)).toList(),
    );
  }

  Widget _wrapWord(BuildContext context, String word) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        elevation: MaterialStateProperty.all(0.0),
        padding: MaterialStateProperty.all(const EdgeInsets.all(4.0)),
        minimumSize: MaterialStateProperty.all(const Size(20.0, 20.0)),
      ),
      onPressed: () => showModalBottomSheet(
        context: context,
        builder: (context) => WordTooltip(word: word),
      ),
      child: Text(word),
    );
  }
}
