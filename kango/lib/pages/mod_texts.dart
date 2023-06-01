import 'package:flutter/material.dart';

import 'package:kango/data/entities/text.dart' as entity;
import 'package:kango/widgets/drawer.dart';

/// Страница для управления текстами, загруженными данным пользователем
/// (менеджером).
class ModTextsPage extends StatelessWidget {
  const ModTextsPage({super.key});

  Future<List<entity.Text>> _getMyTexts() async {
    return [
      entity.Text(
        title: 'Название текста 1',
        content: 'Контент текста 1',
        createdAt: DateTime.now(),
      ),
      entity.Text(
        title: 'Название текста 2',
        content: 'Контент текста 2',
        createdAt: DateTime.now(),
      ),
      entity.Text(
        title: 'Название текста 3',
        content: 'Контент текста 3',
        createdAt: DateTime.now(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your texts'),
      ),
      drawer: const KangoDrawer(),
      body: FutureBuilder(
        future: _getMyTexts(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: snapshot.data!
                      .map((e) => _textWidget(context, e))
                      .toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: MaterialButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/texts/upload'),
                  color: Theme.of(context).primaryColor,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Добавить текст'),
                  ),
                ),
              ),
            ],
          );
        },
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
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {},
      ),
    );
  }
}
