import 'package:flutter/material.dart';

import 'package:kango/data/entities/text.dart' as entity;
import 'package:kango/services/text_provider.dart';
import 'package:kango/widgets/drawer.dart';
import 'package:kango/widgets/text_edit.dart';
import 'package:provider/provider.dart';

/// Страница для управления текстами, загруженными данным пользователем
/// (менеджером).
class ModTextsPage extends StatelessWidget {
  const ModTextsPage({super.key});

  void _showEditDialog(
      BuildContext context, TextsProvider provider, entity.Text text) {
    showModalBottomSheet(
      context: context,
      builder: (context) => TextEditBottomSheet(context, provider, text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your texts'),
      ),
      drawer: const KangoDrawer(),
      body: Consumer<TextsProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              Expanded(
                child: provider.texts.isEmpty
                    ? const Center(
                        child: Text('Текстов нет, но вы держитесь'),
                      )
                    : ListView(
                        children: provider.texts
                            .map((e) => _textWidget(context, provider, e))
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

  Widget _textWidget(
      BuildContext context, TextsProvider provider, entity.Text text) {
    return ListTile(
      title: Text(text.title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text.content),
          // Text(text.createdAt.toString()),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.edit),
        onPressed: () => _showEditDialog(context, provider, text),
      ),
    );
  }
}
