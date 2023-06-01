import 'package:flutter/material.dart';

import 'package:kango/data/entities/text.dart' as entity;
import 'package:kango/widgets/drawer.dart';

class TextsPage extends StatelessWidget {
  const TextsPage({super.key});

  Future<List<entity.Text>> _getTexts() async {
    return [
      entity.Text(
        title: 'title 1',
        content: 'asdasdas asd asd asd asd a',
        createdAt: DateTime.now(),
      ),
      entity.Text(
        title: 'title 2',
        content: 'asdasdas asd asd asd asd a',
        createdAt: DateTime.now(),
      ),
      entity.Text(
        title: 'title 3',
        content: 'asdasdas asd asd asd asd a',
        createdAt: DateTime.now(),
      ),
      entity.Text(
        title: 'title 4',
        content: 'asdasdas asd asd asd asd a',
        createdAt: DateTime.now(),
      ),
      entity.Text(
        title: 'title 5',
        content: 'asdasdas asd asd asd asd a',
        createdAt: DateTime.now(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Texts'),
      ),
      drawer: const KangoDrawer(),
      body: Center(
        child: FutureBuilder(
          future: _getTexts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children:
                    snapshot.data!.map((t) => _textWidget(context, t)).toList(),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Widget _textWidget(BuildContext context, entity.Text text) {
    return ListTile(
      title: Text(text.title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text.content),
          Text(text.createdAt.toString()),
        ],
      ),
      onTap: () => Navigator.of(context).pushNamed('/text', arguments: {
        'text': text,
      }),
    );
  }
}
