import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kango/data/entities/word.dart';
import 'package:kango/services/word.dart';
import 'package:kango/widgets/drawer.dart';

class DictViewerPage extends StatefulWidget {
  const DictViewerPage({super.key});

  @override
  State<DictViewerPage> createState() => DictViewerPageState();
}

class DictViewerPageState extends State<DictViewerPage> {
  List<Word> _words = [];

  @override
  void initState() {
    super.initState();

    final wordService = GetIt.I.get<WordService>();
    wordService.getAllWords().then((wds) => setState(() => _words = wds));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Словарь'),
      ),
      drawer: const KangoDrawer(),
      body: SingleChildScrollView(
        child: ListBody(
          children: _words.map((w) => _wordToWidget(w)).toList(),
        ),
      ),
    );
  }

  Widget _wordToWidget(Word w) {
    return ListTile(
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(w.word),
          const SizedBox(width: 10),
          Text(
            '[${w.reading}]',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black45,
            ),
          ),
        ],
      ),
      subtitle: Text(w.meaning),
    );
  }
}
