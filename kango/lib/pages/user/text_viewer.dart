import 'package:flutter/material.dart';

import 'package:kango/data/entities/text.dart' as entity;
import 'package:kango/data/entities/word.dart';
import 'package:kango/vendor/goo/goo.dart';
import 'package:kango/widgets/word_tooltip.dart';

class TextViewerPage extends StatelessWidget {
  const TextViewerPage({super.key});

  Future<List<Word>> _splitOnWords(String text) async {
    final result = await Goo.splitText(text);
    return result.where((w) => w.word.trim().isNotEmpty).map((wd) {
      return Word(
        word: wd.word,
        reading: wd.reading,
        meaning: '',
      );
    }).toList();
  }

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
    return FutureBuilder(
      future: _splitOnWords(text),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return Wrap(
          children: snapshot.data!.map((e) => _wrapWord(context, e)).toList(),
        );
      },
    );
  }

  Widget _wrapWord(BuildContext context, Word word) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          elevation: MaterialStateProperty.all(1.0),
          padding: MaterialStateProperty.all(const EdgeInsets.all(4.0)),
          minimumSize: MaterialStateProperty.all(const Size(20.0, 20.0)),
          overlayColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.background),
        ),
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => WordTooltip(word: word),
        ),
        child: Text(
          word.word,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
