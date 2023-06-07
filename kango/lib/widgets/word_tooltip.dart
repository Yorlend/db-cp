import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kango/data/entities/word.dart';
import 'package:kango/services/dict.dart';
import 'package:kango/services/word.dart';

class WordTooltip extends StatefulWidget {
  final Word word;

  const WordTooltip({super.key, required this.word});

  @override
  State<WordTooltip> createState() => WordTooltipState();
}

class WordTooltipState extends State<WordTooltip> {
  bool _wordIsInDictinary = false;

  @override
  void initState() {
    super.initState();
    GetIt.I
        .get<DictService>()
        .hasWordInDictionary(widget.word)
        .then((value) => setState(() => _wordIsInDictinary = value));
  }

  Future<List<String>> _getWordDefinitions() async {
    final wordService = GetIt.I.get<WordService>();
    return await wordService.getWordDefinitions(widget.word);
  }

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
                widget.word.word,
                style: const TextStyle(fontSize: 24.0),
              ),
              const SizedBox(width: 8.0),
              Text('[${widget.word.reading}]'),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _wordIsInDictinary
                  ? MaterialButton(
                      color: Theme.of(context).colorScheme.error,
                      textColor: Theme.of(context).colorScheme.onError,
                      onPressed: () async {
                        final dictService = GetIt.I.get<DictService>();
                        await dictService.removeWordFromDictionary(widget.word);
                        setState(() => _wordIsInDictinary = false);
                      },
                      child: const Text('Удалить из словоря'),
                    )
                  : MaterialButton(
                      color: Theme.of(context).secondaryHeaderColor,
                      onPressed: () async {
                        final dictService = GetIt.I.get<DictService>();
                        await dictService.addWordToDictionary(widget.word);
                        setState(() => _wordIsInDictinary = true);
                      },
                      child: const Text('добавить в словарь'),
                    ),
            ],
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: FutureBuilder(
              future: _getWordDefinitions(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: snapshot.data!
                      .asMap()
                      .entries
                      .map(
                        (def) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('${def.key + 1}) ${def.value}'),
                        ),
                      )
                      .toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
