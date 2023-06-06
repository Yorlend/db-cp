import 'package:flutter/material.dart';

import 'package:kango/data/entities/text.dart' as entity;
import 'package:kango/services/text_provider.dart';
import 'package:kango/widgets/drawer.dart';
import 'package:provider/provider.dart';

class TextsPage extends StatelessWidget {
  const TextsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тексты для чтения'),
      ),
      drawer: const KangoDrawer(),
      body: Center(
        child: Consumer<TextsProvider>(
          builder: (context, provider, child) {
            return ListView(
              children:
                  provider.texts.map((t) => _textWidget(context, t)).toList(),
            );
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
          Text(
            text.content,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      onTap: () => Navigator.of(context).pushNamed('/text', arguments: {
        'text': text,
      }),
    );
  }
}
